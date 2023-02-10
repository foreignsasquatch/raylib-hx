package core;

function main() {
  Rl.initWindow(800, 450, "[Core] - Keyboard input");  
  Rl.setTargetFPS(60);

  var ballPosition = Rl.Vector2.create(800/2, 450/2);

  while(!Rl.windowShouldClose()) {
    if(Rl.isKeyDown(Rl.Keys.RIGHT)) ballPosition.x += 2.0;
    if(Rl.isKeyDown(Rl.Keys.LEFT)) ballPosition.x -= 2.0;
    if(Rl.isKeyDown(Rl.Keys.UP)) ballPosition.y -= 2.0;
    if(Rl.isKeyDown(Rl.Keys.DOWN)) ballPosition.y += 2.0;

    Rl.beginDrawing();
    Rl.clearBackground(Rl.Colors.WHITE);

    Rl.drawText("Move the rectangle with arrow keys", 190, 225, 20, Rl.Colors.DARKGRAY);
    Rl.drawRectangle(Std.int(ballPosition.x), Std.int(ballPosition.y), 50, 50, Rl.Colors.RED);

    Rl.endDrawing();
  }

  Rl.closeWindow();
}