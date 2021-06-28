/**********************************************************************************************
*
*   hxRaylib - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
*   WARNING: this library is in its early staeges of development so most features are not complete or do not work
*
*   TODO: Complete all the features
*   FEATURES:
*       - NO external dependencies, all required libraries included with raylib
*       - Multiplatform: Currently only windows, MacOS and linux support will be added soon
*       - Written in Haxe
*       - Hardware accelerated with OpenGL (1.1, 2.1, 3.3 or ES2 - choose at compile)
*       - Unique OpenGL abstraction layer (usable as standalone module): [rlgl]
*       - Multiple Fonts formats supported (TTF, XNA fonts, AngelCode fonts)
*       - Outstanding texture formats support, including compressed formats (DXT, ETC, ASTC)
*       - Full 3d support for 3d Shapes, Models, Billboards, Heightmaps and more!
*       - Flexible Materials system, supporting classic maps and PBR maps
*       - Animated 3D models supported (skeletal bones animation) (IQM, glTF)
*       - Shaders support, including Model shaders and Postprocessing shaders
*       - Powerful math module for Vector, Matrix and Quaternion operations: [raymath]
*       - Audio loading and playing with streaming support (WAV, OGG, MP3, FLAC, XM, MOD)
*       - VR stereo rendering with configurable HMD device parameters
*
*   LICENSE: zlib/libpng
*
*   raylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
*   BSD-like license that allows static linking with closed source software:
*
*   Copyright (c) 2021 Ratul Krisna (@ForeignSasquatch)
*
*   This software is provided "as-is", without any express or implied warranty. In no event
*   will the authors be held liable for any damages arising from the use of this software.
*
*   Permission is granted to anyone to use this software for any purpose, including commercial
*   applications, and to alter it and redistribute it freely, subject to the following restrictions:
*
*     1. The origin of this software must not be misrepresented; you must not claim that you
*     wrote the original software. If you use this software in a product, an acknowledgment
*     in the product documentation would be appreciated but is not required.
*
*     2. Altered source versions must be plainly marked as such, and must not be misrepresented
*     as being the original software.
*
*     3. This notice may not be removed or altered from any source distribution.
*
**********************************************************************************************/
package;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='../raylib.xml'/>")
@:include("raylib.h")
extern class Raylib
{
    @:native("InitWindow")              public static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose")       public static function WindowShouldClose():Bool;
    @:native("CloseWindow")             public static function CloseWindow():Bool;
    
    @:native("SetTargetFPS")            public static function SetTargetFPS(fps:Int):Void;
    @:native("BeginDrawing")            public static function BeginDrawing():Void;
    @:native("EndDrawing")              public static function EndDrawing():Void;
    
    @:native("ClearBackground")         public static function ClearBackground(color:Color):Void;
    @:native("DrawText")                public static function DrawText(text:ConstCharStar, x:Int, y:Int, fontSize:Int, color:Color):Void;
    @:native("MeasureText")             public static function MeasureText(text:ConstCharStar, fontSize:Int):Int;
    
    @:native("SetCameraMode")           public static function SetCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera")            public static function UpdateCamera(camera:RawPointer<Camera>):Void;
    
    @:native("GetWorldToScreen")        public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    
    @:native("BeginMode3D")             public static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D")               public static function EndMode3D():Void;
    
    @:native("DrawCube")                public static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeWires")           public static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawGrid")                public static function DrawGrid(slices:Int, spacing:Int):Void;
    @:native("LoadImage")               public static function LoadImage(fileName:cpp.ConstCharStar):Image;
    @:native("UnloadImage")             public static function UnloadImage(image:Image):Void;
    @:native("LoadTexture")             public static function LoadTexture(fileName:cpp.ConstCharStar):Texture2D;
    @:native("LoadTextureFromImage")    public static function LoadTextureFromImage(image:Image):Texture2D;
    @:native("UnloadTexture")           public static function UnloadTexture(texture:Texture2D):Void;
    @:native("DrawTexture")             public static function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;
}

@:include("raylib.h")
extern class Colors
{
    // Basic colors (colours)
    @:native("LIGHTGRAY")   public static var LIGHTGRAY:Color;  // Light Gray
    @:native("GRAY")        public static var GRAY:Color;       // Gray
    @:native("DARKGRAY")    public static var DARKGRAY:Color;   // Dark Gray
    @:native("YELLOW")      public static var YELLOW:Color;     // Yellow
    @:native("GOLD")        public static var GOLD:Color;       // Gold
    @:native("ORANGE")      public static var ORANGE:Color;     // Orange
    @:native("PINK")        public static var PINK:Color;       // Pink
    @:native("RED")         public static var RED:Color;        // Red
    @:native("MAROON")      public static var MAROON:Color;     // Maroon
    @:native("GREEN")       public static var GREEN:Color;      // Green
    @:native("LIME")        public static var LIME:Color;       // Lime
    @:native("DARKGREEN")   public static var DARKGREEN:Color;  // Dark Green
    @:native("SKYBLUE")     public static var SKYBLUE:Color;    // Sky Blue
    @:native("BLUE")        public static var BLUE:Color;       // Blue
    @:native("DARKBLUE")    public static var DARKBLUE:Color;   // Dark Blue
    @:native("PURPLE")      public static var PURPLE:Color;     // Purple
    @:native("VIOLET")      public static var VIOLET:Color;     // Violet
    @:native("DARKPURPLE")  public static var DARKPURPLE:Color; // Dark Purple
    @:native("BEIGE")       public static var BEIGE:Color;      // Beige
    @:native("BROWN")       public static var BROWN:Color;      // Brown
    @:native("DARKBROWN")   public static var DARKBROWN:Color;  // Dark Brown

    @:native("WHITE")       public static var WHITE:Color;      // White
    @:native("BLACK")       public static var BLACK:Color;      // Black
    @:native("BLANK")       public static var BLANK:Color;      // Blank (Transparent)
    @:native("MAGENTA")     public static var MAGENTA:Color;    // Magenta
    @:native("RAYWHITE")    public static var RAYWHITE:Color;   // Raysan's white (raylib logo)
}

// Vector2, 2 components
@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2
{
    var x:Float;    // Vector x component
    var y:Float;    //Vector y component

// Create vector2
    public static inline function create(x:Float, y:Float):Vector2
    {
        return untyped __cpp__("{ (float){0}, (float){1} }", x, y);
    }
}

// Vector3, 3 components
@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern class Vector3
{
    var x:Float;    // Vector x component
    var y:Float;    // Vector y component
    var z:Float;    //Vector z component

//Create vector 3
    public static inline function create(x:Float, y:Float, z:Float):Vector3
    {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
    }
}

// Vector4, 4 components
@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern class Vector4
{
    var x:Float;    // Vector x component
    var y:Float;    //Vector y component
    var z:Float;    //Vector z component
    var w:Float;    //Vector w component
}

// Quaternion, 4 components (Vector4 alias)
typedef Quaternion = Vector4;

//TODO: Complete matrix
// @:include("Raylib")
// @:native("Matrix")
// @:structAccess
// extern class Matrix
// {
// }

// Color (Colour), 4 components, R8G8B8A8 (32 bit)
@:include("raylib.h")
@:native("Color")
extern class Color
{
    var r:Int;      // Color red value
    var g:Int;      // Color green value
    var b:Int;      // Color blue value
    var a:Int;      // Color alpha value
}

// Rectangle, 4 components
@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern class Rectangle
{
    var x:Float;    // Rectangle top-left corner position x
    var y:Float;    // Rectangle top-left corner position y
    var w:Float;    // Rectangle width
    var h:Float;    // Rectangle height
}

// Image, pixel data stored in CPU memory (Ram)
@:include("raylib.h")
@:native("Image")
@:structAccess
extern class Image
{
    var data:cpp.RawPointer<cpp.Void>;      // Image raw data
    var width:Int;  // Image base width
    var height:Int; // Image base height
    var mipmaps:Int; // Mipmap levels, 1 by default
    var format:Int; // Data format (PixelFormat type)
}

// Texture, tex data stored in GPU memory (VRAM)
@:include("raylib.h")
@:native("Texture")
@:structAccess
@:unreflective
extern class Texture
{
    var id:UInt; // OpenGL texture id
    var width:Int;  // Texture base width
    var height:Int; // Texture base height
    var mipmaps:Int; // Mipmap levels, 1 by deafult
    var format:Int; //Data format (PixelFormat type)
}

// Texture2D, same as Texture
typedef Texture2D = Texture;

// TextureCubemap, same as Texture
typedef TextureCubemap = Texture;

//RenderTexture, fbo for texture rendering
@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RenderTexture
{
    var id:UInt;            // OpenGL framebuffer object id
    var texture:Texture;    // Color buffer attachment texture
    var depth:Texture;      // Depth buffer attachment texture
}

// RenderTexture2D, same as RenderTexture;
typedef RenderTexture2D =  RenderTexture;

// NPatchInfo, n-patch layout info
@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern class NPatchInfo
{
    var source:Rectangle;   // Texture source rectangle
    var left:Int;           // Left border offset
    var top:Int;            // Top border offset
    var right:Int;          // Right border offset
    var bottom:Int;         // Bottom border offeset
    var layout:Int;         // Layout of n-patch: 3x3, 1x3 or 3x1
}

// CharInfo, for font character info
@:include("raylib.h")
@:native("CharInfo")
@:structAccess
extern class CharInfo
{
    var value:Int;          // Character value (Unicode)
    var offsetX:Int;        // Character offset X when drawing
    var offsetY:Int;        // Character offset Y when drawing
    var advanceX:Int;       // Charcter advance position X
    var image:Image;        // Character image data
}

// Font, font texture and CharInfo array data
@:include("raylib.h")
@:native("Font")
@:structAccess
extern class Font
{
    var baseSize:Int;       // Base size (default chars height)
    var charsCount:Int;     // Number of characters 
    var charsPadding:Int;   // Padding around the chars 
    var texture:Texture2D;  // Characters texture atlas
    var recs:RawPointer<Rectangle>;    // Character rectabgle in texture
    var chars:RawPointer<CharInfo>;    // Charcter info data
}

// Camera, defines positon/oreientation in 3d space
@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D
{
    var position:Vector3;  // Camera position
    var target:Vector3;    // Camera target it looks-at
    var up:Vector3;        // Camera up vector (rotation over its axis)
    var fovy:Float;        // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
    var projection:Int;    // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC

    public static inline function create():Camera
    {
        return untyped __cpp__("{ 0 }");
    }
}

typedef Camera = Camera3D; // Camera type fallback, defaults to Camera3D

// Camera2D, defines position/orientation in 2d space
@:include("raylib.h")
@:native("Camera2D")
@:structAccess
extern class Camera2D
{
    var offset:Vector2;   // Camera offset (displacement from target)
    var target:Vector2;   // Camera target (rotation and zoom origin)
    var rotation:Float;   // Camera rotation in degrees
    var zoom:Float;       // Camera zoom (scaling), should be 1.0f by default

    public static inline function create():Camera
    {
        return untyped __cpp__("{ 0 }");
    }
}

@:include("raylib.h")
extern class CameraProjections
{
    @:native("CAMERA_PERSPECTIVE")      public static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")     public static var CAMERA_ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern class CameraModes
{
    @:native("CAMERA_CUSTOM")           public static var CAMERA_CUSTOM:Int;
    @:native("CAMERA_FREE")             public static var CAMERA_FREE:Int;
    @:native("CAMERA_ORBITAL")          public static var CAMERA_ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")     public static var CAMERA_FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")     public static var CAMERA_THIRD_PERSON:Int;
}