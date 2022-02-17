import Raylib.Rectangle;
import Raylib.Texture;
import Raylib.*;
import Raylib.Colors.*;
import Raygui;

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
                Raygui.GuiWindowBox(Rectangle.create(0, 0, 200, 200), "Test");
                DrawTexture(texture, 100, 100, WHITE);
            EndDrawing();
        }

        CloseWindow();
    }
}
