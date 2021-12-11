<p align="center">
	<img src="assets/logo.png" alt="Raylib Logo">
</p>

[Haxe](https://haxe.org/) bindings for [raylib](https://raylib.com), a simple and easy-to-use library to learn videogame programming.
If you want to work on the binding feel free to fork and make a pull request.

Haxe to JS port
---------------
A port of the original raylib library is being developed.

### Why?
- Faster compilation times.
- No emscripten toolchain required to port your game for the web.
- Since the appropriate classes are exposed from Haxe, it's possible to
use the exposed data structures from JavaScript directly or other languages
that compile to JavaScript (excluding Haxe).

Requirements
-------------
- Haxe 4.0.0 or above
- (Windows only) MSVC v142 - VS 2019 C++ x64/x86 build tools
- (Windows only) Windows 10 SDK

Installation
-------------
To install hxRaylib just run ``haxelib install hxRaylib``.

Usage
------
In your project make a ``Build.hxml`` file with the following:
```
-cp src
-cpp bin
-lib hxRaylib
-main Main
# Uncomment for the platform
#-D mac
#-D windows
#-D linux
```
Put a ``Main.hx`` file in the **src/** directory with your Main class such as the example below.

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
                DrawText("Congrats! You created your first window using hxRaylib!", 100, 100, 20, BLACK);
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
