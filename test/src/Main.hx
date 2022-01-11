import Raylib.*;
import Raylib.Colors.*;

class Main
{
    static function main()
    {
        InitWindow(800, 450, "hxRaylib");

        while (!WindowShouldClose())
        {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("WASM+RAYLIB+HAXE", 100, 100, 20, BLACK);
            EndDrawing();
        }

        CloseWindow();
    }
}