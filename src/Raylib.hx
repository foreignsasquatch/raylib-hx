/**********************************************************************************************
*
*   hxRaylib - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
*
*   TODO: Test all the features
*
*   LICENSE: zlib/libpng
*
*   hxRaylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
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

//import haxe.ds.Vector;
import cpp.ConstStar;
import haxe.macro.Expr.Constant;
import cpp.Char;
import cpp.UInt8;
import cpp.UInt16;
import cpp.RawConstPointer;
import cpp.Pointer;
import cpp.Float32;
import cpp.NativeArray;
import cpp.ArrayBase;
import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.ConstPointer;

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

// DONE: Complete matrix
@:include("Raylib")
@:native("Matrix")
@:structAccess
extern class Matrix
{
    var m0:Float;
    var m4:Float;
    var m8:Float;
    var m12:Float;
    var m1:Float;
    var m5:Float;
    var m9:Float;
    var m13:Float;
    var m2:Float;
    var m6:Float;
    var m10:Float;
    var m14:Float;
    var m3:Float;
    var m7:Float;
    var m11:Float;
    var m15:Float;
}

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
@:native("Mesh")
@:structAccess
extern class Mesh
{
    var VertexCount:Int;
    var triangleCount:Int;

    var Verticies:cpp.RawPointer<Float>;
    var textcoords:cpp.RawPointer<Float>;
    var texcoord2:cpp.RawPointer<Float>;
    var normals:cpp.RawPointer<Float>;
    var tangents:cpp.RawPointer<Float>;

    var animVertices:cpp.RawPointer<Float>;
    var animNormals:cpp.RawPointer<Float>;
    var boneIds:cpp.RawPointer<Int>;
    var boneWeights:cpp.RawPointer<Float>;

    var vaoId:UInt;
    var vboId:cpp.RawPointer<UInt>;
}

@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader
{
    var id:UInt;
    var locs:cpp.RawPointer<Int>;
}

@:include("raylib.h")
@:native("MaterialMap")
@:structAccess
extern class MaterialMap
{
    var texture:Texture2D;
    var color:Color;
    var value:Float;
}

// TODO: figure out how to float[4]
@:include("raylib.h")
@:native("Material")
@:structAccess
extern class Material
{
    var shader:Shader;
    var maps:cpp.RawPointer<MaterialMap>;
    var params:Float;
}

@:include("raylib.h")
@:native("Transform")
@:structAccess
extern class Transform
{
    var translation:Vector3;
    var rotation:Quaternion;
    var scale:Vector3;
}

@:include("raylib.h")
@:native("BoneInfo")
@:structAccess
extern class BoneInfo
{
    var parent:Int;
}

@:include("raylib.h")
@:native("Model")
@:structAccess
extern class Model
{
    var transform:Matrix;

    var meshCount:Int;
    var materialCount:Int;
    var meshes:RawPointer<Mesh>;
    var materials:RawPointer<Material>;
    var meshMaterials:RawPointer<Int>;

    var boneCount:Int;
    var bones:RawPointer<BoneInfo>;
    var bindPose:RawPointer<Transform>;
}

@:include("raylib.h")
@:native("ModelAnimation")
@:structAccess
extern class ModelAnimation
{
    var boneCount:Int;
    var frameCount:Int;
    var bones:RawPointer<BoneInfo>;
    var framePoses:RawPointer<RawPointer<Transform>>;
}

@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray
{
    var position:Vector3;
    var direction:Vector3;

    public static inline function create():Ray
    {
        return untyped __cpp__("{ 0 }");
    }
}

@:include("raylib.h")
@:native("RayCollision")
@:structAccess
extern class RayCollision
{
    var hit:Bool;
    var distance:Float;
    var point:Vector3;
    var normal:Vector3;

    public static inline function create():RayCollision
    {
        return untyped __cpp__("{ 0 }");
    }
}

@:include("raylib.h")
@:native("BoundingBox")
@:structAccess
extern class BoundingBox
{
    var min:Vector3;
    var max:Vector3;

    public static inline function create(min:Vector3, max:Vector3):BoundingBox
    {
        return untyped __cpp__("{ {0}, {1} }", min, max);
    }
}

@:include("raylib.h")
@:native("Wave")
@:structAccess
extern class Wave
{
    var sampleCount:UInt;
    var sampleRate:UInt;
    var sampleSize:UInt;
    var channels:UInt;
    var data:RawPointer<cpp.Void>;
}

// TODO: Test Audio support
@:include("raylib.h")
@:native("rAudioBuffer")
@:structAccess
extern class AudioBuffer
{

}

@:include("raylib.h")
@:native("AudioStream")
@:structAccess
extern class AudioStream
{
    var buffer:RawPointer<AudioBuffer>;

    var sampleRate:UInt;
    var sampleSize:UInt;
    var channels:UInt;
}

@:include("raylib.h")
@:native("Sound")
@:structAccess
extern class Sound
{
    var stream:AudioStream;
    var sampleCount:UInt;
}

@:include("raylib.h")
@:native("Music")
extern class Music
{
    var stream:AudioStream;
    var sampleCount:UInt;
    var looping:Bool;

    var ctxType:Int;
    var ctxData:RawConstPointer<cpp.Void>;
}
// TODO

// TODO: Finish VR stuff
@:include("raylib.h")
@:native("VrDeviceInfo")
@:structAccess
extern class VrDeviceInfo
{
    var hResolution:Int;
    var vResolution:Int;
    var hScreenSize:Float;
    var vScreenSize:Float;
    var vScreenCenter:Float;
    var eyeToScreenDistance:Float;
    var lensSeparationDistance:Float;
    var interpupillaryDistance:Float;
    var lensDistortionValues:Float;
    var chromaAbCorrection:Float;
}

@:include("raylib.h")
@:native("VrStereoConfig")
@:structAccess
extern class VrStereoConfig
{
    var projection:Matrix;
    var viewoffset:Matrix;
    var leftLensCenter:Float;
    var rightLensCenter:Float;
    var leftScreenCenter:Float;
    var rightScreenCenter:Float;
    var scale:Float;
    var scaleIn:Float;
}
// TODO

@:include("raylib.h")
extern enum abstract ConfigFlags(UInt)
{
    @:native("FLAG_VSYNC_HINT")
    var FLAG_VSYNC_HINT;

    @:native("FLAG_FULLSCREEN_MODE")
    var FLAG_FULLSCREEN_MODE;

    @:native("FLAG_WINDOW_RESZIABLE")
    var FLAG_WINDOW_RESIZABLE;

    @:native("FLAG_WINDOW_UNDECORATED")
    var FLAG_WINDOW_UNDECORATED;

    @:native("FLAG_WINDOW_HIDDEN")
    var FLAG_WINDOW_HIDDEN;

    @:native("FLAG_WINDOW_MINIMIZED")
    var FLAG_WINDOW_MINIMIZED;

    @:native("FLAG_WINDOW_MAXIMIZED")
    var FLAG_WINDOW_MAXIMIZED;

    @:native("FLAG_WINDOW_UNFOCUSED")
    var FLAG_WINDOW_UNFOCUSED;

    @:native("FLAG_WINDOW_TOPMOST")
    var FLAG_WINDOW_TOPMOST;

    @:native("FLAG_WINDOW_ALWAYS_RUN")
    var FLAG_WINDOW_ALWAYS_RUN;

    @:native("FLAG_WINDOW_TRANSPARENT")
    var FLAG_WINDOW_TRANSPARENT;

    @:native("FLAG_WINDOW_HIGHDPI")
    var FLAG_WINDOW_HIGHDPI;

    @:native("FLAG_MSAA_4X_HINT")
    var FLAG_MSAA_4X_HINT;

    @:native("FLAG_INTERLACED_HINT")
    var FLAG_INTERLACED_HINT;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(UInt)
{
    @:native("LOG_ALL")
    var LOG_ALL;

    @:native("LOG_TRACE")
    var LOG_TRACE;

    @:native("LOG_DEBUG")
    var LOG_DEBUG;

    @:native("LOG_INFO")
    var LOG_INFO;

    @:native("LOG_WARNING")
    var LOG_WARNING;

    @:native("LOG_ERROR")
    var LOG_ERROR;

    @:native("LOG_FATAL")
    var LOG_FATAL;

    @:native("LOG_NONE")
    var LOG_NONE;
}


@:include("raylib.h")
extern class CameraProjection
{
    @:native("CAMERA_PERSPECTIVE")      public static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")     public static var CAMERA_ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern class CameraMode
{
    @:native("CAMERA_CUSTOM")           public static var CAMERA_CUSTOM:Int;
    @:native("CAMERA_FREE")             public static var CAMERA_FREE:Int;
    @:native("CAMERA_ORBITAL")          public static var CAMERA_ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")     public static var CAMERA_FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")     public static var CAMERA_THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract Config(UInt)
{

}

//Keyboard keys (US keyboard layout)
//NOTE: Use GetKeyPressed() to allow redefining
//required keys for alternative layouts
@:include("raylib.h")
extern enum abstract KeyboardKey(Int) from Int to Int
{
    @:native("KEY_NULL")
    public static var NULL:Int;

    @:native("KEY_APOSTROPHE")
    public static var APOSTROPHE:Int;

    @:native("KEY_COMMA")
    public static var COMMA:Int;

    @:native("KEY_MINUS")
    public static var MINUS:Int;

    @:native("KEY_PERIOD")
    public static var PERIOD:Int;

    @:native("KEY_SLASH")
    public static var SLASH:Int;

    @:native("KEY_ZERO")
    public static var ZERO:Int;

    @:native("KEY_ONE")
    public static var ONE:Int;

    @:native("KEY_TWO")
    public static var TWO:Int;

    @:native("KEY_THREE")
    public static var THREE:Int;

    @:native("KEY_FOUR")
    public static var FOUR:Int;

    @:native("KEY_FIVE")
    public static var FIVE:Int;

    @:native("KEY_SIX")
    public static var SIX:Int;

    @:native("KEY_SEVEN")
    public static var SEVEN:Int;

    @:native("KEY_EIGHT")
    public static var EIGHT:Int;

    @:native("KEY_NINE")
    public static var NINE:Int;

    @:native("KEY_SEMICOLON")
    public static var SEMICOLOR:Int;

    @:native("KEY_EQUAL")
    public static var EQUAL:Int;

    @:native("KEY_A")
    public static var A:Int;

    @:native("KEY_B")
    public static var B:Int;

    @:native("KEY_C")
    public static var C:Int;

    @:native("KEY_D")
    public static var D:Int;

    @:native("KEY_E")
    public static var E:Int;

    @:native("KEY_F")
    public static var F:Int;

    @:native("KEY_G")
    public static var G:Int;

    @:native("KEY_H")
    public static var H:Int;

    @:native("KEY_I")
    public static var I:Int;

    @:native("KEY_J")
    public static var J:Int;

    @:native("KEY_K")
    public static var K:Int;

    @:native("KEY_L")
    public static var L:Int;

    @:native("KEY_M")
    public static var M:Int;

    @:native("KEY_N")
    public static var N:Int;

    @:native("KEY_O")
    public static var O:Int;

    @:native("KEY_P")
    public static var P:Int;

    @:native("KEY_Q")
    public static var Q:Int;

    @:native("KEY_R")
    public static var R:Int;

    @:native("KEY_S")
    public static var S:Int;

    @:native("KEY_T")
    public static var T:Int;

    @:native("KEY_U")
    public static var U:Int;

    @:native("KEY_V")
    public static var V:Int;

    @:native("KEY_W")
    public static var W:Int;

    @:native("KEY_X")
    public static var X:Int;

    @:native("KEY_Y")
    public static var Y:Int;

    @:native("KEY_Z")
    public static var Z:Int;

    @:native("KEY_SPACE")
    public static var SPACE:Int;

    @:native("KEY_ESCAPE")
    public static var ESCAPE:Int;

    @:native("KEY_ENTER")
    public static var ENTER:Int;

    @:native("KEY_TAB")
    public static var TAB:Int;

    @:native("KEY_BACKSPACE")
    public static var BACKSPACE:Int;

    @:native("KEY_INSERT")
    public static var INSERT:Int;

    @:native("KEY_DELETE")
    public static var DELETE:Int;

    @:native("KEY_RIGHT")
    public static var RIGHT:Int;

    @:native("KEY_LEFT")
    public static var LEFT:Int;

    @:native("KEY_DOWN")
    public static var DOWN:Int;

    @:native("KEY_UP")
    public static var UP:Int;

    @:native("KEY_PAGE_UP")
    public static var PAGE_UP:Int;

    @:native("KEY_PAGE_DOWN")
    public static var PAGE_DOWN:Int;

    @:native("KEY_HOME")
    public static var HOME:Int;

    @:native("KEY_END")
    public static var END:Int;

    @:native("KEY_CAPS_LOCK")
    public static var CAPS_LOCK:Int;

    @:native("KEY_SCROLL_LOCK")
    public static var SCROLL_LOCK:Int;

    @:native("KEY_NUM_LOCK")
    public static var NUM_LOCK:Int;

    @:native("KEY_PRINT_SCREEN")
    public static var PRINT_SCREEN:Int;

    @:native("KEY_PAUSE")
    public static var PAUSE:Int;

    @:native("KEY_F1")
    public static var F1:Int;

    @:native("KEY_F2")
    public static var F2:Int;

    @:native("KEY_F3")
    public static var F3:Int;

    @:native("KEY_F4")
    public static var F4:Int;

    @:native("KEY_F5")
    public static var  F5:Int;

    @:native("KEY_F6")
    public static var F6:Int;

    @:native("KEY_F7")
    public static var F7:Int;

    @:native("KEY_F8")
    public static var F8:Int;

    @:native("KEY_F9")
    public static var F9:Int;

    @:native("KEY_F10")
    public static var F10:Int;

    @:native("KEY_F11")
    public static var F11:Int;

    @:native("KEY_F12")
    public static var F12:Int;

    @:native("KEY_LEFT_SHIFT")
    public static var LEFT_SHIFT:Int;

    @:native("KEY_LEFT_CONTROL")
    public static var LEFT_CONTROL:Int;

    @:native("KEY_LEFT_ALT")
    public static var LEFT_ALT:Int;

    @:native("KEY_LEFT_SUPER")
    public static var LEFT_SUPER:Int;

    @:native("KEY_RIGHT_SHIFT")
    public static var RIGHT_SHIFT:Int;

    @:native("KEY_RIGHT_CONTROL")
    public static var RIGHT_CONTROL:Int;

    @:native("KEY_RIGHT_ALT")
    public static var RIGHT_ALT:Int;

    @:native("KEY_RIGHT_SUPER")
    public static var RIGHT_SUPER:Int;

    @:native("KEY_KB_MENU")
    public static var KB_MENU:Int;

    @:native("KEY_LEFT_BRACKET")
    public static var LEFT_BRACKET:Int;

    @:native("KEY_BACKSLASH")
    public static var BACKLASH:Int;

    @:native("KEY_RIGHT_BRACKET")
    public static var RIGHT_BRACKET:Int;

    @:native("KEY_GRAVE")
    public static var GRAVE:Int;

    @:native("KEY_KP_0")
    public static var KP_0:Int;

    @:native("KEY_KP_1")
    public static var KP_1:Int;

    @:native("KEY_KP_2")
    public static var KP_2:Int;

    @:native("KEY_KP_3")
    public static var KP_3:Int;

    @:native("KEY_KP_4")
    public static var KP_4:Int;

    @:native("KEY_KP_5")
    public static var KP_5:Int;

    @:native("KEY_KP_6")
    public static var KP_6:Int;

    @:native("KEY_KP_7")
    public static var KP_7:Int;

    @:native("KEY_KP_8")
    public static var KP_8:Int;

    @:native("KEY_KP_9")
    public static var KP_9:Int;

    @:native("KEY_KP_DECIMAL")
    public static var KP_DECIMAL:Int;

    @:native("KEY_KP_DIVIDE")
    public static var KP_DIVIDE:Int;

    @:native("KEY_KP_MULTIPLY")
    public static var KP_MULTIPLY:Int;

    @:native("KEY_KP_SUBTRACT")
    public static var KP_SUBTRACT:Int;

    @:native("KEY_KP_ADD")
    public static var KP_ADD:Int;

    @:native("KEY_KP_ENTER")
    public static var KP_ENTER:Int;

    @:native("KEY_KP_EQUAL")
    public static var KP_EQUAL:Int;
}

// Mouse buttons
@:include("raylib.h")
extern enum abstract MouseButton(Int) from Int to Int
{
    @:native("MOUSE_BUTTON_LEFT")
    public static var LEFT:Int;

    @:native("MOUSE_BUTTON_RIGHT")
    public static var RIGHT:Int;

    @:native("MOUSE_BUTTON_MIDDLE")
    public static var MIDDLE:Int;

    @:native("MOUSE_BUTTON_SIDE")
    public static var SIDE:Int;

    @:native("MOUSE_BUTTON_EXTRA")
    public static var EXTRA:Int;

    @:native("MOUSE_BUTTON_FORWARD")
    public static var FORWARD:Int;

    @:native("MOUSE_BUTTON_BACK")
    public static var BACK:Int; 
}

// Mouse cursor
@:include("raylib.h")
extern enum abstract MouseCursor(Int) from Int to Int
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

@:include("raylib.h")
extern enum abstract MaterialMapIndex(UInt)
{
    @:native("MATERIAL_MAP_ALBEDO")
    var MATERIAL_MAP_ALBEDO;

    @:native("MATERIAL_MAP_METALNESS")
    var MATERIAL_MAP_METALNESS;

    @:native("MATERIAL_MAP_NORMAL")
    var MATERIAL_MAP_NORMAL;

    @:native("MATERIAL_MAP_ROUGHNESS")
    var MATERIAL_MAP_ROUGHNESS;

    @:native("MATERIAL_MAP_OCCULSION")
    var MATERIAL_MAP_OCCULSION;

    @:native("MATERIAL_MAP_EMISSION")
    var MATERIAL_MAP_EMISSION;

    @:native("MATERIAL_MAP_HEIGHT")
    var MATERIAL_MAP_HEIGHT;

    @:native("MATERIAL_MAP_CUBEMAP")
    var MATERIAL_MAP_CUBEMAP;

    @:native("MATERIAL_MAP_IRRADIANCE")
    var MATERIAL_MAP_IRRADIANCE;

    @:native("MATERIAL_MAP_PREFILTER")
    var MATERIAL_MAP_PREFILTER;

    @:native("MATERIAL_MAP_BRDG")
    var MATERIAL_MAP_BRDG;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(UInt)
{
    @:native("SHADER_LOC_VERTEX_POSITION")
    var SHADER_LOC_VERTEXT_POSITION;

    @:native("SHADER_LOC_VERTEX_TEXCOORD01")
    var SHADER_LOC_VERTEX_TEXCOORD01;

    @:native("SHADER_LOC_VERTEX_TEXCOORD02")
    var SHADER_LOC_VERTEX_TEXCOORD02;

    @:native("SHADER_LOC_VERTEX_NORMAL")
    var SHADER_LOC_VERTEX_NORMAL;

    @:native("SHADER_LOC_VERTEX_TANGENT")
    var SHADER_LOC_VERTEX_TANGENT;

    @:native("SHADER_LOC_VERTEX_COLOR")
    var SHADER_LOC_VERTEX_COLOR;

    @:native("SHADER_LOC_MATRIX_MVP")
    var SHADER_LOC_MATRIX_MVP;

    @:native("SHADER_LOC_MATRIX_VIEW")
    var SHADER_LOC_MATRIX_VIEW;

    @:native("SHADER_LOC_MATRIX_PROJECTION")
    var SHADER_LOC_MATRIX_PROJECTION;

    @:native("SHADER_LOC_MATRIX_MODEL")
    var SHADER_LOC_MATRIX_MODEL;

    @:native("SHADER_LOC_MATRIX_NORMAL")
    var SHADER_LOC_MATRIX_NORMAL;

    @:native("SHADER_LOC_VECTOR_VIEW")
    var SHADER_LOC_VECTOR_VIEW;

    @:native("SHADER_LOC_COLOR_DIFFUSE")
    var SHADER_LOC_COLOR_DIFFUSE;

    @:native("SHADER_LOC_COLOR_SPECULAR")
    var SHADER_LOC_COLOR_SPECULAR;

    @:native("SHADER_LOC_COLOR_AMBIENT")
    var SHADER_LOC_COLOR_AMBIENT;

    @:native("SHADER_LOC_MAP_ALBEDO")
    var SHADER_LOC_MAP_ALBEDO;

    @:native("SHADER_LOC_MAP_METALNESS")
    var SHADER_LOC_MAP_METALNESS;

    @:native("SHADER_LOC_MAP_NORMAL")
    var SHADER_LOC_MAP_NORMAL;

    @:native("SHADER_LOC_MAP_ROUGHNESS")
    var SHADER_LOC_MAP_ROUGHNESS;

    @:native("SHADER_LOC_MAP_OCCULSION")
    var SHADER_LOC_MAP_OCCULSION;

    @:native("SHADER_LOC_MAP_EMISSION")
    var SHADER_LOC_MAP_EMISSION;

    @:native("SHADER_LOC_MAP_HEIGHT")
    var SHADER_LOC_MAP_HEIGHT;

    @:native("SHADER_LOC_MAP_CUBEMAP")
    var SHADER_LOC_MAP_CUBEMAP;

    @:native("SHADER_LOC_MAP_IRRADIANCE")
    var SHADER_LOC_MAP_IRRADIANCE;

    @:native("SHADER_LOC_MAP_PREFILTER")
    var SHADER_LOC_MAP_PREFILTER;

    @:native("SHADER_LOC_MAP_BRDF")
    var SHADER_LOC_MAP_BRDF;
}

@:include("raylib.h")
extern enum abstract ShaderUniformDataType(UInt)
{
    @:native("SHADER_UNIFORM_FLOAT")
    var SHADER_UNIFORM_FLOAT;

    @:native("SHADER_UNIFORM_VEC2")
    var SHADER_UNIFORM_VEC2;

    @:native("SHADER_UNIFORM_VEC3")
    var SHADER_UNIFORM_VEC3;

    @:native("SHADER_UNIFORM_VEC4")
    var SHADER_UNIFORM_VEC4;

    @:native("SHADER_UNIFORM_INT")
    var SHADER_UNIFORM_INT;

    @:native("SHADER_UNIFORM_IVEC2")
    var SHADER_UNIFORM_IVEC2;

    @:native("SHADER_UNIFORM_IVEC3")
    var SHADER_UNIFORM_IVEC3;

    @:native("SHADER_UNIFORM_IVEC4")
    var SHADER_UNIFORM_IVEC4;

    @:native("SHADER_UNIFORM_SAMPLER2D")
    var SHADER_UNIFORM_SAMPLER2D;
}

@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(UInt)
{
    @:native("SHADER_ATTRIB_FLOAT")
    var SHADER_ATTRIB_FLOAT;

    @:native("SHADER_ATTRIB_VEC2")
    var SHADER_ATTRIB_VEC2;

    @:native("SHADER_ATTRIB_VEC3")
    var SHADER_ATTRIB_VEC3;

    @:native("SHADER_ATTRIB_VEC4")
    var SHADER_ATTRIB_VEC4;
}

@:include("raylib.h")
extern enum abstract PixelFormat(UInt)
{
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")
    var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;

    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")
    var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;

    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")
    var PIXELFORMAT_UNCOMPRESSED_R5G6B5;

    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8;

    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")
    var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;

    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")
    var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;

    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;

    @:native("PIXELFORMAT_UNCOMPRESSED_R32")
    var PIXELFORMAT_UNCOMPRESSED_R32;

    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32;

    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;

    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")
    var PIXELFORMAT_COMPRESSED_DXT1_RGB;

    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT1_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT3_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT5_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")
    var PIXELFORMAT_COMPRESSED_ETC1_RGB;

    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")
    var PIXELFORMAT_COMPRESSED_ETC2_RGB;

    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")
    var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")
    var PIXELFORMAT_COMPRESSED_PVRT_RGB;

    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")
    var PIXELFORMAT_COMPRESSED_PVRT_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;

    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;
}

@:include("raylib.h")
extern enum abstract TextureFilter(UInt)
{
    @:native("TEXTURE_FILTER_POINT")
    var TEXTURE_FILTER_POINT;

    @:native("TEXTURE_FILTER_BILINEAR")
    var TEXTURE_FILTER_BILINEAR;

    @:native("TEXTURE_FILTER_TRILINEAR")
    var TEXTURE_FILTER_TRILINEAR;

    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")
    var TEXTURE_FILTER_ANISOTROPIC_4X;

    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")
    var TEXTURE_FILTER_ANISOTROPIC_8X;

    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")
    var TEXTURE_FILTER_ANISOTROPIC_16X;
}

@:include("raylib.h")
extern enum abstract TextureWrap(UInt)
{
    @:native("TEXTURE_WRAP_REPEAT")
    var TEXTURE_WRAP_REPEAT;

    @:native("TEXTURE_WRAP_CLAMP")
    var TEXTURE_WRAP_CLAMP;

    @:native("TEXTURE_WRAP_MIRROR_REPEAT")
    var TEXTURE_WRAP_MIRROR_REPEAT;

    @:native("TEXTURE_WRAP_MIRROR_CLAMP")
    var TEXTURE_WRAP_MIRROR_CLAMP;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(UInt)
{
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")
    var CUBEMAP_LAYOUT_AUTO_DETECT;

    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")
    var CUBEMAP_LAYOUT_LINE_VERTICAL;

    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")
    var CUBEMAP_LAYOUT_LINE_HORIZONTAL;

    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")
    var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;

    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")
    var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;

    @:native("CUBEMAP_LAYOUT_PANORAMA")
    var CUBEMAP_LAYOUT_PANORAMA;
}

@:include("raylib.h")
extern enum abstract FontType(UInt)
{
    @:native("FONT_DEFAULT")
    var FONT_DEFAULT;

    @:native("FONT_BITMAP")
    var FONT_BITMAP;

    @:native("FONT_SDF")
    var FONT_SDF;
}

@:include("raylib.h")
extern enum abstract BlendMode(UInt)
{
    @:native("BLEND_ALPHA")
    var BLEND_ALPHA;

    @:native("BLEND_ADDITIVE")
    var BLEND_ADDITIVE;

    @:native("BLEND_MULTIPLIED")
    var BLEND_MULTIPLIED;

    @:native("BLEND_ADD_COLORS")
    var BLEND_ADD_COLORS;

    @:native("BLEND_SUBTRACT_COLORS")
    var BLEND_SUBTRACT_COLORS;

    @:native("BLEND_CUSTOM")
    var BLEND_CUSTOM;
}

@:include("raylib.h")
extern enum abstract Gesture(UInt)
{
    @:native("GESTURE_NONE")
    var GESTURE_NONE;

    @:native("GESTURE_TAP")
    var GESTURE_TAP;

    @:native("GESTURE_DOUBLETAP")
    var GESTURE_DOUBLETAP;

    @:native("GESTURE_HOLD")
    var GESTURE_HOLD;

    @:native("GESTURE_DRAG")
    var GESTURE_DRAG;

    @:native("GESTURE_SWIPE_RIGHT")
    var GESTURE_SWIPE_RIGHT;

    @:native("GESTURE_SWIPE_LEFT")
    var GESTURE_SWIPE_LEFT;

    @:native("GESTURE_SWIPE_UP")
    var GESTURE_SWIPE_UP;

    @:native("GESTURE_SWIPE_DOWN")
    var GESTURE_SWIPE_DOWN;

    @:native("GESTURE_PINCH_IN")
    var GESTURE_PINCH_IN;

    @:native("GESTURE_PINCH_OUT")
    var GESTURE_PINCH_OUT;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(UInt)
{
    @:native("NPATCH_NINE_PATCH")
    var NPATCH_NINE_PATCH;

    @:native("NPATCH_THREE_PATCH_VERTICAL")
    var NPATCH_THREE_PATCH_VERTICAL;

    @:native("NPATCH_THREE_PATCH_HORIZONTAL")
    var NPATCH_THREE_PATCH_HORIZONTAL;
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
    //------------------------------------------------------------------------------------
    // Window and Graphics Device Functions (Module: core)
    //------------------------------------------------------------------------------------

    // Window-related functions
    @:native("InitWindow")              public static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose")       public static function WindowShouldClose():Bool;
    @:native("CloseWindow")             public static function CloseWindow():Bool;
    @:native("IsWindowReady")           public static function IsWindowReady():Bool;
    @:native("IsWindowFullscreen")      public static function IsWindowFullscreen():Bool;
    @:native("IsWindowHidden")          public static function IsWindowHidden():Bool;
    @:native("IsWindowMinimized")       public static function IsWindowsMinimized():Bool;
    @:native("IsWindowMaximized")       public static function IsWindowMaximized():Bool;
    @:native("IsWindowFocused")         public static function IsWindowFocused():Bool;
    @:native("IsWindowResized")         public static function IsWindowResized():Bool;
    @:native("IsWindowState")           public static function IsWindowState(flag:UInt):Bool;
    @:native("SetWindowState")          public static function SetWindowFlag(flag:UInt):Void;
    @:native("ClearWindowState")        public static function ClearWindowState(flag:UInt):Void;
    @:native("ToggleFullscreen")        public static function ToggleFullscreen():Void;
    @:native("MaximizeWindow")          public static function MaximizeWindow():Void;
    @:native("MinimizeWindow")          public static function MinimizeWindow():Void;
    @:native("RestoreWindow")           public static function RestoreWindow():Void;
    @:native("SetWindowIcon")           public static function SetWindowIcon(image:Image):Void;
    @:native("SetWindowTitle")          public static function SetWindowTitle(title:cpp.ConstCharStar):Void;
    @:native("SetWindowPosition")       public static function SetWindowPosition(x:Int, y:Int):Void;
    @:native("SetWindowMonitor")        public static function SetWindowMonitor(monitor:Int):Void;
    @:native("SetWindowMinSize")        public static function SetWindowMinSize(width:Int, height:Int):Void;
    @:native("SetWindowSize")           public static function SetWindowsize(width:Int, height:Int):Void;
    @:native("GetWindowHandle")         public static function GetWindowHandle():cpp.RawPointer<Void>;
    @:native("GetScreenWidth")          public static function GetScreenWidth():Int;
    @:native("GetScreenHeight")         public static function GetScreenHeight():Int;
    @:native("GetMonitorCount")         public static function GetMonitorCount():Int;
    @:native("GetCurrentMonitor")       public static function GetCurrentMonitor():Int;
    @:native("GetMonitorPosition")      public static function GetMoniorPosition(monitor:Int):Vector2;
    @:native("GetMonitorWidth")         public static function GetMonitorWidth(monitor:Int):Int;
    @:native("GetMonitorHeight")        public static function GetMonitorHeight(monitor:Int):Int;
    @:native("GetMonitorPhysicalWidth") public static function GetMonitorPhysicalWidth(monitor:Int):Int;
    @:native("GetMonitorPhysicalHeight") public static function GetMonitorPhysicalHeight(monitor:Int):Int;
    @:native("GetMonitorRefershRate")   public static function GetMonitorRefershRate(monitor:Int):Int;
    @:native("GetWindowPosition")       public static function GetWndowPosition():Vector2;
    @:native("GetWindowScaleDPI")       public static function GetWindowScaleDPI():Vector2;
    @:native("GetMonitorName")          public static function GetMonitorName(monitor:Int):cpp.ConstCharStar;
    @:native("SetClipboardText")        public static function SetClipboardText(text:cpp.ConstCharStar):Void;
    @:native("GetClipboardText")        public static function GetClipboardText():cpp.ConstCharStar;

    // Custom frame control functions
    // NOTE: Those functions are intended for advance users that want full control over the frame processing
    // By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timming + PollInputEvents()
    // To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL
    @:native("InitTimer")               public static function InitTime():Void;
    @:native("WaitTime")                public static function WaitTime(ms:Float):Void;
    @:native("SwapScreenBuffer")        public static function SwapScreenBuffer():Void;
    @:native("PollInputEvents")         public static function PollInputEvents():Void;

    // Cursor-related functions
    @:native("ShowCursor")              public static function ShowCursor():Void;
    @:native("HideCursor")              public static function HideCursor():Void;
    @:native("IsCursorHidden")          public static function IsCursorHidden():Bool;
    @:native("EnableCursor")            public static function EnableCursor():Void;
    @:native("DisableCursor")           public static function DisableCursor():Void;
    @:native("IsCursorOnScreen")        public static function IsCursorOnScreen():Bool;

    // Drawing-related functions
    @:native("ClearBackground")         public static function ClearBackground(color:Color):Void;
    @:native("BeginDrawing")            public static function BeginDrawing():Void;
    @:native("EndDrawing")              public static function EndDrawing():Void;
    @:native("BeginMode2D")             public static function BeginMode2D(camera:Camera2D):Void;
    @:native("EndMode2D")               public static function EndMode2D():Void;
    @:native("BeginMode3D")             public static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D")               public static function EndMode3D():Void;
    @:native("BeginTextureMode")        public static function BeginTextureMode(target:RenderTexture2D):Void;
    @:native("EndTextureMode")          public static function EndTextureMode():Void;
    @:native("BeginShaderMode")         public static function BeginShaderMode(shader:Shader):Void;
    @:native("EndShaderMode")           public static function EndShaderMode():Void;
    @:native("BeginBlendMode")          public static function BeginBlendMode(mode:Int):Void;
    @:native("EndBlendMode")            public static function EndBlendMode():Void;
    @:native("BeginScissorMode")        public static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("EndScissorMode")          public static function EndScissorMode():Void;
    // BeginVrStereoMode
    // EndVrStereoMode

    // LoadVrStereoConfig
    // UnloadVrStereoConfig

    // Shader manangement function
    @:native("LoadShader")              public static function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;
    @:native("LoadShaderFromMemory")    public static function LoadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;
    @:native("GetShaderLocation")       public static function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;
    @:native("GetShaderLocationAttrib") public static function GetShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int;
    @:native("SetShaderValue")          public static function SetShaderValue(shader:Shader, locIndex:Int, value:ConstPointer<Void>, uniformType:Int):Void;
    @:native("SetShaderValueV")         public static function SetShaderValueV(shader:Shader, locIndex:Int, value:ConstPointer<Void>, uniformType:Int, count:Int):Void;
    @:native("SetShaderValueMatrix")    public static function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;
    @:native("SetShaderValueTexture")   public static function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void;
    @:native("UnloadShader")            public static function UnloadShader(shader:Shader):Void;

    // Screen-space-related functions
    @:native("GetMouseRay")             public static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;
    @:native("GetCameraMatrix")         public static function GetCameraMatrix(camera:Camera):Matrix;
    @:native("GetCameraMatrix2D")       public static function GetCameraMatrix2D(camera:Camera2D):Matrix;
    @:native("GetWorldToScreen")        public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    @:native("GetWorldToScreenEx")      public static function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2;
    @:native("GetWorldToScreen2D")      public static function GetWorldToScreen2D(postition:Vector2, camera:Camera2D):Vector2;
    @:native("GetScreenToWorld")        public static function GetScreenToWorld(position:Vector2, camera:Camera2D):Vector2;

    // Timing-related functions
    @:native("SetTargetFPS")            public static function SetTargetFPS(fps:Int):Void;
    @:native("GetFrameTime")            public static function GetFrameTime():Float;
    @:native("GetFPS")                  public static function GetFPS():Int;
    @:native("GetTime")                 public static function GetTime():Int;

    // Misc. functions
    @:native("GetRandomValue")          public static function GetRandomValue(min:Int, max:Int):Int;
    @:native("TakeScreenshot")          public static function TakeScreenshot(fileName:ConstCharStar):Void;
    @:native("SetConfigFlags")          public static function SetConfigFlags(flags:UInt):Void;

    @:native("TraceLog")                public static function TraceLog(logLevel:Int, text:ConstCharStar):Void;
    @:native("SetTraceLogLevel")        public static function SetTraceLogLevel(logLevel:Int):Void;
    @:native("MemAlloc")                public static function MemAlloc(size:Int):RawPointer<Void>;
    @:native("MemRealloc")              public static function MemRealloc(ptr:RawPointer<Void>, size:Int):RawPointer<Void>;
    @:native("MemFree")                 public static function MemFree(ptr:RawPointer<Void>):Void;

    // Set custom callback
    //@:native("SetTraceLogCallback")     public static function SetTraceLogCallback(callback:TraceLogCallback):Void;

    // Files management functions
    @:native("LoadFileData")            public static function LoadFileData(filename:ConstCharStar, bytesRead:RawPointer<UInt>):RawPointer<UInt16>;
    @:native("UnloadFileData")          public static function UnloadFileData(data:RawPointer<UInt16>):Void;
    @:native("SaveFileData")            public static function SaveFileData(filename:RawPointer<UInt16>, data:RawPointer<Void>, byetsToWrite:UInt):Bool;
    @:native("LoadFileText")            public static function LoadFileText(fileName:ConstCharStar):RawPointer<Char>;
    @:native("UnloadFileText")          public static function UnloadFileText(text:RawPointer<Char>):Void;
    @:native("SaveFileText")            public static function SaveFileText(fileName:ConstCharStar, text:RawPointer<Char>):Bool;
    @:native("FileExists")              public static function FileExists(fileName:ConstCharStar):Bool;
    @:native("DirectoryExists")         public static function DirectoryExists(dirPath:ConstCharStar):Bool;
    @:native("IsFileExtension")         public static function IsFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;
    @:native("GetFileExtension")        public static function GetFileExtension(fileName:ConstCharStar):ConstCharStar;
    @:native("GetFileName")             public static function GetFileName(filePath:ConstCharStar):ConstCharStar;
    @:native("GetFileNameWithoutExt")   public static function GetFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;
    @:native("GetDirectoryPath")        public static function GetDirectoryPath(filePath:ConstCharStar):ConstCharStar;
    @:native("GetPrevDirectoryPath")    public static function GetPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;
    @:native("GetWorkingDirectory")     public static function GetWorkingDirectory():ConstCharStar;
    @:native("GetDirectoryFiles")       public static function GetDirectoryFiles(dirPath:ConstCharStar, count:RawPointer<Int>):Pointer<Pointer<Char>>;
    @:native("ClearDirectoryFiles")     public static function ClearDirectoryFiles():Void;
    @:native("ChangeDirectory")         public static function ChangeDirectory(dir:ConstCharStar):Bool;
    @:native("IsFileDropped")           public static function IsFiledDropped():Bool;
    @:native("GetDroppedFiles")         public static function GetDroppedFiles(count:RawPointer<Int>):Pointer<Pointer<Char>>;
    @:native("ClearDroppedFiles")       public static function ClearDroppedFiles():Void;
    @:native("GetFileModTime")          public static function GetFileModeTime(fileName:ConstCharStar):Float;

    // Persistent storage management
    @:native("SaveStorageValue")        public static function SaveStorageValue(postition:UInt, value:Int):Bool;
    @:native("LoadStorageValue")        public static function LoadStorageValue(position:UInt):Int;

    @:native("OpenURL")                 public static function OpenURL(url:ConstCharStar):Void;

    //------------------------------------------------------------------------------------
    // Input Handling Functions (Module: core)
    //------------------------------------------------------------------------------------

    // Input-related functions: keyboard
    @:native("IsKeyPressed")            public static function IsKeyPressed(key:Int):Bool;
    @:native("IsKeyDown")               public static function IsKeyDown(key:Int):Bool;
    @:native("IsKeyReleased")           public static function IsKeyReleased(key:Int):Bool;
    @:native("IsKeyUp")                 public static function IsKeyUp(key:Int):Bool;
    @:native("SetExitKey")              public static function SetExitKey(key:Int):Void;
    @:native("GetKeyPressed")           public static function GetKeyPressed():Int;
    @:native("GetCharPressed")          public static function GetCharPressed():Int;

    // Input-relate functions: gamepads
    @:native("IsGamepadAvailable")      public static function IsGamepadAvailable(gamepad:Int):Bool;
    @:native("IsGamepadName")           public static function IsGamepadName(gamepad:Int, name:ConstCharStar):Bool;
    @:native("GetGamepadName")          public static function GetGamepadName(gamepad:Int):ConstCharStar;
    @:native("IsGamepadButtonPressed")  public static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonDown")     public static function IsGamepadButtonDow(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonReleased") public static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonUp")       public static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;
    @:native("GetGamepadButtonPressed") public static function GetGamepadButtonPressed():Int;
    @:native("GetGamepadAxisCount")     public static function GetGamepadAxisCount(gamepad:Int):Int;
    @:native("GetGamepadAxisMovement")  public static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Float;
    @:native("SetGamepadMappings")      public static function SetGamepadMappings(mappings:ConstCharStar):Int;

    // Input-related functions: mouse
    @:native("IsMouseButtonPressed")    public static function IsMouseButtonPressed(button:Int):Bool;
    @:native("IsMouseButtonDown")       public static function IsMouseButtonDown(button:Int):Bool;
    @:native("IsMouseButtonReleased")   public static function IsMouseButtonReleased(button:Int):Bool;
    @:native("IsMouseButtonUp")         public static function IsMouseButtonUp(buttton:Int):Bool;
    @:native("GetMouseX")               public static function GetMouseX():Int;
    @:native("GetMouseY")               public static function GetMouseY():Int;
    @:native("GetMousePosition")        public static function GetMousePositiin():Vector2;
    @:native("GetMouseDelta")           public static function GetMouseDelta():Vector2;
    @:native("SetMousePosition")        public static function SetMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset")          public static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("GetMouseWheelMove")       public static function GetMouseWheelMove():Float;
    @:native("SetMouseCursor")          public static function SetMouseCursor(cursor:Int):Void;

    // Input-related functions: touch
    @:native("GetTouchX")               public static function GetTouchX():Int;
    @:native("GetTouchY")               public static function GetTouchY():Int;
    @:native("GetTouchPosition")        public static function GetTouchPosition(index:Int):Vector2;

    //------------------------------------------------------------------------------------
    // Gestures and Touch Handling Functions (Module: gestures)
    //------------------------------------------------------------------------------------
    @:native("SetGestureEnabled")       public static function SetGestureEnabled(flags:UInt):Void;
    @:native("IsGestureDetected")       public static function IsGestureDetected(gesture:Int):Bool;
    @:native("GetGestureDetected")      public static function GetGestureDetected():Int;
    @:native("GetTouchPointsCount")     public static function GetTouchPointsCount():Int;
    @:native("GetGestureHoldDuration")  public static function GetGestureHoldDuration():Float;
    @:native("GetGestureDragVector")    public static function GetGestureDragVector():Vector2;
    @:native("GetGestureDragAngle")     public static function GetGestureDragAngle():Float;
    @:native("GetGesturePinchVector")   public static function GetGesturePinchVector():Vector2;
    @:native("GetGesturePinchAngle")    public static function GetGesturePinchAngle():Float;

    //------------------------------------------------------------------------------------
    // Camera System Functions (Module: camera)
    //------------------------------------------------------------------------------------
    @:native("SetCameraMode")           public static function SetCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera")            public static function UpdateCamera(camera:RawPointer<Camera>):Void;

    @:native("SetCameraPanControl")     public static function SetCameraPanControl(keyPan:Int):Void;
    @:native("SetCameraAltControl")     public static function SetCameraAltControl(keyAlt:Int):Void;
    @:native("SetCameraSmoothZoomControl") public static function SetCameraSmoothZoomControl(keySmoothZoom:Int):Void;
    @:native("SetCameraMoveControls")   public static function SetCameraMoveControls(keyFron:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;

    //------------------------------------------------------------------------------------
    // Basic Shapes Drawing Functions (Module: shapes)
    //------------------------------------------------------------------------------------
    @:native("SetShapesTexture")        public static function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;

    // Basic shapes drawing functions
    @:native("DrawPixel")               public function DrawPixel(posX:Int, posY:Int, color:Color):Void;
    @:native("DrawPixelV")              public static function DrawPixelV(position:Vector2, color:Color):Void;
    @:native("DrawLine")                public static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("DrawLineV")               public static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;
    @:native("DrawLineEx")              public static function DrawLienEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezier")          public static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezierQuad")      public static function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineStrip")           public static function DrawLineStrip(points:Pointer<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawCircle")              public static function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    @:native("DrawCircleSector")        public static function DrawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;
    @:native("DrawCircleSectorLines")   public static function DrawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;
    @:native("DrawCircleGradient")      public static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;
    @:native("DrawCircleV")             public static function DrawCircleV(center:Vector2, radius:Float, color:Color):Void;
    @:native("DrawRectangle")           public static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

    //------------------------------------------------------------------------------------
    // Texture Loading and Drawing Functions (Module: textures)
    //------------------------------------------------------------------------------------

    // Image loading functions
    @:native("LoadImage")               public static function LoadImage(fileName:ConstCharStar):Image;
    @:native("LoadImageRaw")            public static function LoadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;
    @:native("LoadImageAnim")           public static function LoadImageAnim(fileName:ConstCharStar, frames:Int):Image;
    @:native("LoadImageFromMemory")     public static function LoadImageFromMemory(fileType:ConstCharStar, fileData:ConstStar<cpp.UInt8>, dataSize:Int):Image;
    @:native("UnloadImage")             public static function UnloadImage(image:Image):Void;
    @:native("ExportImage")             public static function ExportImage(image:Image, fileName:ConstCharStar):Bool;
    @:native("ExportImageAsCode")       public static function ExportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

    // Image generation functions
    @:native("GenImageColor")           public static function GenImageColor(width:Int, height:Int, color:Color):Image;

    // Texture Loading functions
    @:native("LoadTexture")             public static function LoadTexture(fileName:ConstCharStar):Texture2D;
    @:native("UnloadTexture")           public static function UnloadTexture(texture:Texture2D):Void;
    @:native("LoadRenderTexture")       public static function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;

    // Texture drawing functions
    @:native("DrawTexture")             public static function DrawTexture(texture:Texture2D, posX:Int, posy:Int, tint:Color):Void;
    @:native("DrawTextureV")            public static function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;

    //Text Drawing Functions
    @:native("DrawFPS")                 public static function DrawFPS(posX:Int, posY:Int):Void;
    @:native("DrawText")		public static function DrawText(text:ConstCharStar, posX:Int, posY:Int, FontSize:Int, color:Color):Void;
}
