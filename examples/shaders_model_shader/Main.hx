package;

import cpp.RawPointer;

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

        SetConfigFlags(FLAG_MSAA_4X_HINT); // Enable Multi Sampling Anti Aliasing 4x (if available)

        InitWindow(screenWidth, screenHeight, "raylib [shaders] example - model shader");

        // Define the camera to look into our 3d world
        final camera:Camera3D = new Camera3D();
        camera.position = Vector3.create(4.0, 4.0, 4.0); // Camera position
        camera.target = Vector3.create(0.0, 1.0, -1.0); // Camera looking at point
        camera.up = Vector3.create(0.0, 1.0, 0.0); // Camera up vector (rotation towards target)
        camera.fovy = 45.0; // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE; // Camera projection type

        final model:Model = LoadModel("resources/watermill.obj"); // Load OBJ model
        final texture:Texture = LoadTexture("resources/watermill_diffuse.png"); // Load model texture

        // Load shader for model
        // NOTE: Defining 0 (null) for vertex shader forces usage of internal default vertex shader
        final shader:Shader = LoadShader(null, "resources/shaders/glsl" + GLSL_VERSION + "/grayscale.fs");

        model.materials[0].shader = shader; // Set shader effect to 3d model
        model.materials[0].maps[cast MATERIAL_MAP_ALBEDO].texture = texture; // Bind texture to model

        final position:Vector3 = Vector3.create(0, 0, 0); // Set model position

        DisableCursor(); // Limit cursor to relative movement inside the window
        SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!WindowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            UpdateCamera(RawPointer.addressOf(camera), CAMERA_FREE);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            BeginDrawing();

            ClearBackground(RAYWHITE);

            BeginMode3D(camera);

            DrawModel(model, position, 0.2, WHITE); // Draw 3d model with texture

            DrawGrid(10, 1.0);

            EndMode3D();

            DrawText("(c) Watermill 3D model by Alberto Cano", screenWidth - 210, screenHeight - 20, 10, GRAY);

            DrawFPS(10, 10);

            EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        UnloadShader(shader); // Unload shader
        UnloadTexture(texture); // Unload texture
        UnloadModel(model); // Unload model

        CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
