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
        Raylib.initWindow(800, 600, "raylib [models] example - loading gltf animations");

        var delta:Single = 0.0;
        var currentAnimationIndex:Int = 0;
        var currentAnimation:ModelAnimation;
        var animationsCount:Int = 0;

        final modelFilePath:String = "../assets/model.glb";
        final position:Vector3 = new Vector3(0.0, 0.0, 0.0);
        final model:Model = Raylib.loadModel(modelFilePath);
        final modelAnimation:cpp.RawPointer<RayModelAnimation> = Raylib.loadModelAnimations(modelFilePath, animationsCount);

        final camera:Camera3D = new Camera3D();
        camera.fovy = 45.0;
        camera.up = new Vector3(0.0, 1.0, 0.0);
        camera.projection = CAMERA_PERSPECTIVE;
        camera.target = new Vector3(0.0, 1.5, 0.0);
        camera.position = new Vector3(5.0, 5.0, 5.0);

        currentAnimation = modelAnimation[currentAnimationIndex];

        Raylib.setTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose())
        {
            delta += Raylib.getFrameTime();

            // Animation change triggers
            //----------------------------------------------------------------------------------
            if (Raylib.isMouseButtonPressed(MOUSE_BUTTON_LEFT))
            {
                currentAnimationIndex = (currentAnimationIndex + 1) % animationsCount;

                currentAnimation = modelAnimation[currentAnimationIndex];
            }

            if (Raylib.isMouseButtonPressed(MOUSE_BUTTON_RIGHT))
            {
                currentAnimationIndex = (currentAnimationIndex + animationsCount - 1) % animationsCount;

                currentAnimation = modelAnimation[currentAnimationIndex];
            }

            // Update
            //----------------------------------------------------------------------------------
            Raylib.updateCamera(camera, CAMERA_ORBITAL);

            Raylib.updateModelAnimation(model, currentAnimation, Std.int(delta * currentAnimation.frameCount) % currentAnimation.frameCount);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();

            Raylib.clearBackground(Raylib.RAYWHITE);

            Raylib.beginMode3D(camera);

            Raylib.drawModel(model, position, 1.0, Raylib.RAYWHITE);

            Raylib.drawGrid(10, 1.0);

            Raylib.endMode3D();

            Raylib.drawText("CLICK TO CHANGE ANIMATION", 10, 10, 20, Raylib.BLUE);

            Raylib.drawText("Model by MrScautHD", 800 - 220, 600 - 26, 20, Raylib.BLUE);

            Raylib.endDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.unloadModel(model);

        Raylib.unloadModelAnimations(modelAnimation, animationsCountReference);

        Raylib.closeWindow();
        //--------------------------------------------------------------------------------------
    }
}
