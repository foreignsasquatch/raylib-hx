<p align="center">
	<img src="assets/logo.png" alt="Raylib Logo">
</p>

[Haxe](https://haxe.org/) bindings for [raylib](https://raylib.com), a simple and easy-to-use library to learn videogame programming, Currently works only for windows but feel free the expand to other platforms

> Warning! The binding is in its early stage of development and may change at any moment, please use at your own risk

Requirements
-------------
- Haxe 4.0.0 or above
- Hxcpp
- Visual studio 2019 or build tools for vs2019

Installation
-------------
- Clone this repository
- You also need the raylib source files in the format `lib/raylib/src`
- This repo can be used as a template 
-  To compile: `haxe -cp src -cpp your output dir -main Main`

Example
--------
This is a basic example of the binding which creates a window
```haxe
import Raylib.*;
import Raylib.Colors.*;

class Main
{
    static function main()
    {
        InitWindow(800, 450, "hxRaylib");

        while (!WindowShouldClose())
        {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("Congrats! You created your first window using hxRaylib!", 100, 100, 20, RAYWHITE);
            EndDrawing();
        }

        CloseWindow();
    }
}
```

License
-------
raylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified, BSD-like license that allows static linking with closed source software. Check [LICENSE](LICENSE) for further details.

Thanks to:
----------
- **[Zeta](https://github.com/Apprentice-Alchemist)**
- **[None4u](https://github.com/Picoseconds)**
- **[Ian Harrigan](https://github.com/ianharrigan)**
- **[Raysan](https://github.com/raysan5)**
