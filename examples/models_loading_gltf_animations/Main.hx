package;

import Raylib;

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

        Raylib.initWindow(screenWidth, screenHeight, "raylib [models] example - loading gltf animations");

        // Define the camera to look into our 3D world
        final camera:Camera3D = new Camera3D();
        camera.position = new Vector3(5.0, 5.0, 5.0);             // Camera position
        camera.target = new Vector3(0.0, 1.5, 0.0);               // Camera looking at point
        camera.up = new Vector3(0.0, 1.0, 0.0);                   // Camera up vector (rotation towards target)
        camera.fovy = 45.0;                                       // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE;                   // Camera projection type

        // Load glTF model
        final model:Model = Raylib.loadModel("resources/robot.glb");

        // Load glTF model animations
        var animsCount:Int = 0;
        var animationIndex:UInt = 0;
        var animCurrentFrame:UInt = 0;
        var modelAnimation:cpp.RawPointer<RayModelAnimation> = Raylib.loadModelAnimations("resources/robot.glb", animsCount);

        final position:Vector3 = new Vector3(0.0, 0.0, 0.0);    // Set model position

        Raylib.setTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            Raylib.updateCamera(camera, CAMERA_THIRD_PERSON);

            // Select current animation
            if (Raylib.isMouseButtonPressed(MOUSE_BUTTON_RIGHT))
                animationIndex = (animationIndex + 1) % animsCount;
            else if (Raylib.isMouseButtonPressed(MOUSE_BUTTON_LEFT))
                animationIndex = (animationIndex + animsCount - 1) % animsCount;

            // Update model animation
            final anim:ModelAnimation = modelAnimation[animationIndex];
            animCurrentFrame = (animCurrentFrame + 1) % anim.frameCount;
            Raylib.updateModelAnimation(model, anim, animCurrentFrame);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();

            Raylib.clearBackground(Raylib.RAYWHITE);

            Raylib.beginMode3D(camera);

            Raylib.drawModel(model, position, 1.0, Raylib.WHITE); // Draw animated model
            Raylib.drawGrid(10, 1.0); // Draw a grid

            Raylib.endMode3D();

            Raylib.drawText("Use the LEFT/RIGHT mouse buttons to switch animation", 10, 10, 20, Raylib.GRAY);
            Raylib.drawText("Animation: " + anim.name, 10, Raylib.getScreenHeight() - 20, 10, Raylib.DARKGRAY);

            Raylib.endDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.unloadModel(model); // Unload model

        if (modelAnimation != null)
        {
            Raylib.unloadModelAnimations(modelAnimation, animsCount); // Unload animations
            modelAnimation = null;
        }

        Raylib.closeWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
