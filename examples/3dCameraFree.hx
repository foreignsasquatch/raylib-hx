import Rl.KeyboardKey;
import Rl.CameraMode;
import Rl.CameraProjection;
import Rl.Vector3;
import Rl.Camera3D;
import Rl.Colors;
import Rl.*;

class Main {
    static function main() {
        var screenWidth = 800;
        var screenHeight = 450;
        initWindow(screenWidth, screenHeight, "raylib-hx [core] example -  3d camera free");
        setTargetFPS(60);

        var camera = Camera3D.create();
        camera.position = Vector3.create(10, 10, 10);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 45;
        camera.projection = CameraProjection.CAMERA_PERSPECTIVE;

        var cubePosition = Vector3.create(0, 0, 0);

        setCameraMode(camera, CameraMode.FREE);

        while(!windowShouldClose())
        {
            updateCamera(camera);

            if(isKeyDown(KeyboardKey.Z)) camera.target = Vector3.create(0, 0, 0);

            beginDrawing();
                clearBackground(Colors.RAYWHITE);
                beginMode3D(camera);
                    drawCube(cubePosition, 2, 2, 2, Colors.RED);
                    drawCubeWires(cubePosition, 2, 2, 2, Colors.MAROON);

                    drawGrid(10, 1);
                endMode3D();

                drawRectangleLines(10, 10, 320, 133, Colors.BLUE);

                drawText("Free camera default controls:", 20, 20, 10, Colors.BLACK);
                drawText("- Mouse Wheel to Zoom in-out", 40, 40, 10, Colors.DARKGRAY);
                drawText("- Mouse Wheel Pressed to Pan", 40, 60, 10, Colors.DARKGRAY);
                drawText("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, Colors.DARKGRAY);
                drawText("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, Colors.DARKGRAY);
                drawText("- Z to zoom to (0, 0, 0)", 40, 120, 10, Colors.DARKGRAY);
            endDrawing();
        }

        closeWindow();
    }
}