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

//Keyboard keys (US keyboard layout)
//NOTE: Use GetKeyPressed() to allow redefining
//required keys for alternative layouts
@:include("raylib.h")
extern enum abstract KeyboardKey(UInt)
{
    @:native("KEY_APOSTROPHE")
    var KEY_APOSTROPHE;

    @:native("KEY_COMMA")
    var KEY_COMMA;

    @:native("KEY_MINUS")
    var KEY_MINUS;

    @:native("KEY_PERIOD")
    var KEY_PERIOD;

    @:native("KEY_SLASH")
    var KEY_SLASH;

    @:native("KEY_ZERO")
    var KEY_ZERO;

    @:native("KEY_ONE")
    var KEY_ONE;

    @:native("KEY_TWO")
    var KEY_TWO;

    @:native("KEY_THREE")
    var KEY_THREE;

    @:native("KEY_FOUR")
    var KEY_FOUR;

    @:native("KEY_FIVE")
    var KEY_FIVE;

    @:native("KEY_SIX")
    var KEY_SIX;

    @:native("KEY_SEVEN")
    var KEY_SEVEN;

    @:native("KEY_EIGHT")
    var KEY_EIGHT;

    @:native("KEY_NINE")
    var KEY_NINE;

    @:native("KEY_SEMICOLON")
    var KEY_SEMICOLON;

    @:native("KEY_EQUAL")
    var KEY_EQUAL;

    @:native("KEY_A")
    var KEY_A;

    @:native("KEY_B")
    var KEY_B;

    @:native("KEY_C")
    var KEY_C;

    @:native("KEY_D")
    var KEY_D;

    @:native("KEY_E")
    var KEY_E;

    @:native("KEY_F")
    var KEY_F;

    @:native("KEY_G")
    var KEY_G;

    @:native("KEY_H")
    var KEY_H;

    @:native("KEY_I")
    var KEY_I;

    @:native("KEY_J")
    var KEY_J;

    @:native("KEY_K")
    var KEY_K;

    @:native("KEY_L")
    var KEY_L;

    @:native("KEY_M")
    var KEY_M;

    @:native("KEY_N")
    var KEY_N;

    @:native("KEY_O")
    var KEY_O;

    @:native("KEY_P")
    var KEY_P;

    @:native("KEY_Q")
    var KEY_Q;

    @:native("KEY_R")
    var KEY_R;

    @:native("KEY_S")
    var KEY_S;

    @:native("KEY_T")
    var KEY_T;

    @:native("KEY_U")
    var KEY_U;

    @:native("KEY_V")
    var KEY_V;

    @:native("KEY_W")
    var KEY_W;

    @:native("KEY_X")
    var KEY_X;

    @:native("KEY_Y")
    var KEY_Y;

    @:native("KEY_Z")
    var KEY_Z;

    @:native("KEY_SPACE")
    var KEY_SPACE;

    @:native("KEY_ESCAPE")
    var KEY_ESCAPE;

    @:native("KEY_ENTER")
    var KEY_ENTER;

    @:native("KEY_TAB")
    var KEY_TAB;

    @:native("KEY_BACKSPACE")
    var KEY_BACKSPACE;

    @:native("KEY_INSERT")
    var KEY_INSERT;

    @:native("KEY_DELETE")
    var KEY_DELETE;

    @:native("KEY_RIGHT")
    var KEY_RIGHT;

    @:native("KEY_LEFT")
    var KEY_LEFT;

    @:native("KEY_DOWN")
    var KEY_DOWN;

    @:native("KEY_UP")
    var KEY_UP;

    @:native("KEY_PAGE_UP")
    var KEY_PAGE_UP;

    @:native("KEY_PAGE_DOWN")
    var KEY_PAGE_DOWN;

    @:native("KEY_HOME")
    var KEY_HOME;

    @:native("KEY_END")
    var KEY_END;

    @:native("KEY_CAPS_LOCK")
    var KEY_CAPS_LOCK;

    @:native("KEY_SCROLL_LOCK")
    var KEY_SCROLL_LOCK;

    @:native("KEY_NUM_LOCK")
    var KEY_NUM_LOCK;

    @:native("KEY_PRINT_SCREEN")
    var KEY_PRINT_SCREEN;

    @:native("KEY_PAUSE")
    var KEY_PAUSE;

    @:native("KEY_F1")
    var KEY_F1;

    @:native("KEY_F2")
    var KEY_F2;

    @:native("KEY_F3")
    var KEY_F3;

    @:native("KEY_F4")
    var KEY_F4;

    @:native("KEY_F5")
    var KEY_F5;

    @:native("KEY_F6")
    var KEY_F6;

    @:native("KEY_F7")
    var KEY_F7;

    @:native("KEY_F8")
    var KEY_F8;

    @:native("KEY_F9")
    var KEY_F9;

    @:native("KEY_F10")
    var KEY_F10;

    @:native("KEY_F11")
    var KEY_F11;

    @:native("KEY_F12")
    var KEY_F12;

    @:native("KEY_LEFT_SHIFT")
    var KEY_LEFT_SHIFT;

    @:native("KEY_LEFT_CONTROL")
    var KEY_LEFT_CONTROL;

    @:native("KEY_LEFT_ALT")
    var KEY_LEFT_ALT;

    @:native("KEY_LEFT_SUPER")
    var KEY_LEFT_SUPER;

    @:native("KEY_RIGHT_SHIFT")
    var KEY_RIGHT_SHIFT;

    @:native("KEY_RIGHT_CONTROL")
    var KEY_RIGHT_CONTROL;

    @:native("KEY_RIGHT_ALT")
    var KEY_RIGHT_ALT;

    @:native("KEY_RIGHT_SUPER")
    var KEY_RIGHT_SUPER;

    @:native("KEY_KB_MENU")
    var KEY_KB_MENU;

    @:native("KEY_LEFT_BRACKET")
    var KEY_LEFT_BRACKET;

    @:native("KEY_BACKSLASH")
    var KEY_BACKSLASH;

    @:native("KEY_RIGHT_BRACKET")
    var KEY_RIGHT_BRACKET;

    @:native("KEY_GRAVE")
    var KEY_GRAVE;

    @:native("KEY_KP_0")
    var KEY_KP_0;

    @:native("KEY_KP_1")
    var KEY_KP_1;

    @:native("KEY_KP_2")
    var KEY_KP_2;

    @:native("KEY_KP_3")
    var KEY_KP_3;

    @:native("KEY_KP_4")
    var KEY_KP_4;

    @:native("KEY_KP_5")
    var KEY_KP_5;

    @:native("KEY_KP_6")
    var KEY_KP_6;

    @:native("KEY_KP_7")
    var KEY_KP_7;

    @:native("KEY_KP_8")
    var KEY_KP_8;

    @:native("KEY_KP_9")
    var KEY_KP_9;

    @:native("KEY_KP_DECIMAL")
    var KEY_KP_DECIMAL;

    @:native("KEY_KP_DIVIDE")
    var KEY_KP_DIVIDE;

    @:native("KEY_KP_MULTIPLY")
    var KEY_KP_MULTIPLY;

    @:native("KEY_KP_SUBTRACT")
    var KEY_KP_SUBTRACT;

    @:native("KEY_KP_ADD")
    var KEY_KP_ADD;

    @:native("KEY_KP_ENTER")
    var KEY_KP_ENTER;

    @:native("KEY_KP_EQUAL")
    var KEY_KP_EQUAL;
}

// Mouse buttons
@:include("raylib.h")
extern enum abstract MouseButton(UInt)
{
    @:native("MOUSE_BUTTON_LEFT")
    var MOUSE_BUTTON_LEFT;

    @:native("MOUSE_BUTTON_RIGHT")
    var MOUSE_BUTTON_RIGHT;

    @:native("MOUSE_BUTTON_MIDDLE")
    var MOUSE_BUTTON_MIDDLE;

    @:native("MOUSE_BUTTON_SIDE")
    var MOUSE_BUTTON_SIDE;

    @:native("MOUSE_BUTTON_EXTRA")
    var MOUSE_BUTTON_EXTRA;

    @:native("MOUSE_BUTTON_FORWARD")
    var MOUSE_BUTTON_FORWARD;

    @:native("MOUSE_BUTTON_BACK")
    var MOUSE_BUTTON_BACK;
}

// Mouse cursor
@:include("raylib.h")
extern enum abstract MouseCursor(UInt)
{
    @:native("MOUSE_CURSOR_DEFAULT")
    var MOUSE_CURSOR_DEFAULT;

    @:native("MOUSE_CURSOR_ARROW")
    var MOUSE_CURSOR_ARROW;

    @:native("MOUSE_CURSOR_IBEAM")
    var MOUSE_CURSOR_IBEAM;

    @:native("MOUSE_CURSOR_CROSSHAIR")
    var MOUSE_CURSOR_CROSSHAIR;

    @:native("MOUSE_CURSOR_POINTING_HAND")
    var MOUSE_CURSOR_POINTING_HAND;

    @:native("MOUSE_CURSOR_RESIZE_EW")      // The horizontal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_EW;

    @:native("MOUSE_CURSOR_RESIZE_NS")      // The vertical resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NS;

    @:native("MOUSE_CURSOR_RESIZE_NWSE")    // The top-left to bottom-right diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NWSE;

    @:native("MOUSE_CURSOR_RESIZE_NESW")    // The top-right to bottom-left diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NESW;

    @:native("MOUSE_CURSOR_RESIZE_ALL")     // The omni-directional resize/move cursor shape
    var MOUSE_CURSOR_RESIZE_ALL;

    @:native("MOUSE_CURSOR_NOT_ALLOWED")    // The operation-not-allowed shape
    var MOUSE_CURSOR_NOT_ALLOWED;
}

// Gamepad buttons
@:include("raylib.h")
extern enum abstract GamepadButton(UInt)
{
    // This is here just for error checking
    @:native("GAMEPAD_BUTTON_UNKOWN")
    var GAMEPAD_BUTTON_UNKNOWN;

    // This is normally a DPAD
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")
    var GAMEPAD_BUTTON_LEFT_FACE_UP;

    @:native("GAMEPAD_BUTTON_FACE_RIGHT")
    var GAMEPAD_BUTTON_FACE_RIGHT;

    @:native("GAMEPAD_BUTTON_FACE_DOWN")
    var GAMEPAD_BUTTON_FACE_DOWN;

    @:native("GAMEPAD_BUTTON_FACE_LEFT")
    var GAMEPAD_BUTTON_FACE_LEFT;

    // This normally corresponds with PlayStation and Xbox controllers
    // XBOX: [Y,X,A,B]
    // PS3: [Triangle,Square,Cross,Circle]
    // No support for 6 button controllers though..
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")
    var GAMEPAD_BUTTON_RIGHT_FACE_UP;

    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")
    var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;

    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")
    var GAMEPAD_BUTTON_RIGHT_FACE_DOWN;

    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")
    var GAMEPAD_BUTTON_RIGHT_FACE_LEFT;

    // Triggers
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_1;

    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_2;

    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_1;

    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_2;

    // These are buttons in the center of the gamepad
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")
    var GAMEPAD_BUTTON_MIDDLE_LEFT;     // PS3 Select

    @:native("GAMEPAD_BUTTON_MIDDLE")
    var GAMEPAD_BUTTON_MIDDLE;          // PS Button/XBOX Button

    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")
    var GAMEPAD_BUTTON_MIDDLE_RIGHT;    // PS3 Start

    // These are the joystick press in buttons
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")
    var GAMEPAD_BUTTON_LEFT_THUMB;

    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")
    var GAMEPAD_BUTTON_RIGHT_THUMB;
}

// Gampad axis
@:include("raylib.h")
extern enum abstract GamepadAxis(UInt)
{
    // Left stick
    @:native("GAMEPAD_AXIS_LEFT_X")
    var GAMEPAD_AXIS_LEFT_X;

    @:native("GAMEPAD_AXIS_LEFT_Y")
    var GAMEPAD_AXIS_LEFT_Y;

    // Right stick
    @:native("GAMEPAD_AXIS_RIGHT_X")
    var GAMEPAD_AXIS_RIGHT_X;

    @:native("GAMEPAD_AXIS_RIGHT_Y")
    var GAMEPAD_AXIS_RIGHT_Y;

    // Pressure levels for the back triggers
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")
    var GAMEPAD_AXIS_LEFT_TRIGGER;

    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")
    var GAMEPAD_AXIS_RIGHT_TRIGGER;
}

#if mac 
    @:buildXml("<include name='${haxelib:hxRaylib}/build_files/mac.xml'/>")
#elseif linux
    @:buildXml("<include name='${haxelib:hxRaylib}/build_files/linux.xml'/>")
#else
    @:buildXml("<include name='${haxelib:hxRaylib}/build_files/windows.xml'/>")
#end 
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