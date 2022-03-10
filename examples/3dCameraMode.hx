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
        initWindow(screenWidth, screenHeight, "hxRaylib [core] example -  3d camera mode");
        setTargetFPS(60);

        var camera = Camera3D.create();
        camera.position = Vector3.create(0, 10, 10);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 45;
        camera.projection = CameraProjection.CAMERA_PERSPECTIVE;

        var cubePosition = Vector3.create(0, 0, 0);

        while(!windowShouldClose())
        {

            beginDrawing();
                clearBackground(Colors.RAYWHITE);
                beginMode3D(camera);
                    drawCube(cubePosition, 2, 2, 2, Colors.RED);
                    drawCubeWires(cubePosition, 2, 2, 2, Colors.MAROON);

                    drawGrid(10, 1);
                endMode3D();

                drawText("Welcome to the third dimension!", 10, 40, 20, Colors.DARKGRAY);
                drawFPS(10, 10);
            endDrawing();
        }

        closeWindow();
    }
}