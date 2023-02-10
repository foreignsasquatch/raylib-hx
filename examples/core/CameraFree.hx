package core;

// Couldnt use number in class name :(
function main() {
  var screenWidth = 800;
  var screenHeight = 450;

  Rl.initWindow(screenWidth, screenHeight, "[Core] - 3D camera free");
  Rl.setTargetFPS(60);

  // need to make better constuctor.
  var camera = Rl.Camera3D.create();
  camera.position = Rl.Vector3.create(10, 10, 10);
  camera.target = Rl.Vector3.create(0, 0, 0);
  camera.up = Rl.Vector3.create(0, 1, 0);
  camera.fovy = 45;
  camera.projection = Rl.CameraProjection.PERSPECTIVE;

  var cubePosition = Rl.Vector3.create(0, 0, 0);

  Rl.setCameraMode(camera, Rl.CameraMode.FREE);

  while(!Rl.windowShouldClose()) {
    Rl.updateCamera(camera);

    if(Rl.isKeyDown(Rl.Keys.Z)) camera.target = Rl.Vector3.create(0, 0, 0);

    Rl.beginDrawing();
    Rl.clearBackground(Rl.Colors.RAYWHITE);

    Rl.beginMode3D(camera);
    Rl.drawCube(cubePosition, 2, 2, 2, Rl.Colors.RED);
    Rl.drawCubeWires(cubePosition, 2, 2, 2, Rl.Colors.MAROON);

    Rl.drawGrid(10, 1);
    Rl.endMode3D();

    Rl.drawRectangleLines(10, 10, 320, 133, Rl.Colors.BLUE);

    Rl.drawText("Free camera default controls:", 20, 20, 10, Rl.Colors.BLACK);
    Rl.drawText("- Mouse Wheel to Zoom in-out", 40, 40, 10, Rl.Colors.DARKGRAY);
    Rl.drawText("- Mouse Wheel Pressed to Pan", 40, 60, 10, Rl.Colors.DARKGRAY);
    Rl.drawText("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, Rl.Colors.DARKGRAY);
    Rl.drawText("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, Rl.Colors.DARKGRAY);
    Rl.drawText("- Z to zoom to (0, 0, 0)", 40, 120, 10, Rl.Colors.DARKGRAY);

    Rl.endDrawing();
  }

  Rl.closeWindow();
}