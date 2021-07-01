<p align="center">
	<img src="res/logo.png" alt="Raylib Logo">
</p>

[Haxe](https://haxe.org/) bindings for [raylib](https://raylib.com), a simple and easy-to-use library to learn videogame programming, Currently works only for windows but feel free the expand to other platforms.
This binding is worked on by two people but if you want to work on the binding feel free to add the feature and make a pull request.

> Warning! The binding is in its early stage of development and may change at any moment, please use at your own risk

Requirements
-------------
- Haxe 4.0.0 or above
- Hxcpp (Haxe's C++ runtime) which you can install by using `haxelib insall hxcpp`
- MSVC v142 - VS 2019 C++ x64/x86 build tools for Windows
- (Windows only) Windows 10 SDK

Installation
-------------
1. Clone this repository
2. This repo can be used as a template
3. To compile: `haxe build.hxml`

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
hxraylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified, BSD-like license that allows static linking with closed source software. Check [LICENSE](LICENSE.md) for further details.

Thanks to:
----------
- **[Zeta](https://github.com/Apprentice-Alchemist)**
- **[None4u](https://github.com/Picoseconds)**
- **[Ian Harrigan](https://github.com/ianharrigan)**
- **[Raysan](https://github.com/raysan5)**
