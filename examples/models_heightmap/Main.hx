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

        Raylib.InitWindow(screenWidth, screenHeight, "raylib [models] example - heightmap loading and drawing");

        // Define our custom camera to look into our 3d world
        final camera:Camera3D = new Camera3D();
        camera.position = new Vector3(18.0, 21.0, 18.0); // Camera position
        camera.target = new Vector3(0.0, 0.0, 0.0); // Camera looking at point
        camera.up = new Vector3(0.0, 1.0, 0.0); // Camera up vector (rotation towards target)
        camera.fovy = 45.0; // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE; // Camera projection type

        final image:Image = Raylib.LoadImage("resources/heightmap.png"); // Load heightmap image (RAM)
        final texture:Texture = Raylib.LoadTextureFromImage(image); // Convert image to texture (VRAM)

        final mesh:Mesh = Raylib.genMeshHeightmap(image, new Vector3(16, 8, 16)); // Generate heightmap mesh (RAM and VRAM)
        final model:Model = Raylib.LoadModelFromMesh(mesh); // Load model from generated mesh
        model.materials[0].maps[untyped MATERIAL_MAP_ALBEDO].texture = texture; // Set map diffuse texture

        final mapPosition:Vector3 = new Vector3(-8.0, 0.0, -8.0); // Define model position

        Raylib.UnloadImage(image); // Unload heightmap image from RAM, already uploaded to VRAM

        Raylib.SetTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            Raylib.UpdateCamera(camera, CAMERA_ORBITAL);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.BeginDrawing();

            Raylib.ClearBackground(Raylib.RAYWHITE);

            Raylib.BeginMode3D(camera);

            Raylib.DrawModel(model, mapPosition, 1.0, Raylib.RED);
            Raylib.DrawGrid(20, 1.0);

            Raylib.EndMode3D();

            Raylib.DrawTexture(texture, Math.floor(screenWidth - texture.width - 20), 20, Raylib.WHITE);
            Raylib.DrawRectangleLines(Math.floor(screenWidth - texture.width - 20), 20, texture.width, texture.height, Raylib.GREEN);
            Raylib.DrawFPS(10, 10);

            Raylib.EndDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.UnloadTexture(texture); // Unload texture
        Raylib.UnloadModel(model); // Unload model

        Raylib.CloseWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
