import Rl.MouseButton;
import Rl.Color;
import Rl.Vector2;
import Rl.Colors;
import Rl.*;

class Main
{
    static function main()
    {
        var screenWidth = 800;
        var screenHeight = 450;
        initWindow(screenWidth, screenHeight, "raylib-hx [core] example - keyboard input");
        setTargetFPS(60);

        var ballPosition:Vector2 = Vector2.create(-100.0, -100.0);
        var ballColor:Color = Colors.DARKBLUE;

        while(!windowShouldClose())
        {
            ballPosition = getMousePosition();
            
            if (isMouseButtonPressed(MouseButton.LEFT)) ballColor = Colors.MAROON;
            else if (isMouseButtonPressed(MouseButton.MIDDLE)) ballColor = Colors.LIME;
            else if (isMouseButtonPressed(MouseButton.RIGHT)) ballColor = Colors.DARKBLUE;
            
            beginDrawing();
                clearBackground(Colors.RAYWHITE);
                drawCircleV(ballPosition, 40, ballColor);
                drawText("Move ball with mouse and click mouse button to change color", 10, 10, 20, Colors.LIGHTGRAY);
            endDrawing();
        }

        closeWindow();
    }
}