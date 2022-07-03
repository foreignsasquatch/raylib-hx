import Rl.Vector2;
import Rl.*;

class BasicWindow {
    static function main() {
        var pos = Vector2.create(100, 100);

        initWindow(800, 450, "raylib-hx [core] example - basic window");
        setTargetFPS(60);
        var t:Rl.Texture = LoadTexture("parrot.png");

        while(!windowShouldClose()) {
            beginDrawing();
            DrawTextureV(t, pos, Rl.Colors.WHITE);
            clearBackground(Rl.Colors.BLACK);
            endDrawing();
        }

        closeWindow();
    }
}
