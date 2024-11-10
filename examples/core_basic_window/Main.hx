package;

import raylib.Raylib;

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

        Raylib.InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");

        Raylib.SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.WindowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            // TODO: Update your variables here
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.BeginDrawing();

            Raylib.ClearBackground(Raylib.RAYWHITE);

            Raylib.DrawText("Congrats! You created your first window!", 190, 200, 20, Raylib.LIGHTGRAY);

            Raylib.EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
