import Rl.*;

class BasicWindow {
  static function main() {
    initWindow(800, 450, "hxRaylib [core] example - basic window");
    setTargetFPS(60);

    var vec:Rl.Vector2 = Rl.Vector2.create(0, 0);
    var t = loadTexture("parrot.png");

    while(!windowShouldClose()) {
      beginDrawing();
      clearBackground(Rl.Colors.WHITE);
      drawTextureV(t, vec, Rl.Colors.WHITE);
      endDrawing();
    }

    closeWindow();
  }
}
