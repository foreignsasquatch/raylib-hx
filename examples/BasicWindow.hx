import cpp.Pointer;
import Raylib.Rectangle;
import Raylib.*;

class BasicWindow
{
    static function main()
    {
        initWindow(800, 450, "hxRaylib [core] example - basic window");
        setTargetFPS(60);

        while(!windowShouldClose())
        {
            beginDrawing();
                clearBackground(Raylib.Colors.WHITE);
            endDrawing();
        }

        closeWindow();
    }
}