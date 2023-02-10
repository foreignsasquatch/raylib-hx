package core;

function main() {
  var screenWidth = 800;
  var screenHeight = 450;

  Rl.initWindow(screenWidth, screenHeight, "[Core] - Mouse input");
  Rl.setTargetFPS(60);

  var ballPosition = Rl.Vector2.create(-100.0, -100.0);
  var ballColor = Rl.Colors.DARKBLUE;

  while(!Rl.windowShouldClose()) {
      ballPosition = Rl.getMousePosition();
      
      if(Rl.isMouseButtonPressed(Rl.MouseButton.LEFT)) ballColor = Rl.Colors.MAROON;
      else if(Rl.isMouseButtonPressed(Rl.MouseButton.MIDDLE)) ballColor = Rl.Colors.LIME;
      else if(Rl.isMouseButtonPressed(Rl.MouseButton.RIGHT)) ballColor = Rl.Colors.DARKBLUE;
      
      Rl.beginDrawing();
      Rl.clearBackground(Rl.Colors.RAYWHITE);

      Rl.drawCircleV(ballPosition, 40, ballColor);

      Rl.drawText("Move ball with mouse and click mouse button to change color", 10, 10, 20, Rl.Colors.LIGHTGRAY);

      Rl.endDrawing();
  }

  Rl.closeWindow();
}