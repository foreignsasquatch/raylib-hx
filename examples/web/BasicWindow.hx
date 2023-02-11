package web;

import cpp.Callable;
import emscripten.Emscripten;

function main() {
  var screenWidth = 800;
  var screenHeight = 450;

  Rl.initWindow(screenWidth, screenHeight, "[Core] - Basic window");
  Rl.setTargetFPS(70);

  Emscripten.setMainLoop(Callable.fromStaticFunction(Game.step), 70, 1);

  Rl.closeWindow();
}

class Game {
  public static function step() {
    Rl.beginDrawing();
    Rl.clearBackground(Rl.Colors.RAYWHITE);
    Rl.drawText("Hello World!", 190, 200, 20, Rl.Colors.LIGHTGRAY);
    Rl.drawFPS(0, 0);
    Rl.endDrawing();
  }
}