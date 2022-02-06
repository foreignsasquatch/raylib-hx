import Raylib.KeyboardKey;
import Raylib.Vector2;
import Raylib.Colors;
import Raylib.*;

class Main
{
    static function main()
    {
        InitWindow(800, 450, "hxRaylib [core] example - keyboard input");
        var ballPosition:Vector2 = Vector2.create(800/2, 450/2);
        SetTargetFPS(60);

        while(!WindowShouldClose())
        {
            if(IsKeyDown(KeyboardKey.RIGHT)) ballPosition.x += 2.0;
            if(IsKeyDown(KeyboardKey.LEFT)) ballPosition.x -= 2.0;
            if(IsKeyDown(KeyboardKey.UP)) ballPosition.y -= 2.0;
            if(IsKeyDown(KeyboardKey.DOWN)) ballPosition.y += 2.0;

            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                DrawText("Move the ball with arrow keys", 190, 200, 20, Colors.LIGHTGRAY);
                DrawCircleV(ballPosition, 50, Colors.MAROON);
            EndDrawing();
        }

        CloseWindow();
    }
}