import raylib.Rl.*;

class BasicWindow {
  static function main() {
    initWindow(800, 450, "hxRaylib [core] example - basic window");
    setTargetFPS(60);

    var vec:raylib.Vector2 = new raylib.Vector2(100, 100);
    var t = loadTexture("parrot.png");

    while(!windowShouldClose()) {
      beginDrawing();
      clearBackground(raylib.Rl.Colors.WHITE);
      drawTextureV(t, vec, raylib.Rl.Colors.WHITE);
      endDrawing();
    }

    closeWindow();
  }
}
