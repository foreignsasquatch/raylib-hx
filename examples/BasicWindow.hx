import Rl.*;

class BasicWindow {
  static function main() {
    initWindow(800, 450, "hxRaylib [core] example - basic window");
    setTargetFPS(60);
    var rectArray = new Array<Rl.Rectangle>();
    var rects = Rl.Rectangle.create(0, 0, 5, 5);
    rectArray.push(rects);

    while(!windowShouldClose()) {
      beginDrawing();
      clearBackground(Rl.Colors.WHITE);
      for(i in rectArray) drawRectangleRec(i, Rl.Colors.BLACK);
      endDrawing();
    }

    closeWindow();
  }
}
