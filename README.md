# hxRaylib
Haxe bindings for Raylib, a simple and easy-to-use library to learn videogame programming (www.raylib.com), Currently works only for windows but feel free the expand to other platforms

###### warning: the binding is in its early stage of development so use at your own risk

# Requirements

- Haxe 4.0.0 of above.
- hxcpp (Haxe's C++ runtime) - Install it by running `haxelib install hxcpp`.
- Raylib 3.7.0 source code. - Get it from [here](https://github.com/raysan5/raylib/archive/refs/tags/3.7.0.zip).

- The following C++ tools: (you can find them in the VS Installer)
    * MSVC v142 - VS 2019 C++ x64/x86 build tools
    * Windows SDK (latest version)

# Installation

1. Clone this repository.
2. Create a folder called "lib".
3. Rename the "raylib-3.7.0" folder to just "raylib".
4. Insert the "raylib" folder into the "lib" folder. Then path should be like this: `lib -> raylib -> src`
5. To compile, run hxBuild.bat

# Example
This is a basic example of the binding which creates a basic window:

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
            DrawText("Congrats! You created your first window using hxRaylib!", 190, 200, 20, LIGHTGRAY);

            EndDrawing();
        }

        CloseWindow();
    }
}
```

# Thanks to
- **Zeta: https://github.com/Apprentice-Alchemist**
- **None4u: https://github.com/Picoseconds**
- **Ian Harrigan: https://github.com/ianharrigan**
- **Raysan: https://github.com/raysan5**
- **PolybiusProxy: https://github.com/polybiusproxy**
