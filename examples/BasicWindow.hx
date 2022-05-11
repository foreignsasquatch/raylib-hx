import Rl.Rectangle;
import Rl.*;

class BasicWindow
{
    static function main()
    {
        initWindow(800, 450, "raylib-hx [core] example - basic window");
        setTargetFPS(60);
        var t:Rl.Texture = new Rl.Texture("parrot.png");

        while(!windowShouldClose())
        {
            beginDrawing();
            // drawText('Hi', 0, 0, 200, Rl.Colors.WHITE);
            drawTexture(t, 0, 0, Rl.Colors.WHITE);
            drawRectangleRec(new Rectangle(100, 100, 20, 20), new Rl.Color(255, 0, 0, 255));
            clearBackground(Rl.Colors.BLACK);
            endDrawing();
        }

        closeWindow();
    }
}
