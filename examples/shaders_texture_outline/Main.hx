package;

import raylib.Raylib.*;
import raylib.Types;

class Main
{
    #if PLATFORM_DESKTOP
    static final GLSL_VERSION:Int = 330;
    #else
    static final GLSL_VERSION:Int = 100;
    #end

    //------------------------------------------------------------------------------------
    // Program main entry point
    //------------------------------------------------------------------------------------
    public static function main():Void
    {
        // Initialization
        //--------------------------------------------------------------------------------------
        final screenWidth:Int = 800;
        final screenHeight:Int = 450;

        InitWindow(screenWidth, screenHeight, "raylib [shaders] example - Apply an outline to a texture");

        final texture:Texture = LoadTexture("resources/fudesumi.png");

        final shdrOutline:Shader = LoadShader(null, "resources/shaders/glsl" + GLSL_VERSION + "/outline.fs");

        var outlineSize:Single = 2.0;
        var outlineColor:Array<Single> = [1.0, 0.0, 0.0, 1.0]; // Normalized RED color
        var textureSize:Array<Single> = [texture.width, texture.height];

        // Get shader locations
        final outlineSizeLoc:Int = GetShaderLocation(shdrOutline, "outlineSize");
        final outlineColorLoc:Int = GetShaderLocation(shdrOutline, "outlineColor");
        final textureSizeLoc:Int = GetShaderLocation(shdrOutline, "textureSize");

        // Set shader values (they can be changed later)
        SetShaderValue(shdrOutline, outlineSizeLoc, outlineSize, SHADER_UNIFORM_FLOAT);
        SetShaderValueV(shdrOutline, outlineColorLoc, outlineColor, SHADER_UNIFORM_VEC4, 1);
        SetShaderValueV(shdrOutline, textureSizeLoc, textureSize, SHADER_UNIFORM_VEC2, 1);

        SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!WindowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            outlineSize += GetMouseWheelMove();
            if (outlineSize < 1.0)
                outlineSize = 1.0;

            SetShaderValue(shdrOutline, outlineSizeLoc, outlineSize, SHADER_UNIFORM_FLOAT);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            BeginDrawing();

            ClearBackground(RAYWHITE);

            BeginShaderMode(shdrOutline);

            DrawTexture(texture, Math.floor(GetScreenWidth() / 2 - texture.width / 2), -30, WHITE);

            EndShaderMode();

            DrawText("Shader-based\ntexture\noutline", 10, 10, 20, GRAY);
            DrawText("Scroll mouse wheel to\nchange outline size", 10, 72, 20, GRAY);
            DrawText(TextFormat("Outline size: %d px", Std.int(outlineSize)), 10, 120, 20, MAROON);

            DrawFPS(710, 10);

            EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        UnloadTexture(texture);
        UnloadShader(shdrOutline);

        CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
