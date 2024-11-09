package;

import Raylib;

//------------------------------------------------------------------------------------------
// Types and Structures Definition
//------------------------------------------------------------------------------------------
enum GameScreen
{
    LOGO;
    TITLE;
    GAMEPLAY;
    ENDING;
}

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

        Raylib.initWindow(screenWidth, screenHeight, "raylib [core] example - basic screen manager");

        var currentScreen:GameScreen = GameScreen.LOGO;

        // TODO: Initialize all required variables and load all required data here!
        var framesCounter:Int = 0; // Useful to count frames

        Raylib.setTargetFPS(60); // Set desired framerate (frames-per-second)
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            switch (currentScreen)
            {
                case GameScreen.LOGO:
                    // TODO: Update LOGO screen variables here!
                    framesCounter++; // Count frames

                    // Wait for 2 seconds (120 frames) before jumping to TITLE screen
                    if (framesCounter > 120)
                    {
                        currentScreen = GameScreen.TITLE;
                    }
                case GameScreen.TITLE:
                    // TODO: Update TITLE screen variables here!
                    // Press enter to change to GAMEPLAY screen
                    if (Raylib.isKeyPressed(KEY_ENTER) || Raylib.isGestureDetected(GESTURE_TAP))
                    {
                        currentScreen = GameScreen.GAMEPLAY;
                    }
                case GameScreen.GAMEPLAY:
                    // TODO: Update GAMEPLAY screen variables here!
                    // Press enter to change to ENDING screen
                    if (Raylib.isKeyPressed(KEY_ENTER) || Raylib.isGestureDetected(GESTURE_TAP))
                    {
                        currentScreen = GameScreen.ENDING;
                    }
                case GameScreen.ENDING:
                    // TODO: Update ENDING screen variables here!
                    // Press enter to return to TITLE screen
                    if (Raylib.isKeyPressed(KEY_ENTER) || Raylib.isGestureDetected(GESTURE_TAP))
                    {
                        currentScreen = GameScreen.TITLE;
                    }
            }
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();
            Raylib.clearBackground(Raylib.RAYWHITE);

            switch (currentScreen)
            {
                case GameScreen.LOGO:
                    // TODO: Draw LOGO screen here!
                    Raylib.drawText("LOGO SCREEN", 20, 20, 40, Raylib.LIGHTGRAY);
                    Raylib.drawText("WAIT for 2 SECONDS...", 290, 220, 20, Raylib.GRAY);
                case GameScreen.TITLE:
                    // TODO: Draw TITLE screen here!
                    Raylib.drawRectangle(0, 0, screenWidth, screenHeight, Raylib.GREEN);
                    Raylib.drawText("TITLE SCREEN", 20, 20, 40, Raylib.DARKGREEN);
                    Raylib.drawText("PRESS ENTER or TAP to JUMP to GAMEPLAY SCREEN", 120, 220, 20, Raylib.DARKGREEN);
                case GameScreen.GAMEPLAY:
                    // TODO: Draw GAMEPLAY screen here!
                    Raylib.drawRectangle(0, 0, screenWidth, screenHeight, Raylib.PURPLE);
                    Raylib.drawText("GAMEPLAY SCREEN", 20, 20, 40, Raylib.MAROON);
                    Raylib.drawText("PRESS ENTER or TAP to JUMP to ENDING SCREEN", 130, 220, 20, Raylib.MAROON);
                case GameScreen.ENDING:
                    // TODO: Draw ENDING screen here!
                    Raylib.drawRectangle(0, 0, screenWidth, screenHeight, Raylib.BLUE);
                    Raylib.drawText("ENDING SCREEN", 20, 20, 40, Raylib.DARKBLUE);
                    Raylib.drawText("PRESS ENTER or TAP to RETURN to TITLE SCREEN", 120, 220, 20, Raylib.DARKBLUE);
                default:
            }

            Raylib.endDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        // TODO: Unload all loaded data (textures, fonts, audio) here!

        Raylib.closeWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
