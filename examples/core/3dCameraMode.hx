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
        InitWindow(screenWidth, screenHeight, "hxRaylib [core] example -  3d camera mode");
        SetTargetFPS(60);

        var camera = Camera3D.create();
        camera.position = Vector3.create(0, 10, 10);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 45;
        camera.projection = CameraProjection.CAMERA_PERSPECTIVE;

        var cubePosition = Vector3.create(0, 0, 0);

        while(!WindowShouldClose())
        {

            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                BeginMode3D(camera);
                    DrawCube(cubePosition, 2, 2, 2, Colors.RED);
                    DrawCubeWires(cubePosition, 2, 2, 2, Colors.MAROON);

                    DrawGrid(10, 1);
                EndMode3D();

                DrawText("Welcome to the third dimension!", 10, 40, 20, Colors.DARKGRAY);
                DrawFPS(10, 10);
            EndDrawing();
        }

        CloseWindow();
    }
}