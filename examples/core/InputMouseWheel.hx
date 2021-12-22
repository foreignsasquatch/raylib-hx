import Raylib.Colors;
import Raylib.*;

class Main
{
    static function main()
    {
        var screenWidth = 800;
        var screenHeight = 450;
        InitWindow(screenWidth, screenHeight, "hxRaylib [core] example - keyboard input");
        SetTargetFPS(60);

        var boxPositionY = screenHeight / 2 - 40;
        var scrollSpeed = 4;

        while(!WindowShouldClose())
        {
            boxPositionY -= (GetMouseWheelMove() * scrollSpeed);
            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                DrawRectangle(Std.int(screenWidth / 2 - 40), Std.int(boxPositionY), 80, 80, Colors.RED);
                
                DrawText("Use mouse wheel to move the cube up and down!", 10, 10, 20, Colors.GRAY);
                DrawText("Box position Y: " + boxPositionY, 10, 40, 20, Colors.LIGHTGRAY);
            EndDrawing();
        }

        CloseWindow();
    }
}