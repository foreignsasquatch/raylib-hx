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
                clearBackground({r: 255, g: 255, b: 255, a: 255});
            endDrawing();
        }

        closeWindow();
    }
}