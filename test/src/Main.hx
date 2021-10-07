import Raylib.*;
import Raylib.Colors;

class Main
{
    static function main()
    {
        InitWindow(800, 600, "Test");
        SetTargetFPS(60);
        while(!WindowShouldClose())
        {
            BeginDrawing();
                ClearBackground(Colors.BLACK);
                //DrawFPS(100, 100);
            EndDrawing();
        }
        CloseWindow();
    }
}