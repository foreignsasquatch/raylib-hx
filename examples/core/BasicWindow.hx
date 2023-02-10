package core;

function main() {
  var screenWidth = 800;
  var screenHeight = 450;

  Rl.initWindow(screenWidth, screenHeight, "[Core] - Basic window");
  Rl.setTargetFPS(60);

  while(!Rl.windowShouldClose()) {
    Rl.beginDrawing();
    Rl.clearBackground(Rl.Colors.RAYWHITE);
    Rl.drawText("Hello World!", 190, 200, 20, Rl.Colors.LIGHTGRAY);
    Rl.endDrawing();
  }

  Rl.closeWindow();
}