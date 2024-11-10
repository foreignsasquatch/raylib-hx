package;

import raylib.Raylib.*;
import raylib.Types;

class Main
{
    //------------------------------------------------------------------------------------
    // Program main entry point
    //------------------------------------------------------------------------------------
    public static function main():Void
    {
        // Initialization
        //--------------------------------------------------------------------------------------
        final screenWidth:Int = 800;
        final screenHeight:Int = 450;

        InitWindow(screenWidth, screenHeight, "raylib [models] example - loading gltf animations");

        // Define the camera to look into our 3D world
        final camera:Camera3D = new Camera3D();
        camera.position = new Vector3(5.0, 5.0, 5.0);             // Camera position
        camera.target = new Vector3(0.0, 1.5, 0.0);               // Camera looking at point
        camera.up = new Vector3(0.0, 1.0, 0.0);                   // Camera up vector (rotation towards target)
        camera.fovy = 45.0;                                       // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE;                   // Camera projection type

        // Load glTF model
        final model:Model = LoadModel("resources/robot.glb");

        // Load glTF model animations
        var animsCount:Int = 0;
        var animationIndex:UInt = 0;
        var animCurrentFrame:UInt = 0;
        var modelAnimation:cpp.RawPointer<ModelAnimationImpl> = LoadModelAnimations("resources/robot.glb", animsCount);

        final position:Vector3 = new Vector3(0.0, 0.0, 0.0);    // Set model position

        SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!WindowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            UpdateCamera(camera, CAMERA_THIRD_PERSON);

            // Select current animation
            if (IsMouseButtonPressed(MOUSE_BUTTON_RIGHT))
                animationIndex = (animationIndex + 1) % animsCount;
            else if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT))
                animationIndex = (animationIndex + animsCount - 1) % animsCount;

            // Update model animation
            final anim:ModelAnimation = modelAnimation[animationIndex];
            animCurrentFrame = (animCurrentFrame + 1) % anim.frameCount;
            UpdateModelAnimation(model, anim, animCurrentFrame);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            BeginDrawing();

            ClearBackground(RAYWHITE);

            BeginMode3D(camera);

            DrawModel(model, position, 1.0, WHITE); // Draw animated model
            DrawGrid(10, 1.0); // Draw a grid

            EndMode3D();

            DrawText("Use the LEFT/RIGHT mouse buttons to switch animation", 10, 10, 20, GRAY);
            DrawText("Animation: " + cast(anim.name, String), 10, GetScreenHeight() - 20, 10, DARKGRAY);

            EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        UnloadModel(model); // Unload model

        if (modelAnimation != null)
        {
            UnloadModelAnimations(modelAnimation, animsCount); // Unload animations
            modelAnimation = null;
        }

        CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
