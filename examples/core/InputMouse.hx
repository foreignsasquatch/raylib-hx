import Raylib.MouseButton;
import Raylib.Color;
import Raylib.Vector2;
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

        var ballPosition:Vector2 = Vector2.create(-100.0, -100.0);
        var ballColor:Color = Colors.DARKBLUE;

        while(!WindowShouldClose())
        {
            ballPosition = GetMousePositiin();
            
            if (IsMouseButtonPressed(MouseButton.LEFT)) ballColor = Colors.MAROON;
            else if (IsMouseButtonPressed(MouseButton.MIDDLE)) ballColor = Colors.LIME;
            else if (IsMouseButtonPressed(MouseButton.RIGHT)) ballColor = Colors.DARKBLUE;
            
            BeginDrawing();
                ClearBackground(Colors.RAYWHITE);
                DrawCircleV(ballPosition, 40, ballColor);
                DrawText("Move ball with mouse and click mouse button to change color", 10, 10, 20, Colors.LIGHTGRAY);
            EndDrawing();
        }

        CloseWindow();
    }
}