# hxRaylib
Haxe bindings for Raylib, a simple and easy-to-use library to learn videogame programming (www.raylib.com), Currently works only for windows but feel free the expand to other platforms

###### warning: the binding is in its early stage of development so use at your own risk

# Requirements
- Haxe
- hxcpp
- Visual studio 2019 or build tools for vs2019

# Installation
- Clone this repository
- You also need the raylib source files in the format `lib -> raylib -> src`
- This repo can be used as a template 
-  To compile: `haxe -cp src -cpp your output dir -main Main`

# Example
this is a basic example of the binding which creates a window
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

# Thanks to
- **Zeta: https://github.com/Apprentice-Alchemist**
- **None4u:https://github.com/Picoseconds**
- **Ian Harrigan: https://github.com/ianharrigan**
- **Raysan: https://github.com/raysan5**
