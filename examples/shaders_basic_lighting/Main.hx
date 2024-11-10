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
        final lights:Array<LightReference> = [];

        final yellowLight:Light = RLights.createLight(LIGHT_POINT, new Vector3(-2, 1, -2), Raymath.vector3Zero(), Raylib.YELLOW, shader);
        lights.push(yellowLight);

        final yellowRed:Light = RLights.createLight(LIGHT_POINT, new Vector3(2, 1, 2), Raymath.vector3Zero(), Raylib.RED, shader);
        lights.push(yellowRed);

        final yellowGreen:Light = RLights.createLight(LIGHT_POINT, new Vector3(-2, 1, 2), Raymath.vector3Zero(), Raylib.GREEN, shader);
        lights.push(yellowGreen);

        final yellowBlue:Light = RLights.createLight(LIGHT_POINT, new Vector3(2, 1, -2), Raymath.vector3Zero(), Raylib.BLUE, shader);
        lights.push(yellowBlue);

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
            {
                lights[0].enabled = !lights[0].enabled;
            }

            if (Raylib.isKeyPressed(KEY_R))
            {
                lights[1].enabled = !lights[1].enabled;
            }

            if (Raylib.isKeyPressed(KEY_G))
            {
                lights[2].enabled = !lights[2].enabled;
            }

            if (Raylib.isKeyPressed(KEY_B))
            {
                lights[3].enabled = !lights[3].enabled;
            }

            // Update light values (actually, only enable/disable them)
            for (i in 0...lights.length)
                RLights.updateLightValues(shader, lights[i]);
            //----------------------------------------------------------------------------------

            // Draw
            //----------------------------------------------------------------------------------
            Raylib.beginDrawing();

            Raylib.clearBackground(Raylib.RAYWHITE);

            Raylib.beginMode3D(camera);

            Raylib.drawModel(model, Raymath.vector3Zero(), 1.0, Raylib.WHITE);
            Raylib.drawModel(cube, Raymath.vector3Zero(), 1.0, Raylib.WHITE);

            // Draw spheres to show where the lights are
            for (i in 0...lights.length)
            {
                if (lights[i].enabled)
                    Raylib.drawSphereEx(lights[i].position, 0.2, 8, 8, lights[i].color);
                else
                    Raylib.drawSphereWires(lights[i].position, 0.2, 8, 8, Raylib.colorAlpha(lights[i].color, 0.3));
            }

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
