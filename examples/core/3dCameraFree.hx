import Raylib.KeyboardKey;
import Raylib.CameraMode;
import Raylib.CameraProjection;
import Raylib.Vector3;
import Raylib.Camera3D;
import Raylib.Colors;
import Raylib.*;

class Main
{
    static function main()
    {
        var screenWidth = 800;
        var screenHeight = 450;
        InitWindow(screenWidth, screenHeight, "hxRaylib [core] example -  3d camera free");
        SetTargetFPS(60);

        var camera = Camera3D.create();
        camera.position = Vector3.create(10, 10, 10);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 45;
        camera.projection = CameraProjection.CAMERA_PERSPECTIVE;

        var cubePosition = Vector3.create(0, 0, 0);

        SetCameraMode(camera, CameraMode.FREE);

        while(!WindowShouldClose())
        {
            UpdateCamera(camera);

            if(IsKeyDown(KeyboardKey.Z)) camera.target = Vector3.create(0, 0, 0);

            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                BeginMode3D(camera);
                    DrawCube(cubePosition, 2, 2, 2, Colors.RED);
                    DrawCubeWires(cubePosition, 2, 2, 2, Colors.MAROON);

                    DrawGrid(10, 1);
                EndMode3D();

                DrawRectangleLines(10, 10, 320, 133, Colors.BLUE);

                DrawText("Free camera default controls:", 20, 20, 10, Colors.BLACK);
                DrawText("- Mouse Wheel to Zoom in-out", 40, 40, 10, Colors.DARKGRAY);
                DrawText("- Mouse Wheel Pressed to Pan", 40, 60, 10, Colors.DARKGRAY);
                DrawText("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, Colors.DARKGRAY);
                DrawText("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, Colors.DARKGRAY);
                DrawText("- Z to zoom to (0, 0, 0)", 40, 120, 10, Colors.DARKGRAY);
            EndDrawing();
        }

        CloseWindow();
    }
}