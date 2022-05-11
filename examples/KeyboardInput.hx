import Rl.Keys;
import Rl.Vector2;
import Rl.Colors;
import Rl.*;

class KeyboardInput {
    static function main() {
        initWindow(800, 450, "raylib-hx [core] example - keyboard input");
        var ballPosition = new Vector2(800/2, 450/2);
        setTargetFPS(60);

        while(!windowShouldClose()) {
            if(isKeyDown(Keys.RIGHT)) ballPosition.x += 2.0;
            if(isKeyDown(Keys.LEFT)) ballPosition.x -= 2.0;
            if(isKeyDown(Keys.UP)) ballPosition.y -= 2.0;
            if(isKeyDown(Keys.DOWN)) ballPosition.y += 2.0;

            beginDrawing();
            clearBackground(Colors.WHITE);
            drawText("Move the ball with arrow keys", 190, 200, 20, Colors.BLACK);
            drawRectangle(Std.int(ballPosition.x), Std.int(ballPosition.y), 50, 50, Colors.BLACK);
            endDrawing();
        }

        closeWindow();
    }
}
