package;

import cpp.RawPointer;

import raylib.Raylib.*;
import raylib.Types;

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

        InitWindow(screenWidth, screenHeight, "raylib [models] example - heightmap loading and drawing");

        // Define our custom camera to look into our 3d world
        final camera:Camera3D = new Camera3D();
        camera.position = Vector3.create(18.0, 21.0, 18.0); // Camera position
        camera.target = Vector3.create(0.0, 0.0, 0.0); // Camera looking at point
        camera.up = Vector3.create(0.0, 1.0, 0.0); // Camera up vector (rotation towards target)
        camera.fovy = 45.0; // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE; // Camera projection type

        final image:Image = LoadImage("resources/heightmap.png"); // Load heightmap image (RAM)
        final texture:Texture = LoadTextureFromImage(image); // Convert image to texture (VRAM)
        final mesh:Mesh = GenMeshHeightmap(image, Vector3.create(16, 8, 16)); // Generate heightmap mesh (RAM and VRAM)
        final model:Model = LoadModelFromMesh(mesh); // Load model from generated mesh
        model.materials[0].maps[cast MATERIAL_MAP_ALBEDO].texture = texture; // Set map diffuse texture

        UnloadImage(image); // Unload heightmap image from RAM, already uploaded to VRAM

        SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!WindowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            UpdateCamera(RawPointer.addressOf(camera), CAMERA_ORBITAL);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            BeginDrawing();

            ClearBackground(RAYWHITE);

            BeginMode3D(camera);

            DrawModel(model, Vector3.create(-8.0, 0.0, -8.0), 1.0, RED);
            DrawGrid(20, 1.0);

            EndMode3D();

            DrawTexture(texture, Math.floor(screenWidth - texture.width - 20), 20, WHITE);
            DrawRectangleLines(Math.floor(screenWidth - texture.width - 20), 20, texture.width, texture.height, GREEN);
            DrawFPS(10, 10);

            EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        UnloadTexture(texture); // Unload texture
        UnloadModel(model); // Unload model

        CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
