import Raylib.Texture;
import Raylib.*;
import Raylib.Colors.*;

class Main
{
    static function main()
    {
        InitWindow(800, 450, "hxRaylib");

        var texture:Texture = LoadTexture("assets/lildood.png");

        while (!WindowShouldClose())
        {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawTexture(texture, 100, 100, WHITE);
            EndDrawing();
        }

        CloseWindow();
    }
}
