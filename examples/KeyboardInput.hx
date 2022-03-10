import Raylib.KeyboardKey;
import Raylib.Vector2;
import Raylib.Colors;
import Raylib.*;

class Main
{
    static function main()
    {
        initWindow(800, 450, "hxRaylib [core] example - keyboard input");
        var ballPosition:Vector2 = Vector2.create(800/2, 450/2);
        setTargetFPS(60);

        while(!windowShouldClose())
        {
            if(isKeyDown(KeyboardKey.RIGHT)) ballPosition.x += 2.0;
            if(isKeyDown(KeyboardKey.LEFT)) ballPosition.x -= 2.0;
            if(isKeyDown(KeyboardKey.UP)) ballPosition.y -= 2.0;
            if(isKeyDown(KeyboardKey.DOWN)) ballPosition.y += 2.0;

            beginDrawing();
                clearBackground(Colors.RAYWHITE);
                drawText("Move the ball with arrow keys", 190, 200, 20, Colors.LIGHTGRAY);
                drawCircleV(ballPosition, 50, Colors.MAROON);
            endDrawing();
        }

        closeWindow();
    }
}