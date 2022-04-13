import Rl.Rectangle;
import Rl.*;

class BasicWindow
{
    static function main()
    {
        initWindow(800, 450, "raylib-hx [core] example - basic window");
        setTargetFPS(60);

        while(!windowShouldClose())
        {
            beginDrawing();
                clearBackground(Rl.Colors.WHITE);
            endDrawing();
        }

        closeWindow();
    }
}
