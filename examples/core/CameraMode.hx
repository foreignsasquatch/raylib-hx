package core;

function main() {
  var screenWidth = 800;
  var screenHeight = 450;

  Rl.initWindow(screenWidth, screenHeight, "[Core] - 3D camera mode");
  Rl.setTargetFPS(60);

  var camera = Rl.Camera3D.create();
  camera.position = Rl.Vector3.create(0, 10, 10);
  camera.target = Rl.Vector3.create(0, 0, 0);
  camera.up = Rl.Vector3.create(0, 1, 0);
  camera.fovy = 45;
  camera.projection = Rl.CameraProjection.PERSPECTIVE;

  var cubePosition = Rl.Vector3.create(0, 0, 0);

  while(!Rl.windowShouldClose()) {
    Rl.beginDrawing();
    Rl.clearBackground(Rl.Colors.RAYWHITE);
    
    Rl.beginMode3D(camera);
    Rl.drawCube(cubePosition, 2, 2, 2, Rl.Colors.RED);
    Rl.drawCubeWires(cubePosition, 2, 2, 2, Rl.Colors.MAROON);

    Rl.drawGrid(10, 1);
    Rl.endMode3D();

    Rl.drawText("Welcome to the third dimension!", 10, 40, 20, Rl.Colors.DARKGRAY);
    Rl.drawFPS(10, 10);

    Rl.endDrawing();
  }

  Rl.closeWindow();
}
