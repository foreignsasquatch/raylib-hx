package;

#if emscripten
import emscripten.Emscripten;
#end
import Raylib;

class Main
{
    //------------------------------------------------------------------------------------
    // Program main entry point
    //------------------------------------------------------------------------------------
    public static function main():Void
    {
        // Initialization
        //--------------------------------------------------------------------------------------
        final screenWidth:Int = 800;
        final screenHeight:Int = 450;

        Raylib.initWindow(screenWidth, screenHeight, "raylib [core] example - basic window");

        #if emscripten
        Emscripten.set_main_loop(cpp.Callable.fromStaticFunction(updateDrawFrame), 0, 1);
        #else
        Raylib.setTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            updateDrawFrame();
        }
        #end

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.closeWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }

    //----------------------------------------------------------------------------------
    // Module Functions Definition
    //----------------------------------------------------------------------------------
    private static function updateFrame():Void
    {
            // Update
            //----------------------------------------------------------------------------------
            // TODO: Update your variables here
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();

            Raylib.clearBackground(Raylib.RAYWHITE);

            Raylib.drawText("Congrats! You created your first window!", 190, 200, 20, Raylib.LIGHTGRAY);

            Raylib.endDrawing();
            //----------------------------------------------------------------------------------
    }
}
