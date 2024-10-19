package;

import Raylib;
import Raymath;
import RLights;

class Main
{
    #if PLATFORM_DESKTOP
    private static var GLSL_VERSION:Int = 330;
    #else // PLATFORM_ANDROID, PLATFORM_WEB
    private static var GLSL_VERSION:Int = 100;
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

        Raylib.setConfigFlags(FLAG_MSAA_4X_HINT); // Enable Multi Sampling Anti Aliasing 4x (if available)
        Raylib.initWindow(screenWidth, screenHeight, "raylib [shaders] example - basic lighting");

        final camera:Camera3D = new Camera3D();
        camera.position = new Vector3(2.0, 4.0, 6.0); // Camera position
        camera.target = new Vector3(0.0, 0.5, 0.0); // Camera looking at point
        camera.up = new Vector3(0.0, 1.0, 0.0); // Camera up vector (rotation towards target)
        camera.fovy = 45.0; // Camera field-of-view Y
        camera.projection = CAMERA_PERSPECTIVE; // Camera projection type

        // Load plane model from a generated mesh
        final model:Model = Raylib.loadModelFromMesh(Raylib.genMeshPlane(10.0, 10.0, 3, 3));
        final cube:Model = Raylib.loadModelFromMesh(Raylib.genMeshCube(2.0, 4.0, 2.0));

        // Load basic lighting shader
        final shader:Shader = Raylib.loadShader(Raylib.textFormat("resources/glsl%i/lighting.vs", GLSL_VERSION),
            Raylib.textFormat("resources/glsl%i/lighting.fs", GLSL_VERSION));

        // Get some required shader locations
        shader.locs[untyped SHADER_LOC_VECTOR_VIEW] = Raylib.getShaderLocation(shader, "viewPos");

        // Ambient light level (some basic lighting)
        Raylib.setShaderValue(shader, Raylib.getShaderLocation(shader, "ambient"), cast utils.FloatConstPointer.fromArray([0.1, 0.1, 0.1, 1.0]),
            SHADER_UNIFORM_VEC4);

        // Assign out lighting shader to model
        model.materials[0].shader = shader;
        cube.materials[0].shader = shader;

        // Create lights
        var light1:Light = RLights.createLight(LIGHT_POINT, new Vector3(-2, 1, -2), Raymath.vector3Zero(), Raylib.YELLOW, shader);
        var light2:Light = RLights.createLight(LIGHT_POINT, new Vector3(2, 1, 2), Raymath.vector3Zero(), Raylib.RED, shader);
        var light3:Light = RLights.createLight(LIGHT_POINT, new Vector3(-2, 1, 2), Raymath.vector3Zero(), Raylib.GREEN, shader);
        var light4:Light = RLights.createLight(LIGHT_POINT, new Vector3(2, 1, -2), Raymath.vector3Zero(), Raylib.BLUE, shader);

        Raylib.setTargetFPS(60); // Set our game to run at 60 frames-per-second
        //--------------------------------------------------------------------------------------

        // Main game loop
        while (!Raylib.windowShouldClose()) // Detect window close button or ESC key
        {
            // Update
            //----------------------------------------------------------------------------------
            Raylib.updateCamera(camera, CAMERA_ORBITAL);

            // Update the shader with the camera view vector (points towards { 0.0f, 0.0f, 0.0f })
            Raylib.setShaderValue(shader, shader.locs[untyped SHADER_LOC_VECTOR_VIEW],
                cast utils.FloatConstPointer.fromArray([camera.position.x, camera.position.y, camera.position.z]), SHADER_UNIFORM_VEC3);

            // Check key inputs to enable/disable lights
            if (Raylib.isKeyPressed(KEY_Y))
                light1.enabled = !light1.enabled;

            if (Raylib.isKeyPressed(KEY_R))
                light2.enabled = !light2.enabled;

            if (Raylib.isKeyPressed(KEY_G))
                light3.enabled = !light3.enabled;

            if (Raylib.isKeyPressed(KEY_B))
                light4.enabled = !light4.enabled;

            // Update light values (actually, only enable/disable them)
            //for (i in 0...lights.length)
            RLights.updateLightValues(shader, light1);
            RLights.updateLightValues(shader, light2);
            RLights.updateLightValues(shader, light3);
            RLights.updateLightValues(shader, light4);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();

            Raylib.clearBackground(Raylib.RAYWHITE);

            Raylib.beginMode3D(camera);

            Raylib.drawModel(model, Raymath.vector3Zero(), 1.0, Raylib.WHITE);
            Raylib.drawModel(cube, Raymath.vector3Zero(), 1.0, Raylib.WHITE);

            // Draw spheres to show where the lights are
            // for (i in 0...lights.length)
            //{
                if (light1.enabled)
                    Raylib.drawSphereEx(light1.position, 0.2, 8, 8, light1.color);
                else
                    Raylib.drawSphereWires(light1.position, 0.2, 8, 8, Raylib.colorAlpha(light1.color, 0.3));

                if (light2.enabled)
                    Raylib.drawSphereEx(light2.position, 0.2, 8, 8, light2.color);
                else
                    Raylib.drawSphereWires(light2.position, 0.2, 8, 8, Raylib.colorAlpha(light2.color, 0.3));

                if (light3.enabled)
                    Raylib.drawSphereEx(light3.position, 0.2, 8, 8, light3.color);
                else
                    Raylib.drawSphereWires(light3.position, 0.2, 8, 8, Raylib.colorAlpha(light3.color, 0.3));

                if (light4.enabled)
                    Raylib.drawSphereEx(light4.position, 0.2, 8, 8, light4.color);
                else
                    Raylib.drawSphereWires(light4.position, 0.2, 8, 8, Raylib.colorAlpha(light4.color, 0.3));
            //}

            Raylib.drawGrid(10, 1.0);

            Raylib.endMode3D();

            Raylib.drawFPS(10, 10);

            Raylib.drawText("Use keys [Y][R][G][B] to toggle lights", 10, 40, 20, Raylib.DARKGRAY);

            Raylib.endDrawing();
            //----------------------------------------------------------------------------------
        }

        // De-Initialization
        //--------------------------------------------------------------------------------------
        Raylib.unloadModel(model); // Unload the model
        Raylib.unloadModel(cube); // Unload the model
        Raylib.unloadShader(shader); // Unload shader

        Raylib.closeWindow(); // Close window and OpenGL context
        //--------------------------------------------------------------------------------------
    }
}
