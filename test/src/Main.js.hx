import Raylib.*;
import Raylib.Color;
import js.Browser;

class Main
{
    static function main()
    {
        Browser.window.onload = () ->
        {
            InitWindow(640, 480, "Hello hxRaylib-web!");

            ClearBackground(new Color(255, 0, 0, 255));
        }

        Browser.window.onclose = () ->
        {
            CloseWindow();
        }
    }
}
