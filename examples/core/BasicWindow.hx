import Raylib.Color;
import Raylib.Colors;
import Raylib.*;

class Main
{
    static function main()
    {
        InitWindow(800, 450, "hxRaylib [core] example - basic window");
        SetTargetFPS(60);

        while(!WindowShouldClose())
        {
            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                DrawText("Congrats! You created your first window!", 190, 200, 20, Colors.LIGHTGRAY);
            EndDrawing();
        }

        CloseWindow();
    }
}