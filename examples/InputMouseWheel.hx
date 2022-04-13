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

        var boxPositionY = screenHeight / 2 - 40;
        var scrollSpeed = 4;

        while(!windowShouldClose())
        {
            boxPositionY -= (getMouseWheelMove() * scrollSpeed);
            beginDrawing();
                clearBackground(Colors.RAYWHITE);
                drawRectangle(Std.int(screenWidth / 2 - 40), Std.int(boxPositionY), 80, 80, Colors.RED);
                
                drawText("Use mouse wheel to move the cube up and down!", 10, 10, 20, Colors.GRAY);
                drawText("Box position Y: " + boxPositionY, 10, 40, 20, Colors.LIGHTGRAY);
            endDrawing();
        }

        closeWindow();
    }
}