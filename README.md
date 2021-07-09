<p align="center">
	<img src="res/logo.png" alt="Raylib Logo">
</p>

[Haxe](https://haxe.org/) bindings for [raylib](https://raylib.com), a simple and easy-to-use library to learn videogame programming, Currently works only for windows but feel free the expand to other platforms.
This binding is worked on by two people, but if you want to work on the binding feel free to add the feature and make a pull request.

> Warning! The binding is in its early stage of development and may change at any moment, please use at your own risk

Requirements
-------------
- Haxe 4.0.0 or above
- If you are on windows:
 	- MSVC v142 - VS 2019 C++ x64/x86 build tools
	- Windows 10 SDK

Installation
-------------
To install hxRaylib just run ``haxelib git hxRaylib https://github.com/ForeignSasquatch/hxRaylib``.

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
