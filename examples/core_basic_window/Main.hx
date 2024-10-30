package;

import Raylib;

#if windows
@:buildXml('<target id="haxe"> <flag value="${haxelib:raylib-hx}/project/lib/raylib/src/raylib.rc.data" /> </target>')
#end
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

        Raylib.setTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
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

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.closeWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
