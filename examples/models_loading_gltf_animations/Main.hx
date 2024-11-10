package;

import raylib.Raylib;

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

        Raylib.InitWindow(screenWidth, screenHeight, "raylib [models] example - loading gltf animations");

        // Define the camera to look into our 3D world
        final camera:Camera3D = new Camera3D();
        camera.position = new Vector3(5.0, 5.0, 5.0);             // Camera position
        camera.target = new Vector3(0.0, 1.5, 0.0);               // Camera looking at point
        camera.up = new Vector3(0.0, 1.0, 0.0);                   // Camera up vector (rotation towards target)
        camera.fovy = 45.0;                                       // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE;                   // Camera projection type

        // Load glTF model
        final model:Model = Raylib.LoadModel("resources/robot.glb");

        // Load glTF model animations
        var animsCount:Int = 0;
        var animationIndex:UInt = 0;
        var animCurrentFrame:UInt = 0;
        var modelAnimation:cpp.RawPointer<ModelAnimationImpl> = Raylib.LoadModelAnimations("resources/robot.glb", animsCount);

        final position:Vector3 = new Vector3(0.0, 0.0, 0.0);    // Set model position

        Raylib.SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            Raylib.UpdateCamera(camera, CAMERA_THIRD_PERSON);

            // Select current animation
            if (Raylib.IsMouseButtonPressed(MOUSE_BUTTON_RIGHT))
                animationIndex = (animationIndex + 1) % animsCount;
            else if (Raylib.IsMouseButtonPressed(MOUSE_BUTTON_LEFT))
                animationIndex = (animationIndex + animsCount - 1) % animsCount;

            // Update model animation
            final anim:ModelAnimation = modelAnimation[animationIndex];
            animCurrentFrame = (animCurrentFrame + 1) % anim.frameCount;
            Raylib.UpdateModelAnimation(model, anim, animCurrentFrame);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.BeginDrawing();

            Raylib.ClearBackground(Raylib.RAYWHITE);

            Raylib.BeginMode3D(camera);

            Raylib.DrawModel(model, position, 1.0, Raylib.WHITE); // Draw animated model
            Raylib.DrawGrid(10, 1.0); // Draw a grid

            Raylib.EndMode3D();

            Raylib.DrawText("Use the LEFT/RIGHT mouse buttons to switch animation", 10, 10, 20, Raylib.GRAY);
            Raylib.DrawText("Animation: " + cast(anim.name, String), 10, Raylib.getScreenHeight() - 20, 10, Raylib.DARKGRAY);

            Raylib.EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.UnloadModel(model); // Unload model

        if (modelAnimation != null)
        {
            Raylib.UnloadModelAnimations(modelAnimation, animsCount); // Unload animations
            modelAnimation = null;
        }

        Raylib.CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
