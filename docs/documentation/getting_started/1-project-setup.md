---
title: Project Setup
---
It is now time to make a hxRaylib project! The layout of this tutorial will end up looking like this.
```text
- project_name
	- Build.hxml
	- src
		Main.hx
```
## 1.) Create a directory
We will need a folder to hold all the neccessary files for your project. Create a directoroy with the name of your project. Put it in an appropriate spot and in your terminal of choice go to that directory.

## 2.) Create a .hxml file
Haxe conveniently comes with a format to put compiler arguments and libraries which can be easily run called ``hxml``. Create a file in your project labeled ``Build.hxml``, while technically it could be named anything with a ``.hxml`` suffix, we suggest using Build as a standard. Put the following into that file.
```text
-cp src
-cpp bin
-lib hxRaylib
-main Main
```
Depending on your host operating system you will need to add either ``-D windows``, ``-D mac`` or ``-D linux`` to your hxml.

## 3.) Create a source file
This process is pretty self explanatory, create a directory with the title ``src``. Create a file in the ``src`` directory called ``Main.hx``. This is case sensitive! Put the following into that file.
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
