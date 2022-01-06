<<<<<<< HEAD
/**********************************************************************************************
 *
 *   hxRaylib - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
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

import cpp.ArrayBase;
import cpp.ConstCharStar;
import cpp.ConstStar;
import cpp.Star;
import cpp.UInt16;
import cpp.UInt8;
import cpp.Void;
import haxe.macro.Expr.Constant;

@:include("raylib.h")
extern class Colors
{
    // Basic colors (colours)
    @:native("LIGHTGRAY") static var LIGHTGRAY:Color; // Light Gray
    @:native("GRAY") static var GRAY:Color; // Gray
    @:native("DARKGRAY") static var DARKGRAY:Color; // Dark Gray
    @:native("YELLOW") static var YELLOW:Color; // Yellow
    @:native("GOLD") static var GOLD:Color; // Gold
    @:native("ORANGE") static var ORANGE:Color; // Orange
    @:native("PINK") static var PINK:Color; // Pink
    @:native("RED") static var RED:Color; // Red
    @:native("MAROON") static var MAROON:Color; // Maroon
    @:native("GREEN") static var GREEN:Color; // Green
    @:native("LIME") static var LIME:Color; // Lime
    @:native("DARKGREEN") static var DARKGREEN:Color; // Dark Green
    @:native("SKYBLUE") static var SKYBLUE:Color; // Sky Blue
    @:native("BLUE") static var BLUE:Color; // Blue
    @:native("DARKBLUE") static var DARKBLUE:Color; // Dark Blue
    @:native("PURPLE") static var PURPLE:Color; // Purple
    @:native("VIOLET") static var VIOLET:Color; // Violet
    @:native("DARKPURPLE") static var DARKPURPLE:Color; // Dark Purple
    @:native("BEIGE") static var BEIGE:Color; // Beige
    @:native("BROWN") static var BROWN:Color; // Brown
    @:native("DARKBROWN") static var DARKBROWN:Color; // Dark Brown

    @:native("WHITE") static var WHITE:Color; // White
    @:native("BLACK") static var BLACK:Color; // Black
    @:native("BLANK") static var BLANK:Color; // Blank (Transparent)
    @:native("MAGENTA") static var MAGENTA:Color; // Magenta
    @:native("RAYWHITE") static var RAYWHITE:Color; // Raysan's white (raylib logo)
}

// Vector2, 2 components

@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2
{
    var x:Float; // Vector x component
    var y:Float; // Vector y component

    static inline function create(x:Float, y:Float):Vector2
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
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component

    static inline function create(x:Float, y:Float, z:Float):Vector3
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
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component
    var w:Float; // Vector w component
}

// Quaternion, 4 components (Vector4 alias)
typedef Quaternion = Vector4;

@:include("raylib.h")
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
@:structAccess
extern class Color
{
    var r:cpp.UInt8;
    var g:cpp.UInt8;
    var b:cpp.UInt8;
    var a:cpp.UInt8;

    public static inline function create(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Color
    {
        return untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }
}

// Rectangle, 4 components

@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern class Rectangle
{
    var x:Float; // Rectangle top-left corner position x
    var y:Float; // Rectangle top-left corner position y
    var width:Float; // Rectangle width
    var height:Float; // Rectangle height

    static inline function create(x:Float, y:Float, w:Float, h:Float):Rectangle
    {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, w, h);
    }
}

// Image, pixel data stored in CPU memory (Ram)

@:include("raylib.h")
@:native("Image")
@:structAccess
extern class Image
{
    var data:Star<Void>; // Image raw data
    var width:Int; // Image base width
    var height:Int; // Image base height
    var mipmaps:Int; // Mipmap levels, 1 by default
    var format:Int; // Data format (PixelFormat type)

    public static inline function create(data:cpp.RawPointer<cpp.Void>, width:Int, height:Int, mipmaps:Int, format:Int):Image {
        return untyped __cpp__("{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
    }
}

// Texture, tex data stored in GPU memory (VRAM)

@:include("raylib.h")
@:native("Texture")
@:structAccess
@:unreflective
extern class Texture
{
    var id:UInt; // OpenGL texture id
    var width:Int; // Texture base width
    var height:Int; // Texture base height
    var mipmaps:Int; // Mipmap levels, 1 by deafult
    var format:Int; // Data format (PixelFormat type)
}

// Texture2D, same as Texture
typedef Texture2D = Texture;

// TextureCubemap, same as Texture
typedef TextureCubemap = Texture;

// RenderTexture, fbo for texture rendering

@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RenderTexture
{
    var id:UInt; // OpenGL framebuffer object id
    var texture:Texture; // Color buffer attachment texture
    var depth:Texture; // Depth buffer attachment texture
}

// RenderTexture2D, same as RenderTexture;
typedef RenderTexture2D = RenderTexture;

// NPatchInfo, n-patch layout info

@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern class NPatchInfo
{
    var source:Rectangle; // Texture source rectangle
    var left:Int; // Left border offset
    var top:Int; // Top border offset
    var right:Int; // Right border offset
    var bottom:Int; // Bottom border offeset
    var layout:Int; // Layout of n-patch: 3x3, 1x3 or 3x1
}

// GlyphInfo, font characters glyphs info

@:include("raylib.h")
@:native("GlyphInfo")
@:structAccess
extern class GlyphInfo
{
    var baseSize:Int; // Base size (default chars height)
    var glyphCount:Int; // Number of glyph characters
    var glyphPadding:Int; // Padding around the glyph characters
    var texture:Texture2D; // Texture atlas containing the glyphs
    var recs:Star<Rectangle>; // Rectangles in texture for the glyphs
    var glyphs:Star<GlyphInfo>; // Glyphs info data
}

// CharInfo, for font character info

@:include("raylib.h")
@:native("CharInfo")
@:structAccess
extern class CharInfo
{
    var value:Int; // Character value (Unicode)
    var offsetX:Int; // Character offset X when drawing
    var offsetY:Int; // Character offset Y when drawing
    var advanceX:Int; // Charcter advance position X
    var image:Image; // Character image data
}

// Font, font texture and CharInfo array data

@:include("raylib.h")
@:native("Font")
@:structAccess
extern class Font
{
    var baseSize:Int; // Base size (default chars height)
    var charsCount:Int; // Number of characters
    var charsPadding:Int; // Padding around the chars
    var texture:Texture2D; // Characters texture atlas
    var recs:Star<Rectangle>; // Character rectabgle in texture
    var chars:Star<CharInfo>; // Charcter info data
}

// Camera, defines positon/oreientation in 3d space

@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D
{
    var position:Vector3; // Camera position
    var target:Vector3; // Camera target it looks-at
    var up:Vector3; // Camera up vector (rotation over its axis)
    var fovy:Float; // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
    var projection:Int; // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC

    static inline function create():Camera3D
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
    var offset:Vector2; // Camera offset (displacement from target)
    var target:Vector2; // Camera target (rotation and zoom origin)
    var rotation:Float; // Camera rotation in degrees
    var zoom:Float; // Camera zoom (scaling), should be 1.0f by default

    static inline function create():Camera2D
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

    var Verticies:Star<Float>;
    var textcoords:Star<Float>;
    var texcoord2:Star<Float>;
    var normals:Star<Float>;
    var tangents:Star<Float>;

    var animVertices:Star<Float>;
    var animNormals:Star<Float>;
    var boneIds:Star<Int>;
    var boneWeights:Star<Float>;

    var vaoId:UInt;
    var vboId:Star<UInt>;
}

@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader
{
    var id:UInt;
    var locs:Star<Int>;
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
    var maps:Star<MaterialMap>;
    var params:Array<Float>;
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
    var meshes:Star<Mesh>;
    var materials:Star<Material>;
    var meshMaterials:Star<Int>;

    var boneCount:Int;
    var bones:Star<BoneInfo>;
    var bindPose:Star<Transform>;
}

@:include("raylib.h")
@:native("ModelAnimation")
@:structAccess
extern class ModelAnimation
{
    var boneCount:Int;
    var frameCount:Int;
    var bones:Star<BoneInfo>;
    var framePoses:Star<Star<Transform>>;
}

@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray
{
    var position:Vector3;
    var direction:Vector3;

    static inline function create():Ray
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

    static inline function create():RayCollision
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

    static inline function create(min:Vector3, max:Vector3):BoundingBox
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
    var data:Star<Void>;
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
    var buffer:Star<AudioBuffer>;

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
@:structAccess
extern class Music
{
    var stream:AudioStream;
    var sampleCount:UInt;
    var looping:Bool;

    var ctxType:Int;
    var ctxData:ConstStar<Void>;
}

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

@:include("raylib.h")
extern enum abstract ConfigFlags(UInt)
{
    @:native("FLAG_VSYNC_HINT")
    var FLAG_VSYNC_HINT:UInt;
    @:native("FLAG_FULLSCREEN_MODE")
    var FLAG_FULLSCREEN_MODE:UInt;
    @:native("FLAG_WINDOW_RESZIABLE")
    var FLAG_WINDOW_RESIZABLE:UInt;
    @:native("FLAG_WINDOW_UNDECORATED")
    var FLAG_WINDOW_UNDECORATED:UInt;
    @:native("FLAG_WINDOW_HIDDEN")
    var FLAG_WINDOW_HIDDEN:UInt;
    @:native("FLAG_WINDOW_MINIMIZED")
    var FLAG_WINDOW_MINIMIZED:UInt;
    @:native("FLAG_WINDOW_MAXIMIZED")
    var FLAG_WINDOW_MAXIMIZED:UInt;
    @:native("FLAG_WINDOW_UNFOCUSED")
    var FLAG_WINDOW_UNFOCUSED:UInt;
    @:native("FLAG_WINDOW_TOPMOST")
    var FLAG_WINDOW_TOPMOST:UInt;
    @:native("FLAG_WINDOW_ALWAYS_RUN")
    var FLAG_WINDOW_ALWAYS_RUN:UInt;
    @:native("FLAG_WINDOW_TRANSPARENT")
    var FLAG_WINDOW_TRANSPARENT:UInt;
    @:native("FLAG_WINDOW_HIGHDPI")
    var FLAG_WINDOW_HIGHDPI:UInt;
    @:native("FLAG_MSAA_4X_HINT")
    var FLAG_MSAA_4X_HINT:UInt;
    @:native("FLAG_INTERLACED_HINT")
    var FLAG_INTERLACED_HINT:UInt;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int)
{
    @:native("LOG_ALL")
    static var ALL:Int;
    @:native("LOG_TRACE")
    static var TRACE:Int;
    @:native("LOG_DEBUG")
    static var DEBUG:Int;
    @:native("LOG_INFO")
    static var INFO:Int;
    @:native("LOG_WARNING")
    static var WARNING:Int;
    @:native("LOG_ERROR")
    static var ERROR:Int;
    @:native("LOG_FATAL")
    static var FATAL:Int;
    @:native("LOG_NONE")
    static var NONE:Int;
}

@:include("raylib.h")
extern enum abstract CameraProjection(Int)
{
    @:native("CAMERA_PERSPECTIVE") static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC") static var CAMERA_ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern enum abstract CameraMode(Int)
{
    @:native("CAMERA_CUSTOM") static var CUSTOM:Int;
    @:native("CAMERA_FREE") static var FREE:Int;
    @:native("CAMERA_ORBITAL") static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON") static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON") static var THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract Config(UInt)
{
}

// Keyboard keys (US keyboard layout)
// NOTE: Use GetKeyPressed() to allow redefining
// required keys for alternative layouts

@:include("raylib.h")
extern enum abstract KeyboardKey(Int)
{
    @:native("KEY_NULL")
    static var NULL:Int;
    @:native("KEY_APOSTROPHE")
    static var APOSTROPHE:Int;
    @:native("KEY_COMMA")
    static var COMMA:Int;
    @:native("KEY_MINUS")
    static var MINUS:Int;
    @:native("KEY_PERIOD")
    static var PERIOD:Int;
    @:native("KEY_SLASH")
    static var SLASH:Int;
    @:native("KEY_ZERO")
    static var ZERO:Int;
    @:native("KEY_ONE")
    static var ONE:Int;
    @:native("KEY_TWO")
    static var TWO:Int;
    @:native("KEY_THREE")
    static var THREE:Int;
    @:native("KEY_FOUR")
    static var FOUR:Int;
    @:native("KEY_FIVE")
    static var FIVE:Int;
    @:native("KEY_SIX")
    static var SIX:Int;
    @:native("KEY_SEVEN")
    static var SEVEN:Int;
    @:native("KEY_EIGHT")
    static var EIGHT:Int;
    @:native("KEY_NINE")
    static var NINE:Int;
    @:native("KEY_SEMICOLON")
    static var SEMICOLOR:Int;
    @:native("KEY_EQUAL")
    static var EQUAL:Int;
    @:native("KEY_A")
    static var A:Int;
    @:native("KEY_B")
    static var B:Int;
    @:native("KEY_C")
    static var C:Int;
    @:native("KEY_D")
    static var D:Int;
    @:native("KEY_E")
    static var E:Int;
    @:native("KEY_F")
    static var F:Int;
    @:native("KEY_G")
    static var G:Int;
    @:native("KEY_H")
    static var H:Int;
    @:native("KEY_I")
    static var I:Int;
    @:native("KEY_J")
    static var J:Int;
    @:native("KEY_K")
    static var K:Int;
    @:native("KEY_L")
    static var L:Int;
    @:native("KEY_M")
    static var M:Int;
    @:native("KEY_N")
    static var N:Int;
    @:native("KEY_O")
    static var O:Int;
    @:native("KEY_P")
    static var P:Int;
    @:native("KEY_Q")
    static var Q:Int;
    @:native("KEY_R")
    static var R:Int;
    @:native("KEY_S")
    static var S:Int;
    @:native("KEY_T")
    static var T:Int;
    @:native("KEY_U")
    static var U:Int;
    @:native("KEY_V")
    static var V:Int;
    @:native("KEY_W")
    static var W:Int;
    @:native("KEY_X")
    static var X:Int;
    @:native("KEY_Y")
    static var Y:Int;
    @:native("KEY_Z")
    static var Z:Int;
    @:native("KEY_SPACE")
    static var SPACE:Int;
    @:native("KEY_ESCAPE")
    static var ESCAPE:Int;
    @:native("KEY_ENTER")
    static var ENTER:Int;
    @:native("KEY_TAB")
    static var TAB:Int;
    @:native("KEY_BACKSPACE")
    static var BACKSPACE:Int;
    @:native("KEY_INSERT")
    static var INSERT:Int;
    @:native("KEY_DELETE")
    static var DELETE:Int;
    @:native("KEY_RIGHT")
    static var RIGHT:Int;
    @:native("KEY_LEFT")
    static var LEFT:Int;
    @:native("KEY_DOWN")
    static var DOWN:Int;
    @:native("KEY_UP")
    static var UP:Int;
    @:native("KEY_PAGE_UP")
    static var PAGE_UP:Int;
    @:native("KEY_PAGE_DOWN")
    static var PAGE_DOWN:Int;
    @:native("KEY_HOME")
    static var HOME:Int;
    @:native("KEY_END")
    static var END:Int;
    @:native("KEY_CAPS_LOCK")
    static var CAPS_LOCK:Int;
    @:native("KEY_SCROLL_LOCK")
    static var SCROLL_LOCK:Int;
    @:native("KEY_NUM_LOCK")
    static var NUM_LOCK:Int;
    @:native("KEY_PRINT_SCREEN")
    static var PRINT_SCREEN:Int;
    @:native("KEY_PAUSE")
    static var PAUSE:Int;
    @:native("KEY_F1")
    static var F1:Int;
    @:native("KEY_F2")
    static var F2:Int;
    @:native("KEY_F3")
    static var F3:Int;
    @:native("KEY_F4")
    static var F4:Int;
    @:native("KEY_F5")
    static var F5:Int;
    @:native("KEY_F6")
    static var F6:Int;
    @:native("KEY_F7")
    static var F7:Int;
    @:native("KEY_F8")
    static var F8:Int;
    @:native("KEY_F9")
    static var F9:Int;
    @:native("KEY_F10")
    static var F10:Int;
    @:native("KEY_F11")
    static var F11:Int;
    @:native("KEY_F12")
    static var F12:Int;
    @:native("KEY_LEFT_SHIFT")
    static var LEFT_SHIFT:Int;
    @:native("KEY_LEFT_CONTROL")
    static var LEFT_CONTROL:Int;
    @:native("KEY_LEFT_ALT")
    static var LEFT_ALT:Int;
    @:native("KEY_LEFT_SUPER")
    static var LEFT_SUPER:Int;
    @:native("KEY_RIGHT_SHIFT")
    static var RIGHT_SHIFT:Int;
    @:native("KEY_RIGHT_CONTROL")
    static var RIGHT_CONTROL:Int;
    @:native("KEY_RIGHT_ALT")
    static var RIGHT_ALT:Int;
    @:native("KEY_RIGHT_SUPER")
    static var RIGHT_SUPER:Int;
    @:native("KEY_KB_MENU")
    static var KB_MENU:Int;
    @:native("KEY_LEFT_BRACKET")
    static var LEFT_BRACKET:Int;
    @:native("KEY_BACKSLASH")
    static var BACKLASH:Int;
    @:native("KEY_RIGHT_BRACKET")
    static var RIGHT_BRACKET:Int;
    @:native("KEY_GRAVE")
    static var GRAVE:Int;
    @:native("KEY_KP_0")
    static var KP_0:Int;
    @:native("KEY_KP_1")
    static var KP_1:Int;
    @:native("KEY_KP_2")
    static var KP_2:Int;
    @:native("KEY_KP_3")
    static var KP_3:Int;
    @:native("KEY_KP_4")
    static var KP_4:Int;
    @:native("KEY_KP_5")
    static var KP_5:Int;
    @:native("KEY_KP_6")
    static var KP_6:Int;
    @:native("KEY_KP_7")
    static var KP_7:Int;
    @:native("KEY_KP_8")
    static var KP_8:Int;
    @:native("KEY_KP_9")
    static var KP_9:Int;
    @:native("KEY_KP_DECIMAL")
    static var KP_DECIMAL:Int;
    @:native("KEY_KP_DIVIDE")
    static var KP_DIVIDE:Int;
    @:native("KEY_KP_MULTIPLY")
    static var KP_MULTIPLY:Int;
    @:native("KEY_KP_SUBTRACT")
    static var KP_SUBTRACT:Int;
    @:native("KEY_KP_ADD")
    static var KP_ADD:Int;
    @:native("KEY_KP_ENTER")
    static var KP_ENTER:Int;
    @:native("KEY_KP_EQUAL")
    static var KP_EQUAL:Int;
}

// Mouse buttons

@:include("raylib.h")
extern enum abstract MouseButton(Int)
{
    @:native("MOUSE_BUTTON_LEFT")
    static var LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")
    static var RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")
    static var MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")
    static var SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")
    static var EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")
    static var FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")
    static var BACK:Int;
}

// Mouse cursor

@:include("raylib.h")
extern enum abstract MouseCursor(Int)
{
    @:native("MOUSE_CURSOR_DEFAULT")
    var MOUSE_CURSOR_DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")
    var MOUSE_CURSOR_ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")
    var MOUSE_CURSOR_IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")
    var MOUSE_CURSOR_CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")
    var MOUSE_CURSOR_POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW") // The horizontal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS") // The vertical resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE") // The top-left to bottom-right diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW") // The top-right to bottom-left diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL") // The omni-directional resize/move cursor shape
    var MOUSE_CURSOR_RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED") // The operation-not-allowed shape
    var MOUSE_CURSOR_NOT_ALLOWED:Int;
}

// Gamepad buttons

@:include("raylib.h")
extern enum abstract GamepadButton(UInt)
{
    // This is here just for error checking
    @:native("GAMEPAD_BUTTON_UNKOWN")
    var GAMEPAD_BUTTON_UNKNOWN:UInt;
    // This is normally a DPAD
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")
    var GAMEPAD_BUTTON_LEFT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_FACE_RIGHT")
    var GAMEPAD_BUTTON_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_FACE_DOWN")
    var GAMEPAD_BUTTON_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_FACE_LEFT")
    var GAMEPAD_BUTTON_FACE_LEFT:UInt;
    // This normally corresponds with PlayStation and Xbox controllers
    // XBOX: [Y,X,A,B]
    // PS3: [Triangle,Square,Cross,Circle]
    // No support for 6 button controllers though..
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")
    var GAMEPAD_BUTTON_RIGHT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")
    var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")
    var GAMEPAD_BUTTON_RIGHT_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")
    var GAMEPAD_BUTTON_RIGHT_FACE_LEFT:UInt;
    // Triggers
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_2:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_2:UInt;
    // These are buttons in the center of the gamepad
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")
    var GAMEPAD_BUTTON_MIDDLE_LEFT:UInt; // PS3 Select
    @:native("GAMEPAD_BUTTON_MIDDLE")
    var GAMEPAD_BUTTON_MIDDLE:UInt; // PS Button/XBOX Button
    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")
    var GAMEPAD_BUTTON_MIDDLE_RIGHT:UInt; // PS3 Start
    // These are the joystick press in buttons
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")
    var GAMEPAD_BUTTON_LEFT_THUMB:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")
    var GAMEPAD_BUTTON_RIGHT_THUMB:UInt;
}

// Gampad axis

@:include("raylib.h")
extern enum abstract GamepadAxis(UInt)
{
    // Left stick
    @:native("GAMEPAD_AXIS_LEFT_X")
    var GAMEPAD_AXIS_LEFT_X:UInt;
    @:native("GAMEPAD_AXIS_LEFT_Y")
    var GAMEPAD_AXIS_LEFT_Y:UInt;
    // Right stick
    @:native("GAMEPAD_AXIS_RIGHT_X")
    var GAMEPAD_AXIS_RIGHT_X:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_Y")
    var GAMEPAD_AXIS_RIGHT_Y:UInt;
    // Pressure levels for the back triggers
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")
    var GAMEPAD_AXIS_LEFT_TRIGGER:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")
    var GAMEPAD_AXIS_RIGHT_TRIGGER:UInt;
}

@:include("raylib.h")
extern enum abstract MaterialMapIndex(UInt)
{
    @:native("MATERIAL_MAP_ALBEDO")
    var MATERIAL_MAP_ALBEDO:UInt;
    @:native("MATERIAL_MAP_METALNESS")
    var MATERIAL_MAP_METALNESS:UInt;
    @:native("MATERIAL_MAP_NORMAL")
    var MATERIAL_MAP_NORMAL:UInt;
    @:native("MATERIAL_MAP_ROUGHNESS")
    var MATERIAL_MAP_ROUGHNESS:UInt;
    @:native("MATERIAL_MAP_OCCULSION")
    var MATERIAL_MAP_OCCULSION:UInt;
    @:native("MATERIAL_MAP_EMISSION")
    var MATERIAL_MAP_EMISSION:UInt;
    @:native("MATERIAL_MAP_HEIGHT")
    var MATERIAL_MAP_HEIGHT:UInt;
    @:native("MATERIAL_MAP_CUBEMAP")
    var MATERIAL_MAP_CUBEMAP:UInt;
    @:native("MATERIAL_MAP_IRRADIANCE")
    var MATERIAL_MAP_IRRADIANCE:UInt;
    @:native("MATERIAL_MAP_PREFILTER")
    var MATERIAL_MAP_PREFILTER:UInt;
    @:native("MATERIAL_MAP_BRDG")
    var MATERIAL_MAP_BRDG:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(UInt)
{
    @:native("SHADER_LOC_VERTEX_POSITION")
    var SHADER_LOC_VERTEXT_POSITION:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD01")
    var SHADER_LOC_VERTEX_TEXCOORD01:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD02")
    var SHADER_LOC_VERTEX_TEXCOORD02:UInt;
    @:native("SHADER_LOC_VERTEX_NORMAL")
    var SHADER_LOC_VERTEX_NORMAL:UInt;
    @:native("SHADER_LOC_VERTEX_TANGENT")
    var SHADER_LOC_VERTEX_TANGENT:UInt;
    @:native("SHADER_LOC_VERTEX_COLOR")
    var SHADER_LOC_VERTEX_COLOR:UInt;
    @:native("SHADER_LOC_MATRIX_MVP")
    var SHADER_LOC_MATRIX_MVP:UInt;
    @:native("SHADER_LOC_MATRIX_VIEW")
    var SHADER_LOC_MATRIX_VIEW:UInt;
    @:native("SHADER_LOC_MATRIX_PROJECTION")
    var SHADER_LOC_MATRIX_PROJECTION:UInt;
    @:native("SHADER_LOC_MATRIX_MODEL")
    var SHADER_LOC_MATRIX_MODEL:UInt;
    @:native("SHADER_LOC_MATRIX_NORMAL")
    var SHADER_LOC_MATRIX_NORMAL:UInt;
    @:native("SHADER_LOC_VECTOR_VIEW")
    var SHADER_LOC_VECTOR_VIEW:UInt;
    @:native("SHADER_LOC_COLOR_DIFFUSE")
    var SHADER_LOC_COLOR_DIFFUSE:UInt;
    @:native("SHADER_LOC_COLOR_SPECULAR")
    var SHADER_LOC_COLOR_SPECULAR:UInt;
    @:native("SHADER_LOC_COLOR_AMBIENT")
    var SHADER_LOC_COLOR_AMBIENT:UInt;
    @:native("SHADER_LOC_MAP_ALBEDO")
    var SHADER_LOC_MAP_ALBEDO:UInt;
    @:native("SHADER_LOC_MAP_METALNESS")
    var SHADER_LOC_MAP_METALNESS:UInt;
    @:native("SHADER_LOC_MAP_NORMAL")
    var SHADER_LOC_MAP_NORMAL:UInt;
    @:native("SHADER_LOC_MAP_ROUGHNESS")
    var SHADER_LOC_MAP_ROUGHNESS:UInt;
    @:native("SHADER_LOC_MAP_OCCULSION")
    var SHADER_LOC_MAP_OCCULSION:UInt;
    @:native("SHADER_LOC_MAP_EMISSION")
    var SHADER_LOC_MAP_EMISSION:UInt;
    @:native("SHADER_LOC_MAP_HEIGHT")
    var SHADER_LOC_MAP_HEIGHT:UInt;
    @:native("SHADER_LOC_MAP_CUBEMAP")
    var SHADER_LOC_MAP_CUBEMAP:UInt;
    @:native("SHADER_LOC_MAP_IRRADIANCE")
    var SHADER_LOC_MAP_IRRADIANCE:UInt;
    @:native("SHADER_LOC_MAP_PREFILTER")
    var SHADER_LOC_MAP_PREFILTER:UInt;
    @:native("SHADER_LOC_MAP_BRDF")
    var SHADER_LOC_MAP_BRDF:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderUniformDataType(UInt)
{
    @:native("SHADER_UNIFORM_FLOAT")
    var SHADER_UNIFORM_FLOAT:UInt;
    @:native("SHADER_UNIFORM_VEC2")
    var SHADER_UNIFORM_VEC2:UInt;
    @:native("SHADER_UNIFORM_VEC3")
    var SHADER_UNIFORM_VEC3:UInt;
    @:native("SHADER_UNIFORM_VEC4")
    var SHADER_UNIFORM_VEC4:UInt;
    @:native("SHADER_UNIFORM_INT")
    var SHADER_UNIFORM_INT:UInt;
    @:native("SHADER_UNIFORM_IVEC2")
    var SHADER_UNIFORM_IVEC2:UInt;
    @:native("SHADER_UNIFORM_IVEC3")
    var SHADER_UNIFORM_IVEC3:UInt;
    @:native("SHADER_UNIFORM_IVEC4")
    var SHADER_UNIFORM_IVEC4:UInt;
    @:native("SHADER_UNIFORM_SAMPLER2D")
    var SHADER_UNIFORM_SAMPLER2D:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(UInt)
{
    @:native("SHADER_ATTRIB_FLOAT")
    var SHADER_ATTRIB_FLOAT:UInt;
    @:native("SHADER_ATTRIB_VEC2")
    var SHADER_ATTRIB_VEC2:UInt;
    @:native("SHADER_ATTRIB_VEC3")
    var SHADER_ATTRIB_VEC3:UInt;
    @:native("SHADER_ATTRIB_VEC4")
    var SHADER_ATTRIB_VEC4:UInt;
}

@:include("raylib.h")
extern enum abstract PixelFormat(UInt)
{
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")
    var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")
    var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")
    var PIXELFORMAT_UNCOMPRESSED_R5G6B5:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")
    var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")
    var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32")
    var PIXELFORMAT_UNCOMPRESSED_R32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")
    var PIXELFORMAT_COMPRESSED_DXT1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT1_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT3_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT5_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")
    var PIXELFORMAT_COMPRESSED_ETC1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")
    var PIXELFORMAT_COMPRESSED_ETC2_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")
    var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")
    var PIXELFORMAT_COMPRESSED_PVRT_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")
    var PIXELFORMAT_COMPRESSED_PVRT_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA:UInt;
}

@:include("raylib.h")
extern enum abstract TextureFilter(UInt)
{
    @:native("TEXTURE_FILTER_POINT")
    var TEXTURE_FILTER_POINT:UInt;
    @:native("TEXTURE_FILTER_BILINEAR")
    var TEXTURE_FILTER_BILINEAR:UInt;
    @:native("TEXTURE_FILTER_TRILINEAR")
    var TEXTURE_FILTER_TRILINEAR:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")
    var TEXTURE_FILTER_ANISOTROPIC_4X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")
    var TEXTURE_FILTER_ANISOTROPIC_8X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")
    var TEXTURE_FILTER_ANISOTROPIC_16X:UInt;
}

@:include("raylib.h")
extern enum abstract TextureWrap(UInt)
{
    @:native("TEXTURE_WRAP_REPEAT")
    var TEXTURE_WRAP_REPEAT:UInt;
    @:native("TEXTURE_WRAP_CLAMP")
    var TEXTURE_WRAP_CLAMP:UInt;
    @:native("TEXTURE_WRAP_MIRROR_REPEAT")
    var TEXTURE_WRAP_MIRROR_REPEAT:UInt;
    @:native("TEXTURE_WRAP_MIRROR_CLAMP")
    var TEXTURE_WRAP_MIRROR_CLAMP:UInt;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(UInt)
{
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")
    var CUBEMAP_LAYOUT_AUTO_DETECT:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")
    var CUBEMAP_LAYOUT_LINE_VERTICAL:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")
    var CUBEMAP_LAYOUT_LINE_HORIZONTAL:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")
    var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")
    var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE:UInt;
    @:native("CUBEMAP_LAYOUT_PANORAMA")
    var CUBEMAP_LAYOUT_PANORAMA:UInt;
}

@:include("raylib.h")
extern enum abstract FontType(UInt)
{
    @:native("FONT_DEFAULT")
    var FONT_DEFAULT:UInt;
    @:native("FONT_BITMAP")
    var FONT_BITMAP:UInt;
    @:native("FONT_SDF")
    var FONT_SDF:UInt;
}

@:include("raylib.h")
extern enum abstract BlendMode(UInt)
{
    @:native("BLEND_ALPHA")
    var BLEND_ALPHA:UInt;
    @:native("BLEND_ADDITIVE")
    var BLEND_ADDITIVE:UInt;
    @:native("BLEND_MULTIPLIED")
    var BLEND_MULTIPLIED:UInt;
    @:native("BLEND_ADD_COLORS")
    var BLEND_ADD_COLORS:UInt;
    @:native("BLEND_SUBTRACT_COLORS")
    var BLEND_SUBTRACT_COLORS:UInt;
    @:native("BLEND_CUSTOM")
    var BLEND_CUSTOM:UInt;
}

@:include("raylib.h")
extern enum abstract Gesture(UInt)
{
    @:native("GESTURE_NONE")
    var GESTURE_NONE:UInt;
    @:native("GESTURE_TAP")
    var GESTURE_TAP:UInt;
    @:native("GESTURE_DOUBLETAP")
    var GESTURE_DOUBLETAP:UInt;
    @:native("GESTURE_HOLD")
    var GESTURE_HOLD:UInt;
    @:native("GESTURE_DRAG")
    var GESTURE_DRAG:UInt;
    @:native("GESTURE_SWIPE_RIGHT")
    var GESTURE_SWIPE_RIGHT:UInt;
    @:native("GESTURE_SWIPE_LEFT")
    var GESTURE_SWIPE_LEFT:UInt;
    @:native("GESTURE_SWIPE_UP")
    var GESTURE_SWIPE_UP:UInt;
    @:native("GESTURE_SWIPE_DOWN")
    var GESTURE_SWIPE_DOWN:UInt;
    @:native("GESTURE_PINCH_IN")
    var GESTURE_PINCH_IN:UInt;
    @:native("GESTURE_PINCH_OUT")
    var GESTURE_PINCH_OUT:UInt;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(UInt)
{
    @:native("NPATCH_NINE_PATCH")
    var NPATCH_NINE_PATCH:UInt;
    @:native("NPATCH_THREE_PATCH_VERTICAL")
    var NPATCH_THREE_PATCH_VERTICAL:UInt;
    @:native("NPATCH_THREE_PATCH_HORIZONTAL")
    var NPATCH_THREE_PATCH_HORIZONTAL:UInt;
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
    // Core module
    //------------------------------------------------------------------------------------
    // Window-related functions
    @:native("InitWindow") static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose") static function WindowShouldClose():Bool;
    @:native("CloseWindow") static function CloseWindow():Bool;
    @:native("IsWindowReady") static function IsWindowReady():Bool;
    @:native("IsWindowFullscreen") static function IsWindowFullscreen():Bool;
    @:native("IsWindowHidden") static function IsWindowHidden():Bool;
    @:native("IsWindowMinimized") static function IsWindowsMinimized():Bool;
    @:native("IsWindowMaximized") static function IsWindowMaximized():Bool;
    @:native("IsWindowFocused") static function IsWindowFocused():Bool;
    @:native("IsWindowResized") static function IsWindowResized():Bool;
    @:native("IsWindowState") static function IsWindowState(flag:UInt):Bool;
    @:native("SetWindowState") static function SetWindowFlag(flag:UInt):Void;
    @:native("ClearWindowState") static function ClearWindowState(flag:UInt):Void;
    @:native("ToggleFullscreen") static function ToggleFullscreen():Void;
    @:native("MaximizeWindow") static function MaximizeWindow():Void;
    @:native("MinimizeWindow") static function MinimizeWindow():Void;
    @:native("RestoreWindow") static function RestoreWindow():Void;
    @:native("SetWindowIcon") static function SetWindowIcon(image:Image):Void;
    @:native("SetWindowTitle") static function SetWindowTitle(title:ConstCharStar):Void;
    @:native("SetWindowPosition") static function SetWindowPosition(x:Int, y:Int):Void;
    @:native("SetWindowMonitor") static function SetWindowMonitor(monitor:Int):Void;
    @:native("SetWindowMinSize") static function SetWindowMinSize(width:Int, height:Int):Void;
    @:native("SetWindowSize") static function SetWindowsize(width:Int, height:Int):Void;
    @:native("GetWindowHandle") static function GetWindowHandle():Star<Void>;
    @:native("GetScreenWidth") static function GetScreenWidth():Int;
    @:native("GetScreenHeight") static function GetScreenHeight():Int;
    @:native("GetMonitorCount") static function GetMonitorCount():Int;
    @:native("GetCurrentMonitor") static function GetCurrentMonitor():Int;
    @:native("GetMonitorPosition") static function GetMoniorPosition(monitor:Int):Vector2;
    @:native("GetMonitorWidth") static function GetMonitorWidth(monitor:Int):Int;
    @:native("GetMonitorHeight") static function GetMonitorHeight(monitor:Int):Int;
    @:native("GetMonitorPhysicalWidth") static function GetMonitorPhysicalWidth(monitor:Int):Int;
    @:native("GetMonitorPhysicalHeight") static function GetMonitorPhysicalHeight(monitor:Int):Int;
    @:native("GetMonitorRefershRate") static function GetMonitorRefershRate(monitor:Int):Int;
    @:native("GetWindowPosition") static function GetWndowPosition():Vector2;
    @:native("GetWindowScaleDPI") static function GetWindowScaleDPI():Vector2;
    @:native("GetMonitorName") static function GetMonitorName(monitor:Int):ConstCharStar;
    @:native("SetClipboardText") static function SetClipboardText(text:ConstCharStar):Void;
    @:native("GetClipboardText") static function GetClipboardText():ConstCharStar;

    // Custom frame control functions
    // NOTE: Those functions are intended for advance users that want full control over the frame processing
    // By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timming + PollInputEvents()
    // To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL
    @:native("InitTimer") static function InitTime():Void;
    @:native("WaitTime") static function WaitTime(ms:Float):Void;
    @:native("SwapScreenBuffer") static function SwapScreenBuffer():Void;
    @:native("PollInputEvents") static function PollInputEvents():Void;

    // Cursor-related functions
    @:native("ShowCursor") static function ShowCursor():Void;
    @:native("HideCursor") static function HideCursor():Void;
    @:native("IsCursorHidden") static function IsCursorHidden():Bool;
    @:native("EnableCursor") static function EnableCursor():Void;
    @:native("DisableCursor") static function DisableCursor():Void;
    @:native("IsCursorOnScreen") static function IsCursorOnScreen():Bool;

    // Drawing-related functions
    @:native("ClearBackground") static function ClearBackground(color:Color):Void;
    @:native("BeginDrawing") static function BeginDrawing():Void;
    @:native("EndDrawing") static function EndDrawing():Void;
    @:native("BeginMode2D") static function BeginMode2D(camera:Camera2D):Void;
    @:native("EndMode2D") static function EndMode2D():Void;
    @:native("BeginMode3D") static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D") static function EndMode3D():Void;
    @:native("BeginTextureMode") static function BeginTextureMode(target:RenderTexture2D):Void;
    @:native("EndTextureMode") static function EndTextureMode():Void;
    @:native("BeginShaderMode") static function BeginShaderMode(shader:Shader):Void;
    @:native("EndShaderMode") static function EndShaderMode():Void;
    @:native("BeginBlendMode") static function BeginBlendMode(mode:Int):Void;
    @:native("EndBlendMode") static function EndBlendMode():Void;
    @:native("BeginScissorMode") static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("EndScissorMode") static function EndScissorMode():Void;
    @:native("BeginVrStereoMode") static function BeginVrStereoMode(config:VrStereoConfig):Void;
    @:native("EndVrStereoMode") static function EndVrStereoMode():Void;

    @:native("LoadVrStereoConfig") static function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;
    @:native("UnloadVrStereoConfig") static function UnloadVrStereoConfig(config:VrStereoConfig):Void;

    // Shader manangement function
    @:native("LoadShader") static function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;
    @:native("LoadShaderFromMemory") static function LoadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;
    @:native("GetShaderLocation") static function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;
    @:native("GetShaderLocationAttrib") static function GetShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int;
    @:native("SetShaderValue") static function SetShaderValue(shader:Shader, locIndex:Int, value:ConstStar<Void>, uniformType:Int):Void;
    @:native("SetShaderValueV") static function SetShaderValueV(shader:Shader, locIndex:Int, value:ConstStar<Void>, uniformType:Int, count:Int):Void;
    @:native("SetShaderValueMatrix") static function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;
    @:native("SetShaderValueTexture") static function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void;
    @:native("UnloadShader") static function UnloadShader(shader:Shader):Void;

    // Screen-space-related functions
    @:native("GetMouseRay") static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;
    @:native("GetCameraMatrix") static function GetCameraMatrix(camera:Camera):Matrix;
    @:native("GetCameraMatrix2D") static function GetCameraMatrix2D(camera:Camera2D):Matrix;
    @:native("GetWorldToScreen") static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    @:native("GetWorldToScreenEx") static function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2;
    @:native("GetWorldToScreen2D") static function GetWorldToScreen2D(postition:Vector2, camera:Camera2D):Vector2;
    @:native("GetScreenToWorld") static function GetScreenToWorld(position:Vector2, camera:Camera2D):Vector2;

    // Timing-related functions
    @:native("SetTargetFPS") static function SetTargetFPS(fps:Int):Void;
    @:native("GetFrameTime") static function GetFrameTime():Float;
    @:native("GetFPS") static function GetFPS():Int;
    @:native("GetTime") static function GetTime():Int;

    // Misc. functions
    @:native("GetRandomValue") static function GetRandomValue(min:Int, max:Int):Int;
    @:native("TakeScreenshot") static function TakeScreenshot(fileName:ConstCharStar):Void;
    @:native("SetConfigFlags") static function SetConfigFlags(flags:UInt):Void;

    @:native("TraceLog") static function TraceLog(logLevel:Int, text:ConstCharStar):Void;
    @:native("SetTraceLogLevel") static function SetTraceLogLevel(logLevel:Int):Void;
    @:native("MemAlloc") static function MemAlloc(size:Int):Star<Void>;
    @:native("MemRealloc") static function MemRealloc(ptr:Star<Void>, size:Int):Star<Void>;
    @:native("MemFree") static function MemFree(ptr:Star<Void>):Void;

    // Set custom callback
    // @:native("SetTraceLogCallback")     static function SetTraceLogCallback(callback:TraceLogCallback):Void;
    // Files management functions
    @:native("LoadFileData") static function LoadFileData(filename:ConstCharStar, bytesRead:Star<UInt>):Star<UInt16>;
    @:native("UnloadFileData") static function UnloadFileData(data:Star<UInt16>):Void;
    @:native("SaveFileData") static function SaveFileData(filename:Star<UInt16>, data:Star<Void>, byetsToWrite:UInt):Bool;
    @:native("LoadFileText") static function LoadFileText(fileName:ConstCharStar):ConstCharStar;
    @:native("UnloadFileText") static function UnloadFileText(text:ConstCharStar):Void;
    @:native("SaveFileText") static function SaveFileText(fileName:ConstCharStar, text:ConstCharStar):Bool;
    @:native("FileExists") static function FileExists(fileName:ConstCharStar):Bool;
    @:native("DirectoryExists") static function DirectoryExists(dirPath:ConstCharStar):Bool;
    @:native("IsFileExtension") static function IsFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;
    @:native("GetFileExtension") static function GetFileExtension(fileName:ConstCharStar):ConstCharStar;
    @:native("GetFileName") static function GetFileName(filePath:ConstCharStar):ConstCharStar;
    @:native("GetFileNameWithoutExt") static function GetFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;
    @:native("GetDirectoryPath") static function GetDirectoryPath(filePath:ConstCharStar):ConstCharStar;
    @:native("GetPrevDirectoryPath") static function GetPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;
    @:native("GetWorkingDirectory") static function GetWorkingDirectory():ConstCharStar;
    @:native("GetDirectoryFiles") static function GetDirectoryFiles(dirPath:ConstCharStar, count:Star<Int>):Star<ConstCharStar>;
    @:native("ClearDirectoryFiles") static function ClearDirectoryFiles():Void;
    @:native("ChangeDirectory") static function ChangeDirectory(dir:ConstCharStar):Bool;
    @:native("IsFileDropped") static function IsFiledDropped():Bool;
    @:native("GetDroppedFiles") static function GetDroppedFiles(count:Star<Int>):Star<ConstCharStar>;
    @:native("ClearDroppedFiles") static function ClearDroppedFiles():Void;
    @:native("GetFileModTime") static function GetFileModeTime(fileName:ConstCharStar):Float;

    // Persistent storage management
    @:native("SaveStorageValue") static function SaveStorageValue(postition:UInt, value:Int):Bool;
    @:native("LoadStorageValue") static function LoadStorageValue(position:UInt):Int;

    @:native("OpenURL") static function OpenURL(url:ConstCharStar):Void;

    // Input-related functions: keyboard
    @:native("IsKeyPressed") static function IsKeyPressed(key:Int):Bool;
    @:native("IsKeyDown") static function IsKeyDown(key:Int):Bool;
    @:native("IsKeyReleased") static function IsKeyReleased(key:Int):Bool;
    @:native("IsKeyUp") static function IsKeyUp(key:Int):Bool;
    @:native("SetExitKey") static function SetExitKey(key:Int):Void;
    @:native("GetKeyPressed") static function GetKeyPressed():Int;
    @:native("GetCharPressed") static function GetCharPressed():Int;

    // Input-relate functions: gamepads
    @:native("IsGamepadAvailable") static function IsGamepadAvailable(gamepad:Int):Bool;
    @:native("IsGamepadName") static function IsGamepadName(gamepad:Int, name:ConstCharStar):Bool;
    @:native("GetGamepadName") static function GetGamepadName(gamepad:Int):ConstCharStar;
    @:native("IsGamepadButtonPressed") static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonDown") static function IsGamepadButtonDow(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonReleased") static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonUp") static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;
    @:native("GetGamepadButtonPressed") static function GetGamepadButtonPressed():Int;
    @:native("GetGamepadAxisCount") static function GetGamepadAxisCount(gamepad:Int):Int;
    @:native("GetGamepadAxisMovement") static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Float;
    @:native("SetGamepadMappings") static function SetGamepadMappings(mappings:ConstCharStar):Int;

    // Input-related functions: mouse
    @:native("IsMouseButtonPressed") static function IsMouseButtonPressed(button:Int):Bool;
    @:native("IsMouseButtonDown") static function IsMouseButtonDown(button:Int):Bool;
    @:native("IsMouseButtonReleased") static function IsMouseButtonReleased(button:Int):Bool;
    @:native("IsMouseButtonUp") static function IsMouseButtonUp(buttton:Int):Bool;
    @:native("GetMouseX") static function GetMouseX():Int;
    @:native("GetMouseY") static function GetMouseY():Int;
    @:native("GetMousePosition") static function GetMousePosition():Vector2;
    @:native("GetMouseDelta") static function GetMouseDelta():Vector2;
    @:native("SetMousePosition") static function SetMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset") static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("GetMouseWheelMove") static function GetMouseWheelMove():Float;
    @:native("SetMouseCursor") static function SetMouseCursor(cursor:Int):Void;

    // Input-related functions: touch
    @:native("GetTouchX") static function GetTouchX():Int;
    @:native("GetTouchY") static function GetTouchY():Int;
    @:native("GetTouchPosition") static function GetTouchPosition(index:Int):Vector2;

    // Gestures and Touch Handling Functions (Module: gestures)
    @:native("SetGestureEnabled") static function SetGestureEnabled(flags:UInt):Void;
    @:native("IsGestureDetected") static function IsGestureDetected(gesture:Int):Bool;
    @:native("GetGestureDetected") static function GetGestureDetected():Int;
    @:native("GetTouchPointsCount") static function GetTouchPointsCount():Int;
    @:native("GetGestureHoldDuration") static function GetGestureHoldDuration():Float;
    @:native("GetGestureDragVector") static function GetGestureDragVector():Vector2;
    @:native("GetGestureDragAngle") static function GetGestureDragAngle():Float;
    @:native("GetGesturePinchVector") static function GetGesturePinchVector():Vector2;
    @:native("GetGesturePinchAngle") static function GetGesturePinchAngle():Float;

    // Camera system functions
    @:native("SetCameraMode") static function SetCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera") static function UpdateCamera(camera:Star<Camera>):Void;

    @:native("SetCameraPanControl") static function SetCameraPanControl(keyPan:Int):Void;
    @:native("SetCameraAltControl") static function SetCameraAltControl(keyAlt:Int):Void;
    @:native("SetCameraSmoothZoomControl") static function SetCameraSmoothZoomControl(keySmoothZoom:Int):Void;
    @:native("SetCameraMoveControls") static function SetCameraMoveControls(keyFron:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;

    //------------------------------------------------------------------------------------
    // Shapes module
    //------------------------------------------------------------------------------------
    @:native("SetShapesTexture") static function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;

    // Basic shapes drawing functions
    @:native("DrawPixel") static function DrawPixel(posX:Int, posY:Int, color:Color):Void;
    @:native("DrawPixelV") static function DrawPixelV(position:Vector2, color:Color):Void;
    @:native("DrawLine") static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("DrawLineV") static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;
    @:native("DrawLineEx") static function DrawLienEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezier") static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezierQuad") static function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineStrip") static function DrawLineStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawCircle") static function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    @:native("DrawCircleSector") static function DrawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleSectorLines") static function DrawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleGradient") static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;
    @:native("DrawCircleV") static function DrawCircleV(center:Vector2, radius:Float, color:Color):Void;
    @:native("DrawRectangle") static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleV") static function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;
    @:native("DrawRectangleRec") static function DrawRectangleRec(rec:Rectangle, color:Color):Void;
    @:native("DrawRectanglePro") static function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;
    @:native("DrawRectangleGradientV") static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleGradientH") static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleLines") static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleLinesEx") static function DrawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void;
    @:native("DrawRectangleRounded") static function DrawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;
    @:native("DrawRectangleRoundedLines") static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Int,
        color:Color):Void;
    @:native("DrawTriangle") static function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleLines") static function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleFan") static function DrawTriangleFan(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawTriangleStrip") static function DrawTriangleStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawPoly") static function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLines") static function DrawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLinesEx") static function DrawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;

    // Basic shapes collision detection functions
    @:native("CheckCollisionRecs") static function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;
    @:native("CheckCollisionCircles") static function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;
    @:native("CheckCollisionCircleRec") static function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;
    @:native("CheckCollisionPointRec") static function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;
    @:native("CheckCollisionPointCircle") static function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;
    @:native("CheckCollisionPointTriangle") static function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;
    @:native("CheckCollisionLines") static function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2,
        collisionPoint:Star<Vector2>):Bool;
    @:native("CheckCollisionPointLine") static function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;
    @:native("CheckCollisionRec") static function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

    //------------------------------------------------------------------------------------
    // Textures module
    //------------------------------------------------------------------------------------
    // Image loading functions
    @:native("LoadImage") static function LoadImage(fileName:ConstCharStar):Image;
    @:native("LoadImageRaw") static function LoadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;
    @:native("LoadImageAnim") static function LoadImageAnim(fileName:ConstCharStar, frames:Int):Image;
    @:native("LoadImageFromMemory") static function LoadImageFromMemory(fileType:ConstCharStar, fileData:ConstStar<UInt8>, dataSize:Int):Image;
    @:native("LoadImageFromTexture") static function LoadImageFromTexture(texture:Texture2D):Image;
    @:native("LoadImageFromScreen") static function LoadImageFromScreen():Void;
    @:native("UnloadImage") static function UnloadImage(image:Image):Void;
    @:native("ExportImage") static function ExportImage(image:Image, fileName:ConstCharStar):Bool;
    @:native("ExportImageAsCode") static function ExportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

    // Image generation functions
    @:native("GenImageColor") static function GenImageColor(width:Int, height:Int, color:Color):Image;
    @:native("GenImageGradientV") static function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image;
    @:native("GenImageGradientH") static function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image;
    @:native("GenImageGradientRadial") static function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;
    @:native("GenImageChecked") static function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, color:Color):Image;
    @:native("GenImageWhiteNoise") static function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image;
    @:native("GenImageCellular") static function GenImageCellular(width:Int, height:Int, tileSize:Int):Image;

    // Image manipulation functions
    @:native("ImageCopy") static function ImageCopy(image:Image):Image;
    @:native("ImageFromImage") static function ImageFromImage(image:Image, rec:Rectangle):Image;
    @:native("ImageText") static function ImageText(text:ConstCharStar, fontSize:Int, color:Color):Image;
    @:native("ImageTextEx") static function ImageTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;
    @:native("ImageFormat") static function ImageFormat(image:Star<Image>, newFormat:Int):Void;
    @:native("ImageToPOT") static function ImageToPOT(image:Star<Image>, fill:Color):Void;
    @:native("ImageCrop") static function ImageCrop(image:Star<Image>, crop:Rectangle):Void;
    @:native("ImageAlphaCrop") static function ImageAlphaCrop(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaClear") static function ImageAlphaClear(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaMask") static function ImageAlphaMask(image:Star<Image>, alphaMask:Image):Void;
    @:native("ImageAlphaPremultiply") static function ImageAlphaPremultiply(image:Star<Image>):Void;
    @:native("ImageResize") static function ImageResize(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeNN") static function ImageResizeNN(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeCanvas") static function ImageResizeCanvas(image:Star<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void;
    @:native("ImageMipmaps") static function ImageMipmaps(image:Star<Image>):Void;
    @:native("ImageDither") static function ImageDither(image:Star<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;
    @:native("ImageFlipVertical") static function ImageFlipVertical(image:Star<Image>):Void;
    @:native("ImageFlipHorizontal") static function ImageFlipHorizontal(image:Star<Image>):Void;
    @:native("ImageRotateCW") static function ImageRotateCW(image:Star<Image>):Void;
    @:native("ImageRotateCCW") static function ImageRotateCCW(image:Star<Image>):Void;
    @:native("ImageColorTint") static function ImageColorTint(image:Star<Image>, color:Color):Void;
    @:native("ImageColorInvert") static function ImageColorInvert(image:Star<Image>):Void;
    @:native("ImageColorGrayscale") static function ImageColorGrayscale(image:Star<Image>):Void;
    @:native("ImageColorContrast") static function ImageColorContrast(image:Star<Image>, contrast:Float):Void;
    @:native("ImageColorBrightness") static function ImageColorBrightness(image:Star<Image>, brightness:Int):Void;
    @:native("ImageColorReplace") static function ImageColorReplace(image:Star<Image>, color:Color, replace:Color):Void;
    @:native("LoadImageColors") static function LoadImageColors(image:Image):Star<Color>;
    @:native("LoadImagePalette") static function LoadImagePalette(image:Image, maxPaletteSize:Int, colorsCount:Star<Int>):Star<Color>;
    @:native("UnloadImageColors") static function UnloadImageColors(colors:Star<Color>):Void;
    @:native("UnloadImagePalette") static function UnloadImagePalette(colors:Star<Color>):Void;
    @:native("GetImageAlphaBorder") static function GetImageAlphaBorder(image:Image, threshold:Float):Rectangle;
    @:native("GetImageColor") static function GetImageColor(image:Image, x:Int, y:Int):Color;

    // Image drawing functions
    // NOTE: Image software-rendering functions (CPU)
    @:native("ImageClearBackground") static function ImageClearBackground(dst:Star<Image>, color:Color):Void;
    @:native("ImageDrawPixel") static function ImageDrawPixel(dst:Star<Image>, posX:Int, posY:Int, color:Color):Void;
    @:native("ImageDrawPixelV") static function ImageDrawPixelV(dst:Star<Image>, position:Vector2, color:Color):Void;
    @:native("ImageDrawLine") static function ImageDrawLine(dst:Star<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("ImageDrawLineV") static function ImageDrawLineV(dst:Star<Image>, start:Vector2, end:Vector2, color:Color):Void;
    @:native("ImageDrawCircle") static function ImageDrawCircle(dst:Star<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;
    @:native("ImageDrawCircleV") static function ImageDrawCircleV(dst:Star<Image>, center:Vector2, radius:Int, color:Color):Void;
    @:native("ImageDrawRectangle") static function ImageDrawRectangle(dst:Star<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("ImageDrawRectangleV") static function ImageDrawRectangleV(dst:Star<Image>, position:Vector2, size:Vector2, color:Color):Void;
    @:native("ImageDrawRectangleRec") static function ImageDrawRectangleRec(dst:Star<Image>, rec:Rectangle, color:Color):Void;
    @:native("ImageDrawRectangleLines") static function ImageDrawRectangleLines(dst:Star<Image>, rec:Rectangle, thick:Int, color:Color):Void;
    @:native("ImageDraw") static function ImageDraw(dst:Star<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;
    @:native("ImageDrawText") static function ImageDrawText(dst:Star<Image>, text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;
    @:native("ImageDrawTextEx") static function ImageDrawTextEx(dst:Star<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Float,
        spacing:Float, tint:Color):Void;

    // Texture Loading functions
    // NOTE: These functions require GPU access
    @:native("LoadTexture") static function LoadTexture(fileName:ConstCharStar):Texture2D;
    @:native("LoadTextureFromImage") static function LoadTextureFromImage(image:Image):Texture2D;
    @:native("LoadTextureCubemap") static function LoadTextureCubemap(image:Image, layout:Int):TextureCubemap;
    @:native("LoadRenderTexture") static function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;
    @:native("UnloadTexture") static function UnloadTexture(texture:Texture2D):Void;
    @:native("UnloadRenderTexture") static function UnloadRenderTexture(texture:RenderTexture2D):Void;
    @:native("UpdateTexture") static function UpdateTexture(texture:Texture2D, pixels:ConstStar<Void>):Void;
    @:native("UpdateTextureRec") static function UpdateTextureRec(texture:Texture2D, rec:Rectangle, pixels:ConstStar<Void>):Void;

    // Texture configuration functions
    @:native("GenTextureMipmaps") static function GenTextureMipmaps(texture:Star<Texture2D>):Void;
    @:native("SetTextureFilter") static function SetTextureFilter(texture:Texture2D, filter:Int):Void;
    @:native("SetTextureWrap") static function SetTextureWrap(texture:Texture2D, wrap:Int):Void;

    // Texture drawing functions
    @:native("DrawTexture") static function DrawTexture(texture:Texture2D, posX:Int, posy:Int, tint:Color):Void;
    @:native("DrawTextureV") static function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;
    @:native("DrawTextureEx") static function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;
    @:native("DrawTextureRec") static function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;
    @:native("DrawTextureQuad") static function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;
    @:native("DrawTextureTiled") static function DrawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        scale:Float, tint:Color):Void;
    @:native("DrawTexturePro") static function DrawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTextureNPatch") static function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTexturePoly") static function DrawTexturePoly(texture:Texture2D, center:Vector2, points:Star<Vector2>, texcoords:Star<Vector2>,
        pointsCount:Int, tint:Color):Void;

    // Color pixel related functions
    @:native("Fade") static function Fade(color:Color, alpha:Float):Void;
    @:native("ColorToInt") static function ColorToInt(color:Color):Int;
    @:native("ColorNormalize") static function ColorNormalize(color:Color):Vector4;
    @:native("ColorFromNormalized") static function ColorFromNormalized(normalized:Vector4):Color;
    @:native("ColorToHSV") static function ColorToHSV(color:Color):Vector3;
    @:native("ColorFromHSV") static function ColorFromHSV(hue:Float, saturation:Float, Value:Float):Color;
    @:native("ColorAlpha") static function ColorAlpha(color:Color, alpha:Float):Color;
    @:native("ColorAlphaBlend") static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;
    @:native("GetColor") static function GetColor(hexValue:UInt):Color;
    @:native("GetPixelColor") static function GetPixelColor(srcPtr:Star<Void>, format:PixelFormat):Color;
    @:native("SetPixelColor") static function SetPixelColor(dstPtr:Star<Void>, color:Color, format:Int):Void;
    @:native("GetPixelDataSize") static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

    //------------------------------------------------------------------------------------
    // Font module
    //------------------------------------------------------------------------------------
    // Font loading/unloading functions
    @:native("GetFontDefault") static function GetFontDefault():Void;
    @:native("LoadFont") static function LoadFont(fileName:ConstCharStar):Font;
    @:native("LoadFontEx") static function LoadFontEx(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontFromImage") static function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font;
    @:native("LoadFontFromMemory") static function LoadFontFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int, fontSize:Int,
        fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontData") static function LoadFontData(fileData:ConstStar<UInt8>, dataSize:Int, fontSize:Int, fontChars:Star<Int>, glyphCount:Int,
        type:Int):GlyphInfo;
    @:native("GenImageFontAtlas") static function GenImageFontAtlas(chars:ConstStar<GlyphInfo>, recs:Star<Star<Rectangle>>, glyphCount:Int, fontSize:Int,
        padding:Int, packMethod:Int):Image;
    @:native("UnloadFontData") static function UnloadFontData(chars:Star<GlyphInfo>, glyphCount:Int):Void;
    @:native("UnloadFont") static function UnloadFont(font:Font):Void;

    // Text drawing functions
    @:native("DrawFPS") static function DrawFPS(posX:Int, posY:Int):Void;
    @:native("DrawText") static function DrawText(text:ConstCharStar, posX:Int, posY:Int, FontSize:Int, color:Color):Void;
    @:native("DrawTextEx") static function DrawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;
    @:native("DrawTextPro") static function DrawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, rotation:Float, fontSize:Float,
        spacing:Float, tint:Color):Void;
    @:native("DrawTextCodePoint") static function DrawTextCodePoint(font:Font, codepoint:Int, position:Vector2, fontSize:Float, tint:Color):Void;

    // Text misc. functions
    @:native("MeasureText") static function MeasureText(text:ConstCharStar, fontSize:Int):Int;
    @:native("MeasureTextEx") static function MeasureTextEx(font:Font, text:ConstCharStar, fontsize:Float, tint:Color):Vector2;
    @:native("GetGlyphIndex") static function GetGlyphIndex(font:Font, codepoint:Int):Int;
    @:native("GetGlyphInfo") static function GetGlyphInfo(font:Font, codepoint:Int):GlyphInfo;
    @:native("GetGlyphAtlasRec") static function GetGlyphAtlasRec(font:Font, codepoint:Int):Rectangle;

    //------------------------------------------------------------------------------------
    // Models module
    //------------------------------------------------------------------------------------
    // Basic geometric 3D shapes drawing functions
    @:native("DrawLine3D") static function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;
    @:native("DrawPoint3D") static function DrawPoint3D(position:Vector3, color:Color):Void;
    @:native("DrawCircle3D") static function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void;
    @:native("DrawTriangle3D") static function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleStrip3D") static function DrawTriangleStrip3D(points:Star<Vector3>, pointsCount:Int, color:Color):Void;
    @:native("DrawCube") static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeV") static function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeWires") static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeWiresV") static function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeTexture") static function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float,
        color:Color):Void;
    @:native("DrawCubeTextureRec") static function DrawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float, height:Float,
        length:Float, color:Color):Void;
    @:native("DrawSphere") static function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void;
    @:native("DrawSphereEx") static function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawSphereWires") static function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawCylinder") static function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;
    @:native("DrawCylinderEx") static function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawCylinderWires") static function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int,
        color:Color):Void;
    @:native("DrawCylinderWiresEx") static function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawPlane") static function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;
    @:native("DrawRay") static function DrawRay(ray:Ray, color:Color):Void;
    @:native("DrawGrid") static function DrawGrid(slices:Int, spacing:Float):Void;

    // Model management functions
    @:native("LoadModel") static function LoadModel(fileName:ConstCharStar):Model;
    @:native("LoadModelFromMesh") static function LoadModelFromMesh(mesh:Mesh):Model;
    @:native("UnloadModel") static function UnloadModel(model:Model):Void;
    @:native("UnloadModelKeepMeshes") static function UnloadModelKeepMeshes(model:Model):Void;
    @:native("GetModelBoundingBox") static function GetModelBoundingBox(model:Model):BoundingBox;

    // Model drawing functions
    @:native("DrawModel") static function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelEx") static function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawModelWires") static function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelWiresEx") static function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawBoundingBox") static function DrawBoundingBox(box:BoundingBox, color:Color):Void;
    @:native("DrawBillboard") static function DrawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float, tint:Color):Void;
    @:native("DrawBillboardRec") static function DrawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2,
        tint:Color):Void;
    @:native("DrawBillboardPro") static function DrawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3,
        size:Vector2, origin:Vector2, rotation:Float, tint:Color):Void;

    // Mesh management functions
    @:native("UploadMesh") static function UploadMesh(mesh:Star<Mesh>, dyn:Bool):Void;
    @:native("UpdateMeshBuffer") static function UpdateMeshBuffer(mesh:Mesh, index:Int, data:Star<Void>, dataSize:Int, offset:Int):Void;
    @:native("UnloadMesh") static function UnloadMesh(mesh:Mesh):Void;
    @:native("DrawMesh") static function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;
    @:native("DrawMeshInstanced") static function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:Star<Matrix>, instances:Int):Void;
    @:native("ExportMesh") static function ExportMesh(mesh:Mesh, fileName:ConstCharStar):Bool;
    @:native("GetMeshBoundingBox") static function GetMeshBoundingBox(mesh:Mesh):BoundingBox;
    @:native("GetMeshTangents") static function GetMeshTangents(mesh:Star<Mesh>):Void;
    @:native("GetMeshBinomials") static function GetMeshBinomials(mesh:Star<Mesh>):Void;

    // Mesh generation functions
    @:native("GenMeshPoly") static function GenMeshPoly(sides:Int, radius:Float):Mesh;
    @:native("GenMeshPlane") static function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh;
    @:native("GenMeshCube") static function GenMeshCube(width:Float, height:Float, length:Float):Mesh;
    @:native("GenMeshSphere") static function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshHemiSphere") static function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCylinder") static function GenMeshCylinder(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCone") static function GenMeshCone(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshTorus") static function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshKnot") static function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshHeightMap") static function GenMeshHeightMap(heightMap:Image, size:Vector3):Mesh;
    @:native("GenMeshCubicMap") static function GenMeshCubicMap(cubicmap:Image, cubeSize:Vector3):Mesh;

    // Material loading/unloading functions
    @:native("LoadMaterials") static function LoadMaterials(fileName:ConstCharStar, materialCount:Star<Int>):Star<Material>;
    @:native("LoadMaterialDefault") static function LoadMaterialDefault():Material;
    @:native("UnloadMaterial") static function UnloadMaterial(material:Material):Void;
    @:native("SetMaterialTexture") static function SetMaterialTexture(material:Star<Material>, mapType:Int, texture:Texture2D):Void;
    @:native("SetModelMeshMaterial") static function SetModelMeshMaterial(model:Star<Model>, meshId:Int, materialId:Int):Void;

    // Model animations loading/unloading functions
    @:native("LoadModelAnimations") static function LoadModelAnimations(fileName:ConstCharStar, animCount:Star<UInt>):Star<ModelAnimation>;
    @:native("UpdateModelAnimation") static function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;
    @:native("UnloadModelAnimation") static function UnloadModelAnimation(anim:ModelAnimation):Void;
    @:native("UnloadModelAnimations") static function UnloadModelAnimations(animations:Star<ModelAnimation>, count:UInt):Void;
    @:native("IsModelAnimationValid") static function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

    // Collision detection functions
    @:native("CheckCollisionSpheres") static function CheckCollisionSpheres(center1:Vector3, radius1:Float, center2:Vector3, radius2:Float):Bool;
    @:native("CheckCollisionBoxes") static function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;
    @:native("CheckCollisionBoxSphere") static function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float):Bool;
    @:native("GetRayCollisionSphere") static function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Float):RayCollision;
    @:native("GetRayCollisionBox") static function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;
    @:native("GetRayCollisionModel") static function GetRayCollisionModel(ray:Ray, model:Model):RayCollision;
    @:native("GetRayCollisionMesh") static function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;
    @:native("GetRayCollisionTriangle") static function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;
    @:native("GetRayCollisionQuad") static function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;

    //------------------------------------------------------------------------------------
    // Audio module
    //------------------------------------------------------------------------------------
    // Audio device management functions
    @:native("InitAudioDevice") static function InitAudioDevice():Void;
    @:native("CloseAudioDevice") static function CloseAudioDevice():Void;
    @:native("IsAudioDeviceReady") static function IsAudioDeviceReady():Bool;
    @:native("SetMasterVolume") static function SetMasterVolume(volume:Float):Void;

    // Wave/Sound loading/unloading functions
    @:native("LoadWave") static function LoadWave(fileName:ConstCharStar):Wave;
    @:native("LoadWaveFromMemory") static function LoadWaveFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int):Wave;
    @:native("LoadSound") static function LoadSound(fileName:ConstCharStar):Sound;
    @:native("LoadSoundFromWave") static function LoadSoundFromWave(wave:Wave):Sound;
    @:native("UpdateSound") static function UpdateSound(sound:Sound, data:ConstCharStar, samplesCount:Int):Void;
    @:native("UnloadWave") static function UnloadWave(wave:Wave):Void;
    @:native("UnloadSound") static function UnloadSound(sound:Sound):Void;
    @:native("ExportWave") static function ExportWave(wave:Wave, fileName:ConstCharStar):Bool;
    @:native("ExportWaveAsCode") static function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

    // Wave/Sound management functions
    @:native("PlaySound") static function PlaySound(sound:Sound):Void;
    @:native("StopSound") static function StopSound(sound:Sound):Void;
    @:native("PauseSound") static function PauseSound(sound:Sound):Void;
    @:native("ResumeSound") static function ResumeSound(sound:Sound):Void;
    @:native("PlaySoundMulti") static function PlaySoundMulti(sound:Sound):Void;
    @:native("StopSoundMulti") static function StopSoundMulti():Void;
    @:native("GetSoundsPlaying") static function GetSoundsPlaying():Int;
    @:native("IsSoundPlaying") static function IsSoundPlaying(sound:Sound):Bool;
    @:native("SetSoundVolume") static function SetSoundVolume(sound:Sound, volume:Float):Void;
    @:native("SetSoundPitch") static function SetSoundPitch(sound:Sound, pitch:Float):Void;
    @:native("WaveFormat") static function WaveFormat(wave:Star<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void;
    @:native("WaveCopy") static function WaveCopy(wave:Wave):Wave;
    @:native("WaveCrop") static function WaveCrop(wave:Star<Wave>, initSample:Int, finalSample:Int):Void;
    @:native("LoadWaveSamples") static function LoadWaveSamples(wave:Wave):Star<Float>;
    @:native("UnloadWaveSamples") static function UnloadWaveSamples(samples:Star<Float>):Void;

    // Music management functions
    @:native("LoadMusicStream") static function LoadMusicStream(fileName:ConstCharStar):Music;
    @:native("LoadMusicStreamFromMemory") static function LoadMusicStreamFromMemory(fileType:ConstCharStar, data:Star<UInt8>, dataSize:Int):Music;
    @:native("UnloadMusicStream") static function UnloadMusicStream(music:Music):Void;
    @:native("PlayMusicStream") static function PlayMusicStream(music:Music):Void;
    @:native("IsMusicStreamPlaying") static function IsMusicStreamPlaying(music:Music):Bool;
    @:native("UpdateMusicStream") static function UpdateMusicStream(music:Music):Void;
    @:native("StopMusicStream") static function StopMusicStream(music:Music):Void;
    @:native("PauseMusicStream") static function PauseMusicStream(music:Music):Void;
    @:native("ResumeMusicStream") static function ResumeMusicStream(music:Music):Void;
    @:native("SeekMusicStream") static function SeekMusicStream(music:Music, position:Float):Void;
    @:native("SetMusicVolume") static function SetMusicVolume(music:Music, volume:Float):Void;
    @:native("SetMusicPitch") static function SetMusicPitch(music:Music, pitch:Float):Void;
    @:native("GetMusicTimeLength") static function GetMusicTimeLength(music:Music):Float;
    @:native("GetMusicTimePlayed") static function GetMusicTimePlayed(music:Music):Float;

    // AudioStream management functions
    @:native("InitAudioStream") static function InitAudioStream(sampleRate:UInt, sampleSize:UInt, channels:UInt):AudioStream;
    @:native("UpdateAudioStream") static function UpdateAudioStream(stream:AudioStream, data:ConstStar<Void>, samplesCount:Int):Void;
    @:native("CloseAudioStream") static function CloseAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamProcessed") static function IsAudioStreamProcessed(stream:AudioStream):Bool;
    @:native("PlayAudioStream") static function PlayAudioStream(stream:AudioStream):Void;
    @:native("PauseAudioStream") static function PauseAudioStream(stream:AudioStream):Void;
    @:native("ResumeAudioStream") static function ResumeAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamPlaying") static function IsAudioStreamPlaying(stream:AudioStream):Bool;
    @:native("StopAudioStream") static function StopAudioStream(stream:AudioStream):Void;
    @:native("SetAudioStreamVolume") static function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void;
    @:native("SetAudioStreamPitch") static function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void;
    @:native("SetAudioStreamBufferSizeDefault") static function SetAudioStreamBufferSizeDefault(size:Int):Void;
}
=======
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

import cpp.ArrayBase;
import cpp.ConstCharStar;
import cpp.ConstStar;
import cpp.Star;
import cpp.UInt16;
import cpp.UInt8;
import cpp.Void;
import haxe.macro.Expr.Constant;

@:include("raylib.h")
extern class Colors
{
    // Basic colors (colours)
    @:native("LIGHTGRAY") static var LIGHTGRAY:Color; // Light Gray
    @:native("GRAY") static var GRAY:Color; // Gray
    @:native("DARKGRAY") static var DARKGRAY:Color; // Dark Gray
    @:native("YELLOW") static var YELLOW:Color; // Yellow
    @:native("GOLD") static var GOLD:Color; // Gold
    @:native("ORANGE") static var ORANGE:Color; // Orange
    @:native("PINK") static var PINK:Color; // Pink
    @:native("RED") static var RED:Color; // Red
    @:native("MAROON") static var MAROON:Color; // Maroon
    @:native("GREEN") static var GREEN:Color; // Green
    @:native("LIME") static var LIME:Color; // Lime
    @:native("DARKGREEN") static var DARKGREEN:Color; // Dark Green
    @:native("SKYBLUE") static var SKYBLUE:Color; // Sky Blue
    @:native("BLUE") static var BLUE:Color; // Blue
    @:native("DARKBLUE") static var DARKBLUE:Color; // Dark Blue
    @:native("PURPLE") static var PURPLE:Color; // Purple
    @:native("VIOLET") static var VIOLET:Color; // Violet
    @:native("DARKPURPLE") static var DARKPURPLE:Color; // Dark Purple
    @:native("BEIGE") static var BEIGE:Color; // Beige
    @:native("BROWN") static var BROWN:Color; // Brown
    @:native("DARKBROWN") static var DARKBROWN:Color; // Dark Brown

    @:native("WHITE") static var WHITE:Color; // White
    @:native("BLACK") static var BLACK:Color; // Black
    @:native("BLANK") static var BLANK:Color; // Blank (Transparent)
    @:native("MAGENTA") static var MAGENTA:Color; // Magenta
    @:native("RAYWHITE") static var RAYWHITE:Color; // Raysan's white (raylib logo)
}

// Vector2, 2 components

@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2
{
    var x:Float; // Vector x component
    var y:Float; // Vector y component

    static inline function create(x:Float, y:Float):Vector2
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
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component

    static inline function create(x:Float, y:Float, z:Float):Vector3
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
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component
    var w:Float; // Vector w component
}

// Quaternion, 4 components (Vector4 alias)
typedef Quaternion = Vector4;

// DONE: Complete matrix

@:include("raylib.h")
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
@:structAccess
extern class Color
{
    var r:cpp.UInt8;
    var g:cpp.UInt8;
    var b:cpp.UInt8;
    var a:cpp.UInt8;

    public static inline function create(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Color
    {
        return untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }
}

// Rectangle, 4 components

@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern class Rectangle
{
    var x:Float; // Rectangle top-left corner position x
    var y:Float; // Rectangle top-left corner position y
    var width:Float; // Rectangle width
    var height:Float; // Rectangle height

    static inline function create(x:Float, y:Float, w:Float, h:Float):Rectangle
    {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, w, h);
    }
}

// Image, pixel data stored in CPU memory (Ram)

@:include("raylib.h")
@:native("Image")
@:structAccess
extern class Image
{
    var data:Star<Void>; // Image raw data
    var width:Int; // Image base width
    var height:Int; // Image base height
    var mipmaps:Int; // Mipmap levels, 1 by default
    var format:Int; // Data format (PixelFormat type)

    public static inline function create(data:cpp.RawPointer<cpp.Void>, width:Int, height:Int, mipmaps:Int, format:Int):Image {
        return untyped __cpp__("{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
    }
}

// Texture, tex data stored in GPU memory (VRAM)

@:include("raylib.h")
@:native("Texture")
@:structAccess
@:unreflective
extern class Texture
{
    var id:UInt; // OpenGL texture id
    var width:Int; // Texture base width
    var height:Int; // Texture base height
    var mipmaps:Int; // Mipmap levels, 1 by deafult
    var format:Int; // Data format (PixelFormat type)
}

// Texture2D, same as Texture
typedef Texture2D = Texture;

// TextureCubemap, same as Texture
typedef TextureCubemap = Texture;

// RenderTexture, fbo for texture rendering

@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RenderTexture
{
    var id:UInt; // OpenGL framebuffer object id
    var texture:Texture; // Color buffer attachment texture
    var depth:Texture; // Depth buffer attachment texture
}

// RenderTexture2D, same as RenderTexture;
typedef RenderTexture2D = RenderTexture;

// NPatchInfo, n-patch layout info

@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern class NPatchInfo
{
    var source:Rectangle; // Texture source rectangle
    var left:Int; // Left border offset
    var top:Int; // Top border offset
    var right:Int; // Right border offset
    var bottom:Int; // Bottom border offeset
    var layout:Int; // Layout of n-patch: 3x3, 1x3 or 3x1
}

// GlyphInfo, font characters glyphs info

@:include("raylib.h")
@:native("GlyphInfo")
@:structAccess
extern class GlyphInfo
{
    var baseSize:Int; // Base size (default chars height)
    var glyphCount:Int; // Number of glyph characters
    var glyphPadding:Int; // Padding around the glyph characters
    var texture:Texture2D; // Texture atlas containing the glyphs
    var recs:Star<Rectangle>; // Rectangles in texture for the glyphs
    var glyphs:Star<GlyphInfo>; // Glyphs info data
}

// CharInfo, for font character info

@:include("raylib.h")
@:native("CharInfo")
@:structAccess
extern class CharInfo
{
    var value:Int; // Character value (Unicode)
    var offsetX:Int; // Character offset X when drawing
    var offsetY:Int; // Character offset Y when drawing
    var advanceX:Int; // Charcter advance position X
    var image:Image; // Character image data
}

// Font, font texture and CharInfo array data

@:include("raylib.h")
@:native("Font")
@:structAccess
extern class Font
{
    var baseSize:Int; // Base size (default chars height)
    var charsCount:Int; // Number of characters
    var charsPadding:Int; // Padding around the chars
    var texture:Texture2D; // Characters texture atlas
    var recs:Star<Rectangle>; // Character rectabgle in texture
    var chars:Star<CharInfo>; // Charcter info data
}

// Camera, defines positon/oreientation in 3d space

@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D
{
    var position:Vector3; // Camera position
    var target:Vector3; // Camera target it looks-at
    var up:Vector3; // Camera up vector (rotation over its axis)
    var fovy:Float; // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
    var projection:Int; // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC

    static inline function create():Camera3D
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
    var offset:Vector2; // Camera offset (displacement from target)
    var target:Vector2; // Camera target (rotation and zoom origin)
    var rotation:Float; // Camera rotation in degrees
    var zoom:Float; // Camera zoom (scaling), should be 1.0f by default

    static inline function create():Camera2D
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

    var Verticies:Star<Float>;
    var textcoords:Star<Float>;
    var texcoord2:Star<Float>;
    var normals:Star<Float>;
    var tangents:Star<Float>;

    var animVertices:Star<Float>;
    var animNormals:Star<Float>;
    var boneIds:Star<Int>;
    var boneWeights:Star<Float>;

    var vaoId:UInt;
    var vboId:Star<UInt>;
}

@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader
{
    var id:UInt;
    var locs:Star<Int>;
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
    var maps:Star<MaterialMap>;
    var params:Array<Float>;
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
    var meshes:Star<Mesh>;
    var materials:Star<Material>;
    var meshMaterials:Star<Int>;

    var boneCount:Int;
    var bones:Star<BoneInfo>;
    var bindPose:Star<Transform>;
}

@:include("raylib.h")
@:native("ModelAnimation")
@:structAccess
extern class ModelAnimation
{
    var boneCount:Int;
    var frameCount:Int;
    var bones:Star<BoneInfo>;
    var framePoses:Star<Star<Transform>>;
}

@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray
{
    var position:Vector3;
    var direction:Vector3;

    static inline function create():Ray
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

    static inline function create():RayCollision
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

    static inline function create(min:Vector3, max:Vector3):BoundingBox
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
    var data:Star<Void>;
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
    var buffer:Star<AudioBuffer>;

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
@:structAccess
extern class Music
{
    var stream:AudioStream;
    var sampleCount:UInt;
    var looping:Bool;

    var ctxType:Int;
    var ctxData:ConstStar<Void>;
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
    var FLAG_VSYNC_HINT:UInt;
    @:native("FLAG_FULLSCREEN_MODE")
    var FLAG_FULLSCREEN_MODE:UInt;
    @:native("FLAG_WINDOW_RESIZABLE")
    var FLAG_WINDOW_RESIZABLE:UInt;
    @:native("FLAG_WINDOW_UNDECORATED")
    var FLAG_WINDOW_UNDECORATED:UInt;
    @:native("FLAG_WINDOW_HIDDEN")
    var FLAG_WINDOW_HIDDEN:UInt;
    @:native("FLAG_WINDOW_MINIMIZED")
    var FLAG_WINDOW_MINIMIZED:UInt;
    @:native("FLAG_WINDOW_MAXIMIZED")
    var FLAG_WINDOW_MAXIMIZED:UInt;
    @:native("FLAG_WINDOW_UNFOCUSED")
    var FLAG_WINDOW_UNFOCUSED:UInt;
    @:native("FLAG_WINDOW_TOPMOST")
    var FLAG_WINDOW_TOPMOST:UInt;
    @:native("FLAG_WINDOW_ALWAYS_RUN")
    var FLAG_WINDOW_ALWAYS_RUN:UInt;
    @:native("FLAG_WINDOW_TRANSPARENT")
    var FLAG_WINDOW_TRANSPARENT:UInt;
    @:native("FLAG_WINDOW_HIGHDPI")
    var FLAG_WINDOW_HIGHDPI:UInt;
    @:native("FLAG_MSAA_4X_HINT")
    var FLAG_MSAA_4X_HINT:UInt;
    @:native("FLAG_INTERLACED_HINT")
    var FLAG_INTERLACED_HINT:UInt;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int)
{
    @:native("LOG_ALL")
    static var ALL:Int;
    @:native("LOG_TRACE")
    static var TRACE:Int;
    @:native("LOG_DEBUG")
    static var DEBUG:Int;
    @:native("LOG_INFO")
    static var INFO:Int;
    @:native("LOG_WARNING")
    static var WARNING:Int;
    @:native("LOG_ERROR")
    static var ERROR:Int;
    @:native("LOG_FATAL")
    static var FATAL:Int;
    @:native("LOG_NONE")
    static var NONE:Int;
}

@:include("raylib.h")
extern enum abstract CameraProjection(Int)
{
    @:native("CAMERA_PERSPECTIVE") static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC") static var CAMERA_ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern enum abstract CameraMode(Int)
{
    @:native("CAMERA_CUSTOM") static var CUSTOM:Int;
    @:native("CAMERA_FREE") static var FREE:Int;
    @:native("CAMERA_ORBITAL") static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON") static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON") static var THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract Config(UInt)
{
}

// Keyboard keys (US keyboard layout)
// NOTE: Use GetKeyPressed() to allow redefining
// required keys for alternative layouts

@:include("raylib.h")
extern enum abstract KeyboardKey(Int)
{
    @:native("KEY_NULL")
    static var NULL:Int;
    @:native("KEY_APOSTROPHE")
    static var APOSTROPHE:Int;
    @:native("KEY_COMMA")
    static var COMMA:Int;
    @:native("KEY_MINUS")
    static var MINUS:Int;
    @:native("KEY_PERIOD")
    static var PERIOD:Int;
    @:native("KEY_SLASH")
    static var SLASH:Int;
    @:native("KEY_ZERO")
    static var ZERO:Int;
    @:native("KEY_ONE")
    static var ONE:Int;
    @:native("KEY_TWO")
    static var TWO:Int;
    @:native("KEY_THREE")
    static var THREE:Int;
    @:native("KEY_FOUR")
    static var FOUR:Int;
    @:native("KEY_FIVE")
    static var FIVE:Int;
    @:native("KEY_SIX")
    static var SIX:Int;
    @:native("KEY_SEVEN")
    static var SEVEN:Int;
    @:native("KEY_EIGHT")
    static var EIGHT:Int;
    @:native("KEY_NINE")
    static var NINE:Int;
    @:native("KEY_SEMICOLON")
    static var SEMICOLON:Int;
    @:native("KEY_EQUAL")
    static var EQUAL:Int;
    @:native("KEY_A")
    static var A:Int;
    @:native("KEY_B")
    static var B:Int;
    @:native("KEY_C")
    static var C:Int;
    @:native("KEY_D")
    static var D:Int;
    @:native("KEY_E")
    static var E:Int;
    @:native("KEY_F")
    static var F:Int;
    @:native("KEY_G")
    static var G:Int;
    @:native("KEY_H")
    static var H:Int;
    @:native("KEY_I")
    static var I:Int;
    @:native("KEY_J")
    static var J:Int;
    @:native("KEY_K")
    static var K:Int;
    @:native("KEY_L")
    static var L:Int;
    @:native("KEY_M")
    static var M:Int;
    @:native("KEY_N")
    static var N:Int;
    @:native("KEY_O")
    static var O:Int;
    @:native("KEY_P")
    static var P:Int;
    @:native("KEY_Q")
    static var Q:Int;
    @:native("KEY_R")
    static var R:Int;
    @:native("KEY_S")
    static var S:Int;
    @:native("KEY_T")
    static var T:Int;
    @:native("KEY_U")
    static var U:Int;
    @:native("KEY_V")
    static var V:Int;
    @:native("KEY_W")
    static var W:Int;
    @:native("KEY_X")
    static var X:Int;
    @:native("KEY_Y")
    static var Y:Int;
    @:native("KEY_Z")
    static var Z:Int;
    @:native("KEY_SPACE")
    static var SPACE:Int;
    @:native("KEY_ESCAPE")
    static var ESCAPE:Int;
    @:native("KEY_ENTER")
    static var ENTER:Int;
    @:native("KEY_TAB")
    static var TAB:Int;
    @:native("KEY_BACKSPACE")
    static var BACKSPACE:Int;
    @:native("KEY_INSERT")
    static var INSERT:Int;
    @:native("KEY_DELETE")
    static var DELETE:Int;
    @:native("KEY_RIGHT")
    static var RIGHT:Int;
    @:native("KEY_LEFT")
    static var LEFT:Int;
    @:native("KEY_DOWN")
    static var DOWN:Int;
    @:native("KEY_UP")
    static var UP:Int;
    @:native("KEY_PAGE_UP")
    static var PAGE_UP:Int;
    @:native("KEY_PAGE_DOWN")
    static var PAGE_DOWN:Int;
    @:native("KEY_HOME")
    static var HOME:Int;
    @:native("KEY_END")
    static var END:Int;
    @:native("KEY_CAPS_LOCK")
    static var CAPS_LOCK:Int;
    @:native("KEY_SCROLL_LOCK")
    static var SCROLL_LOCK:Int;
    @:native("KEY_NUM_LOCK")
    static var NUM_LOCK:Int;
    @:native("KEY_PRINT_SCREEN")
    static var PRINT_SCREEN:Int;
    @:native("KEY_PAUSE")
    static var PAUSE:Int;
    @:native("KEY_F1")
    static var F1:Int;
    @:native("KEY_F2")
    static var F2:Int;
    @:native("KEY_F3")
    static var F3:Int;
    @:native("KEY_F4")
    static var F4:Int;
    @:native("KEY_F5")
    static var F5:Int;
    @:native("KEY_F6")
    static var F6:Int;
    @:native("KEY_F7")
    static var F7:Int;
    @:native("KEY_F8")
    static var F8:Int;
    @:native("KEY_F9")
    static var F9:Int;
    @:native("KEY_F10")
    static var F10:Int;
    @:native("KEY_F11")
    static var F11:Int;
    @:native("KEY_F12")
    static var F12:Int;
    @:native("KEY_LEFT_SHIFT")
    static var LEFT_SHIFT:Int;
    @:native("KEY_LEFT_CONTROL")
    static var LEFT_CONTROL:Int;
    @:native("KEY_LEFT_ALT")
    static var LEFT_ALT:Int;
    @:native("KEY_LEFT_SUPER")
    static var LEFT_SUPER:Int;
    @:native("KEY_RIGHT_SHIFT")
    static var RIGHT_SHIFT:Int;
    @:native("KEY_RIGHT_CONTROL")
    static var RIGHT_CONTROL:Int;
    @:native("KEY_RIGHT_ALT")
    static var RIGHT_ALT:Int;
    @:native("KEY_RIGHT_SUPER")
    static var RIGHT_SUPER:Int;
    @:native("KEY_KB_MENU")
    static var KB_MENU:Int;
    @:native("KEY_LEFT_BRACKET")
    static var LEFT_BRACKET:Int;
    @:native("KEY_BACKSLASH")
    static var BACKSLASH:Int;
    @:native("KEY_RIGHT_BRACKET")
    static var RIGHT_BRACKET:Int;
    @:native("KEY_GRAVE")
    static var GRAVE:Int;
    @:native("KEY_KP_0")
    static var KP_0:Int;
    @:native("KEY_KP_1")
    static var KP_1:Int;
    @:native("KEY_KP_2")
    static var KP_2:Int;
    @:native("KEY_KP_3")
    static var KP_3:Int;
    @:native("KEY_KP_4")
    static var KP_4:Int;
    @:native("KEY_KP_5")
    static var KP_5:Int;
    @:native("KEY_KP_6")
    static var KP_6:Int;
    @:native("KEY_KP_7")
    static var KP_7:Int;
    @:native("KEY_KP_8")
    static var KP_8:Int;
    @:native("KEY_KP_9")
    static var KP_9:Int;
    @:native("KEY_KP_DECIMAL")
    static var KP_DECIMAL:Int;
    @:native("KEY_KP_DIVIDE")
    static var KP_DIVIDE:Int;
    @:native("KEY_KP_MULTIPLY")
    static var KP_MULTIPLY:Int;
    @:native("KEY_KP_SUBTRACT")
    static var KP_SUBTRACT:Int;
    @:native("KEY_KP_ADD")
    static var KP_ADD:Int;
    @:native("KEY_KP_ENTER")
    static var KP_ENTER:Int;
    @:native("KEY_KP_EQUAL")
    static var KP_EQUAL:Int;
}

// Mouse buttons

@:include("raylib.h")
extern enum abstract MouseButton(Int)
{
    @:native("MOUSE_BUTTON_LEFT")
    static var LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")
    static var RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")
    static var MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")
    static var SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")
    static var EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")
    static var FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")
    static var BACK:Int;
}

// Mouse cursor

@:include("raylib.h")
extern enum abstract MouseCursor(Int)
{
    @:native("MOUSE_CURSOR_DEFAULT")
    var MOUSE_CURSOR_DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")
    var MOUSE_CURSOR_ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")
    var MOUSE_CURSOR_IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")
    var MOUSE_CURSOR_CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")
    var MOUSE_CURSOR_POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW") // The horizontal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS") // The vertical resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE") // The top-left to bottom-right diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW") // The top-right to bottom-left diagonal resize/move arrow shape
    var MOUSE_CURSOR_RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL") // The omni-directional resize/move cursor shape
    var MOUSE_CURSOR_RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED") // The operation-not-allowed shape
    var MOUSE_CURSOR_NOT_ALLOWED:Int;
}

// Gamepad buttons

@:include("raylib.h")
extern enum abstract GamepadButton(UInt)
{
    // This is here just for error checking
    @:native("GAMEPAD_BUTTON_UNKNOWN")
    var GAMEPAD_BUTTON_UNKNOWN:UInt;
    // This is normally a DPAD
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")
    var GAMEPAD_BUTTON_LEFT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_RIGHT")
    var GAMEPAD_BUTTON_LEFT_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_DOWN")
    var GAMEPAD_BUTTON_LEFT_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_LEFT")
    var GAMEPAD_BUTTON_LEFT_FACE_LEFT:UInt;
    // This normally corresponds with PlayStation and Xbox controllers
    // XBOX: [Y,X,A,B]
    // PS3: [Triangle,Square,Cross,Circle]
    // No support for 6 button controllers though..
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")
    var GAMEPAD_BUTTON_RIGHT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")
    var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")
    var GAMEPAD_BUTTON_RIGHT_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")
    var GAMEPAD_BUTTON_RIGHT_FACE_LEFT:UInt;
    // Triggers
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")
    var GAMEPAD_BUTTON_LEFT_TRIGGER_2:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_2:UInt;
    // These are buttons in the center of the gamepad
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")
    var GAMEPAD_BUTTON_MIDDLE_LEFT:UInt; // PS3 Select
    @:native("GAMEPAD_BUTTON_MIDDLE")
    var GAMEPAD_BUTTON_MIDDLE:UInt; // PS Button/XBOX Button
    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")
    var GAMEPAD_BUTTON_MIDDLE_RIGHT:UInt; // PS3 Start
    // These are the joystick press in buttons
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")
    var GAMEPAD_BUTTON_LEFT_THUMB:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")
    var GAMEPAD_BUTTON_RIGHT_THUMB:UInt;
}

// Gampad axis

@:include("raylib.h")
extern enum abstract GamepadAxis(UInt)
{
    // Left stick
    @:native("GAMEPAD_AXIS_LEFT_X")
    var GAMEPAD_AXIS_LEFT_X:UInt;
    @:native("GAMEPAD_AXIS_LEFT_Y")
    var GAMEPAD_AXIS_LEFT_Y:UInt;
    // Right stick
    @:native("GAMEPAD_AXIS_RIGHT_X")
    var GAMEPAD_AXIS_RIGHT_X:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_Y")
    var GAMEPAD_AXIS_RIGHT_Y:UInt;
    // Pressure levels for the back triggers
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")
    var GAMEPAD_AXIS_LEFT_TRIGGER:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")
    var GAMEPAD_AXIS_RIGHT_TRIGGER:UInt;
}

@:include("raylib.h")
extern enum abstract MaterialMapIndex(UInt)
{
    @:native("MATERIAL_MAP_ALBEDO")
    var MATERIAL_MAP_ALBEDO:UInt;
    @:native("MATERIAL_MAP_METALNESS")
    var MATERIAL_MAP_METALNESS:UInt;
    @:native("MATERIAL_MAP_NORMAL")
    var MATERIAL_MAP_NORMAL:UInt;
    @:native("MATERIAL_MAP_ROUGHNESS")
    var MATERIAL_MAP_ROUGHNESS:UInt;
    @:native("MATERIAL_MAP_OCCLUSION")
    var MATERIAL_MAP_OCCLUSION:UInt;
    @:native("MATERIAL_MAP_EMISSION")
    var MATERIAL_MAP_EMISSION:UInt;
    @:native("MATERIAL_MAP_HEIGHT")
    var MATERIAL_MAP_HEIGHT:UInt;
    @:native("MATERIAL_MAP_CUBEMAP")
    var MATERIAL_MAP_CUBEMAP:UInt;
    @:native("MATERIAL_MAP_IRRADIANCE")
    var MATERIAL_MAP_IRRADIANCE:UInt;
    @:native("MATERIAL_MAP_PREFILTER")
    var MATERIAL_MAP_PREFILTER:UInt;
    @:native("MATERIAL_MAP_BRDF")
    var MATERIAL_MAP_BRDF:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(UInt)
{
    @:native("SHADER_LOC_VERTEX_POSITION")
    var SHADER_LOC_VERTEX_POSITION:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD01")
    var SHADER_LOC_VERTEX_TEXCOORD01:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD02")
    var SHADER_LOC_VERTEX_TEXCOORD02:UInt;
    @:native("SHADER_LOC_VERTEX_NORMAL")
    var SHADER_LOC_VERTEX_NORMAL:UInt;
    @:native("SHADER_LOC_VERTEX_TANGENT")
    var SHADER_LOC_VERTEX_TANGENT:UInt;
    @:native("SHADER_LOC_VERTEX_COLOR")
    var SHADER_LOC_VERTEX_COLOR:UInt;
    @:native("SHADER_LOC_MATRIX_MVP")
    var SHADER_LOC_MATRIX_MVP:UInt;
    @:native("SHADER_LOC_MATRIX_VIEW")
    var SHADER_LOC_MATRIX_VIEW:UInt;
    @:native("SHADER_LOC_MATRIX_PROJECTION")
    var SHADER_LOC_MATRIX_PROJECTION:UInt;
    @:native("SHADER_LOC_MATRIX_MODEL")
    var SHADER_LOC_MATRIX_MODEL:UInt;
    @:native("SHADER_LOC_MATRIX_NORMAL")
    var SHADER_LOC_MATRIX_NORMAL:UInt;
    @:native("SHADER_LOC_VECTOR_VIEW")
    var SHADER_LOC_VECTOR_VIEW:UInt;
    @:native("SHADER_LOC_COLOR_DIFFUSE")
    var SHADER_LOC_COLOR_DIFFUSE:UInt;
    @:native("SHADER_LOC_COLOR_SPECULAR")
    var SHADER_LOC_COLOR_SPECULAR:UInt;
    @:native("SHADER_LOC_COLOR_AMBIENT")
    var SHADER_LOC_COLOR_AMBIENT:UInt;
    @:native("SHADER_LOC_MAP_ALBEDO")
    var SHADER_LOC_MAP_ALBEDO:UInt;
    @:native("SHADER_LOC_MAP_METALNESS")
    var SHADER_LOC_MAP_METALNESS:UInt;
    @:native("SHADER_LOC_MAP_NORMAL")
    var SHADER_LOC_MAP_NORMAL:UInt;
    @:native("SHADER_LOC_MAP_ROUGHNESS")
    var SHADER_LOC_MAP_ROUGHNESS:UInt;
    @:native("SHADER_LOC_MAP_OCCLUSION")
    var SHADER_LOC_MAP_OCCLUSION:UInt;
    @:native("SHADER_LOC_MAP_EMISSION")
    var SHADER_LOC_MAP_EMISSION:UInt;
    @:native("SHADER_LOC_MAP_HEIGHT")
    var SHADER_LOC_MAP_HEIGHT:UInt;
    @:native("SHADER_LOC_MAP_CUBEMAP")
    var SHADER_LOC_MAP_CUBEMAP:UInt;
    @:native("SHADER_LOC_MAP_IRRADIANCE")
    var SHADER_LOC_MAP_IRRADIANCE:UInt;
    @:native("SHADER_LOC_MAP_PREFILTER")
    var SHADER_LOC_MAP_PREFILTER:UInt;
    @:native("SHADER_LOC_MAP_BRDF")
    var SHADER_LOC_MAP_BRDF:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderUniformDataType(UInt)
{
    @:native("SHADER_UNIFORM_FLOAT")
    var SHADER_UNIFORM_FLOAT:UInt;
    @:native("SHADER_UNIFORM_VEC2")
    var SHADER_UNIFORM_VEC2:UInt;
    @:native("SHADER_UNIFORM_VEC3")
    var SHADER_UNIFORM_VEC3:UInt;
    @:native("SHADER_UNIFORM_VEC4")
    var SHADER_UNIFORM_VEC4:UInt;
    @:native("SHADER_UNIFORM_INT")
    var SHADER_UNIFORM_INT:UInt;
    @:native("SHADER_UNIFORM_IVEC2")
    var SHADER_UNIFORM_IVEC2:UInt;
    @:native("SHADER_UNIFORM_IVEC3")
    var SHADER_UNIFORM_IVEC3:UInt;
    @:native("SHADER_UNIFORM_IVEC4")
    var SHADER_UNIFORM_IVEC4:UInt;
    @:native("SHADER_UNIFORM_SAMPLER2D")
    var SHADER_UNIFORM_SAMPLER2D:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(UInt)
{
    @:native("SHADER_ATTRIB_FLOAT")
    var SHADER_ATTRIB_FLOAT:UInt;
    @:native("SHADER_ATTRIB_VEC2")
    var SHADER_ATTRIB_VEC2:UInt;
    @:native("SHADER_ATTRIB_VEC3")
    var SHADER_ATTRIB_VEC3:UInt;
    @:native("SHADER_ATTRIB_VEC4")
    var SHADER_ATTRIB_VEC4:UInt;
}

@:include("raylib.h")
extern enum abstract PixelFormat(UInt)
{
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")
    var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")
    var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")
    var PIXELFORMAT_UNCOMPRESSED_R5G6B5:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")
    var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")
    var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32")
    var PIXELFORMAT_UNCOMPRESSED_R32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")
    var PIXELFORMAT_COMPRESSED_DXT1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT1_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT3_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")
    var PIXELFORMAT_COMPRESSED_DXT5_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")
    var PIXELFORMAT_COMPRESSED_ETC1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")
    var PIXELFORMAT_COMPRESSED_ETC2_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")
    var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")
    var PIXELFORMAT_COMPRESSED_PVRT_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")
    var PIXELFORMAT_COMPRESSED_PVRT_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")
    var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA:UInt;
}

@:include("raylib.h")
extern enum abstract TextureFilter(UInt)
{
    @:native("TEXTURE_FILTER_POINT")
    var TEXTURE_FILTER_POINT:UInt;
    @:native("TEXTURE_FILTER_BILINEAR")
    var TEXTURE_FILTER_BILINEAR:UInt;
    @:native("TEXTURE_FILTER_TRILINEAR")
    var TEXTURE_FILTER_TRILINEAR:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")
    var TEXTURE_FILTER_ANISOTROPIC_4X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")
    var TEXTURE_FILTER_ANISOTROPIC_8X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")
    var TEXTURE_FILTER_ANISOTROPIC_16X:UInt;
}

@:include("raylib.h")
extern enum abstract TextureWrap(UInt)
{
    @:native("TEXTURE_WRAP_REPEAT")
    var TEXTURE_WRAP_REPEAT:UInt;
    @:native("TEXTURE_WRAP_CLAMP")
    var TEXTURE_WRAP_CLAMP:UInt;
    @:native("TEXTURE_WRAP_MIRROR_REPEAT")
    var TEXTURE_WRAP_MIRROR_REPEAT:UInt;
    @:native("TEXTURE_WRAP_MIRROR_CLAMP")
    var TEXTURE_WRAP_MIRROR_CLAMP:UInt;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(UInt)
{
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")
    var CUBEMAP_LAYOUT_AUTO_DETECT:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")
    var CUBEMAP_LAYOUT_LINE_VERTICAL:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")
    var CUBEMAP_LAYOUT_LINE_HORIZONTAL:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")
    var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")
    var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE:UInt;
    @:native("CUBEMAP_LAYOUT_PANORAMA")
    var CUBEMAP_LAYOUT_PANORAMA:UInt;
}

@:include("raylib.h")
extern enum abstract FontType(UInt)
{
    @:native("FONT_DEFAULT")
    var FONT_DEFAULT:UInt;
    @:native("FONT_BITMAP")
    var FONT_BITMAP:UInt;
    @:native("FONT_SDF")
    var FONT_SDF:UInt;
}

@:include("raylib.h")
extern enum abstract BlendMode(UInt)
{
    @:native("BLEND_ALPHA")
    var BLEND_ALPHA:UInt;
    @:native("BLEND_ADDITIVE")
    var BLEND_ADDITIVE:UInt;
    @:native("BLEND_MULTIPLIED")
    var BLEND_MULTIPLIED:UInt;
    @:native("BLEND_ADD_COLORS")
    var BLEND_ADD_COLORS:UInt;
    @:native("BLEND_SUBTRACT_COLORS")
    var BLEND_SUBTRACT_COLORS:UInt;
    @:native("BLEND_CUSTOM")
    var BLEND_CUSTOM:UInt;
}

@:include("raylib.h")
extern enum abstract Gesture(UInt)
{
    @:native("GESTURE_NONE")
    var GESTURE_NONE:UInt;
    @:native("GESTURE_TAP")
    var GESTURE_TAP:UInt;
    @:native("GESTURE_DOUBLETAP")
    var GESTURE_DOUBLETAP:UInt;
    @:native("GESTURE_HOLD")
    var GESTURE_HOLD:UInt;
    @:native("GESTURE_DRAG")
    var GESTURE_DRAG:UInt;
    @:native("GESTURE_SWIPE_RIGHT")
    var GESTURE_SWIPE_RIGHT:UInt;
    @:native("GESTURE_SWIPE_LEFT")
    var GESTURE_SWIPE_LEFT:UInt;
    @:native("GESTURE_SWIPE_UP")
    var GESTURE_SWIPE_UP:UInt;
    @:native("GESTURE_SWIPE_DOWN")
    var GESTURE_SWIPE_DOWN:UInt;
    @:native("GESTURE_PINCH_IN")
    var GESTURE_PINCH_IN:UInt;
    @:native("GESTURE_PINCH_OUT")
    var GESTURE_PINCH_OUT:UInt;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(UInt)
{
    @:native("NPATCH_NINE_PATCH")
    var NPATCH_NINE_PATCH:UInt;
    @:native("NPATCH_THREE_PATCH_VERTICAL")
    var NPATCH_THREE_PATCH_VERTICAL:UInt;
    @:native("NPATCH_THREE_PATCH_HORIZONTAL")
    var NPATCH_THREE_PATCH_HORIZONTAL:UInt;
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
    // Core module
    //------------------------------------------------------------------------------------
    // Window-related functions
    @:native("InitWindow") static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose") static function WindowShouldClose():Bool;
    @:native("CloseWindow") static function CloseWindow():Bool;
    @:native("IsWindowReady") static function IsWindowReady():Bool;
    @:native("IsWindowFullscreen") static function IsWindowFullscreen():Bool;
    @:native("IsWindowHidden") static function IsWindowHidden():Bool;
    @:native("IsWindowMinimized") static function IsWindowsMinimized():Bool;
    @:native("IsWindowMaximized") static function IsWindowMaximized():Bool;
    @:native("IsWindowFocused") static function IsWindowFocused():Bool;
    @:native("IsWindowResized") static function IsWindowResized():Bool;
    @:native("IsWindowState") static function IsWindowState(flag:UInt):Bool;
    @:native("SetWindowState") static function SetWindowState(flag:UInt):Void;
    @:native("ClearWindowState") static function ClearWindowState(flag:UInt):Void;
    @:native("ToggleFullscreen") static function ToggleFullscreen():Void;
    @:native("MaximizeWindow") static function MaximizeWindow():Void;
    @:native("MinimizeWindow") static function MinimizeWindow():Void;
    @:native("RestoreWindow") static function RestoreWindow():Void;
    @:native("SetWindowIcon") static function SetWindowIcon(image:Image):Void;
    @:native("SetWindowTitle") static function SetWindowTitle(title:ConstCharStar):Void;
    @:native("SetWindowPosition") static function SetWindowPosition(x:Int, y:Int):Void;
    @:native("SetWindowMonitor") static function SetWindowMonitor(monitor:Int):Void;
    @:native("SetWindowMinSize") static function SetWindowMinSize(width:Int, height:Int):Void;
    @:native("SetWindowSize") static function SetWindowSize(width:Int, height:Int):Void;
    @:native("GetWindowHandle") static function GetWindowHandle():Star<Void>;
    @:native("GetScreenWidth") static function GetScreenWidth():Int;
    @:native("GetScreenHeight") static function GetScreenHeight():Int;
    @:native("GetMonitorCount") static function GetMonitorCount():Int;
    @:native("GetCurrentMonitor") static function GetCurrentMonitor():Int;
    @:native("GetMonitorPosition") static function GetMonitorPosition(monitor:Int):Vector2;
    @:native("GetMonitorWidth") static function GetMonitorWidth(monitor:Int):Int;
    @:native("GetMonitorHeight") static function GetMonitorHeight(monitor:Int):Int;
    @:native("GetMonitorPhysicalWidth") static function GetMonitorPhysicalWidth(monitor:Int):Int;
    @:native("GetMonitorPhysicalHeight") static function GetMonitorPhysicalHeight(monitor:Int):Int;
    @:native("GetMonitorRefershRate") static function GetMonitorRefershRate(monitor:Int):Int;
    @:native("GetWindowPosition") static function GetWindowPosition():Vector2;
    @:native("GetWindowScaleDPI") static function GetWindowScaleDPI():Vector2;
    @:native("GetMonitorName") static function GetMonitorName(monitor:Int):ConstCharStar;
    @:native("SetClipboardText") static function SetClipboardText(text:ConstCharStar):Void;
    @:native("GetClipboardText") static function GetClipboardText():ConstCharStar;

    // Custom frame control functions
    // NOTE: Those functions are intended for advance users that want full control over the frame processing
    // By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timming + PollInputEvents()
    // To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL
    @:native("InitTimer") static function InitTimer():Void;
    @:native("WaitTime") static function WaitTime(ms:Float):Void;
    @:native("SwapScreenBuffer") static function SwapScreenBuffer():Void;
    @:native("PollInputEvents") static function PollInputEvents():Void;

    // Cursor-related functions
    @:native("ShowCursor") static function ShowCursor():Void;
    @:native("HideCursor") static function HideCursor():Void;
    @:native("IsCursorHidden") static function IsCursorHidden():Bool;
    @:native("EnableCursor") static function EnableCursor():Void;
    @:native("DisableCursor") static function DisableCursor():Void;
    @:native("IsCursorOnScreen") static function IsCursorOnScreen():Bool;

    // Drawing-related functions
    @:native("ClearBackground") static function ClearBackground(color:Color):Void;
    @:native("BeginDrawing") static function BeginDrawing():Void;
    @:native("EndDrawing") static function EndDrawing():Void;
    @:native("BeginMode2D") static function BeginMode2D(camera:Camera2D):Void;
    @:native("EndMode2D") static function EndMode2D():Void;
    @:native("BeginMode3D") static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D") static function EndMode3D():Void;
    @:native("BeginTextureMode") static function BeginTextureMode(target:RenderTexture2D):Void;
    @:native("EndTextureMode") static function EndTextureMode():Void;
    @:native("BeginShaderMode") static function BeginShaderMode(shader:Shader):Void;
    @:native("EndShaderMode") static function EndShaderMode():Void;
    @:native("BeginBlendMode") static function BeginBlendMode(mode:Int):Void;
    @:native("EndBlendMode") static function EndBlendMode():Void;
    @:native("BeginScissorMode") static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("EndScissorMode") static function EndScissorMode():Void;
    @:native("BeginVrStereoMode") static function BeginVrStereoMode(config:VrStereoConfig):Void;
    @:native("EndVrStereoMode") static function EndVrStereoMode():Void;

    @:native("LoadVrStereoConfig") static function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;
    @:native("UnloadVrStereoConfig") static function UnloadVrStereoConfig(config:VrStereoConfig):Void;

    // Shader manangement function
    @:native("LoadShader") static function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;
    @:native("LoadShaderFromMemory") static function LoadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;
    @:native("GetShaderLocation") static function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;
    @:native("GetShaderLocationAttrib") static function GetShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int;
    @:native("SetShaderValue") static function SetShaderValue(shader:Shader, locIndex:Int, value:ConstStar<Void>, uniformType:Int):Void;
    @:native("SetShaderValueV") static function SetShaderValueV(shader:Shader, locIndex:Int, value:ConstStar<Void>, uniformType:Int, count:Int):Void;
    @:native("SetShaderValueMatrix") static function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;
    @:native("SetShaderValueTexture") static function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void;
    @:native("UnloadShader") static function UnloadShader(shader:Shader):Void;

    // Screen-space-related functions
    @:native("GetMouseRay") static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;
    @:native("GetCameraMatrix") static function GetCameraMatrix(camera:Camera):Matrix;
    @:native("GetCameraMatrix2D") static function GetCameraMatrix2D(camera:Camera2D):Matrix;
    @:native("GetWorldToScreen") static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    @:native("GetWorldToScreenEx") static function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2;
    @:native("GetWorldToScreen2D") static function GetWorldToScreen2D(postition:Vector2, camera:Camera2D):Vector2;
    @:native("GetScreenToWorld") static function GetScreenToWorld(position:Vector2, camera:Camera2D):Vector2;

    // Timing-related functions
    @:native("SetTargetFPS") static function SetTargetFPS(fps:Int):Void;
    @:native("GetFrameTime") static function GetFrameTime():Float;
    @:native("GetFPS") static function GetFPS():Int;
    @:native("GetTime") static function GetTime():Int;

    // Misc. functions
    @:native("GetRandomValue") static function GetRandomValue(min:Int, max:Int):Int;
    @:native("TakeScreenshot") static function TakeScreenshot(fileName:ConstCharStar):Void;
    @:native("SetConfigFlags") static function SetConfigFlags(flags:UInt):Void;

    @:native("TraceLog") static function TraceLog(logLevel:Int, text:ConstCharStar):Void;
    @:native("SetTraceLogLevel") static function SetTraceLogLevel(logLevel:Int):Void;
    @:native("MemAlloc") static function MemAlloc(size:Int):Star<Void>;
    @:native("MemRealloc") static function MemRealloc(ptr:Star<Void>, size:Int):Star<Void>;
    @:native("MemFree") static function MemFree(ptr:Star<Void>):Void;

    // Set custom callback
    // @:native("SetTraceLogCallback")     static function SetTraceLogCallback(callback:TraceLogCallback):Void;
    // Files management functions
    @:native("LoadFileData") static function LoadFileData(filename:ConstCharStar, bytesRead:Star<UInt>):Star<UInt16>;
    @:native("UnloadFileData") static function UnloadFileData(data:Star<UInt16>):Void;
    @:native("SaveFileData") static function SaveFileData(filename:Star<UInt16>, data:Star<Void>, byetsToWrite:UInt):Bool;
    @:native("LoadFileText") static function LoadFileText(fileName:ConstCharStar):ConstCharStar;
    @:native("UnloadFileText") static function UnloadFileText(text:ConstCharStar):Void;
    @:native("SaveFileText") static function SaveFileText(fileName:ConstCharStar, text:ConstCharStar):Bool;
    @:native("FileExists") static function FileExists(fileName:ConstCharStar):Bool;
    @:native("DirectoryExists") static function DirectoryExists(dirPath:ConstCharStar):Bool;
    @:native("IsFileExtension") static function IsFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;
    @:native("GetFileExtension") static function GetFileExtension(fileName:ConstCharStar):ConstCharStar;
    @:native("GetFileName") static function GetFileName(filePath:ConstCharStar):ConstCharStar;
    @:native("GetFileNameWithoutExt") static function GetFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;
    @:native("GetDirectoryPath") static function GetDirectoryPath(filePath:ConstCharStar):ConstCharStar;
    @:native("GetPrevDirectoryPath") static function GetPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;
    @:native("GetWorkingDirectory") static function GetWorkingDirectory():ConstCharStar;
    @:native("GetDirectoryFiles") static function GetDirectoryFiles(dirPath:ConstCharStar, count:Star<Int>):Star<ConstCharStar>;
    @:native("ClearDirectoryFiles") static function ClearDirectoryFiles():Void;
    @:native("ChangeDirectory") static function ChangeDirectory(dir:ConstCharStar):Bool;
    @:native("IsFileDropped") static function IsFileDropped():Bool;
    @:native("GetDroppedFiles") static function GetDroppedFiles(count:Star<Int>):Star<ConstCharStar>;
    @:native("ClearDroppedFiles") static function ClearDroppedFiles():Void;
    @:native("GetFileModTime") static function GetFileModTime(fileName:ConstCharStar):Float;

    // Persistent storage management
    @:native("SaveStorageValue") static function SaveStorageValue(postition:UInt, value:Int):Bool;
    @:native("LoadStorageValue") static function LoadStorageValue(position:UInt):Int;

    @:native("OpenURL") static function OpenURL(url:ConstCharStar):Void;

    // Input-related functions: keyboard
    @:native("IsKeyPressed") static function IsKeyPressed(key:Int):Bool;
    @:native("IsKeyDown") static function IsKeyDown(key:Int):Bool;
    @:native("IsKeyReleased") static function IsKeyReleased(key:Int):Bool;
    @:native("IsKeyUp") static function IsKeyUp(key:Int):Bool;
    @:native("SetExitKey") static function SetExitKey(key:Int):Void;
    @:native("GetKeyPressed") static function GetKeyPressed():Int;
    @:native("GetCharPressed") static function GetCharPressed():Int;

    // Input-relate functions: gamepads
    @:native("IsGamepadAvailable") static function IsGamepadAvailable(gamepad:Int):Bool;
    @:native("IsGamepadName") static function IsGamepadName(gamepad:Int, name:ConstCharStar):Bool;
    @:native("GetGamepadName") static function GetGamepadName(gamepad:Int):ConstCharStar;
    @:native("IsGamepadButtonPressed") static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonDown") static function IsGamepadButtonDown(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonReleased") static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonUp") static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;
    @:native("GetGamepadButtonPressed") static function GetGamepadButtonPressed():Int;
    @:native("GetGamepadAxisCount") static function GetGamepadAxisCount(gamepad:Int):Int;
    @:native("GetGamepadAxisMovement") static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Float;
    @:native("SetGamepadMappings") static function SetGamepadMappings(mappings:ConstCharStar):Int;

    // Input-related functions: mouse
    @:native("IsMouseButtonPressed") static function IsMouseButtonPressed(button:Int):Bool;
    @:native("IsMouseButtonDown") static function IsMouseButtonDown(button:Int):Bool;
    @:native("IsMouseButtonReleased") static function IsMouseButtonReleased(button:Int):Bool;
    @:native("IsMouseButtonUp") static function IsMouseButtonUp(buttton:Int):Bool;
    @:native("GetMouseX") static function GetMouseX():Int;
    @:native("GetMouseY") static function GetMouseY():Int;
    @:native("GetMousePosition") static function GetMousePosition():Vector2;
    @:native("GetMouseDelta") static function GetMouseDelta():Vector2;
    @:native("SetMousePosition") static function SetMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset") static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("GetMouseWheelMove") static function GetMouseWheelMove():Float;
    @:native("SetMouseCursor") static function SetMouseCursor(cursor:Int):Void;

    // Input-related functions: touch
    @:native("GetTouchX") static function GetTouchX():Int;
    @:native("GetTouchY") static function GetTouchY():Int;
    @:native("GetTouchPosition") static function GetTouchPosition(index:Int):Vector2;

    // Gestures and Touch Handling Functions (Module: gestures)
    @:native("SetGestureEnabled") static function SetGestureEnabled(flags:UInt):Void;
    @:native("IsGestureDetected") static function IsGestureDetected(gesture:Int):Bool;
    @:native("GetGestureDetected") static function GetGestureDetected():Int;
    @:native("GetTouchPointsCount") static function GetTouchPointsCount():Int;
    @:native("GetGestureHoldDuration") static function GetGestureHoldDuration():Float;
    @:native("GetGestureDragVector") static function GetGestureDragVector():Vector2;
    @:native("GetGestureDragAngle") static function GetGestureDragAngle():Float;
    @:native("GetGesturePinchVector") static function GetGesturePinchVector():Vector2;
    @:native("GetGesturePinchAngle") static function GetGesturePinchAngle():Float;

    // Camera system functions
    @:native("SetCameraMode") static function SetCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera") static function UpdateCamera(camera:Star<Camera>):Void;

    @:native("SetCameraPanControl") static function SetCameraPanControl(keyPan:Int):Void;
    @:native("SetCameraAltControl") static function SetCameraAltControl(keyAlt:Int):Void;
    @:native("SetCameraSmoothZoomControl") static function SetCameraSmoothZoomControl(keySmoothZoom:Int):Void;
    @:native("SetCameraMoveControls") static function SetCameraMoveControls(keyFron:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;

    //------------------------------------------------------------------------------------
    // Shapes module
    //------------------------------------------------------------------------------------
    @:native("SetShapesTexture") static function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;

    // Basic shapes drawing functions
    @:native("DrawPixel") static function DrawPixel(posX:Int, posY:Int, color:Color):Void;
    @:native("DrawPixelV") static function DrawPixelV(position:Vector2, color:Color):Void;
    @:native("DrawLine") static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("DrawLineV") static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;
    @:native("DrawLineEx") static function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezier") static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezierQuad") static function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineStrip") static function DrawLineStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawCircle") static function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    @:native("DrawCircleSector") static function DrawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleSectorLines") static function DrawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleGradient") static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;
    @:native("DrawCircleV") static function DrawCircleV(center:Vector2, radius:Float, color:Color):Void;
    @:native("DrawRectangle") static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleV") static function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;
    @:native("DrawRectangleRec") static function DrawRectangleRec(rec:Rectangle, color:Color):Void;
    @:native("DrawRectanglePro") static function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;
    @:native("DrawRectangleGradientV") static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleGradientH") static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleLines") static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleLinesEx") static function DrawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void;
    @:native("DrawRectangleRounded") static function DrawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;
    @:native("DrawRectangleRoundedLines") static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Int,
        color:Color):Void;
    @:native("DrawTriangle") static function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleLines") static function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleFan") static function DrawTriangleFan(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawTriangleStrip") static function DrawTriangleStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawPoly") static function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLines") static function DrawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLinesEx") static function DrawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;

    // Basic shapes collision detection functions
    @:native("CheckCollisionRecs") static function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;
    @:native("CheckCollisionCircles") static function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;
    @:native("CheckCollisionCircleRec") static function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;
    @:native("CheckCollisionPointRec") static function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;
    @:native("CheckCollisionPointCircle") static function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;
    @:native("CheckCollisionPointTriangle") static function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;
    @:native("CheckCollisionLines") static function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2,
        collisionPoint:Star<Vector2>):Bool;
    @:native("CheckCollisionPointLine") static function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;
    @:native("GetCollisionRec") static function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

    //------------------------------------------------------------------------------------
    // Textures module
    //------------------------------------------------------------------------------------
    // Image loading functions
    @:native("LoadImage") static function LoadImage(fileName:ConstCharStar):Image;
    @:native("LoadImageRaw") static function LoadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;
    @:native("LoadImageAnim") static function LoadImageAnim(fileName:ConstCharStar, frames:Int):Image;
    @:native("LoadImageFromMemory") static function LoadImageFromMemory(fileType:ConstCharStar, fileData:ConstStar<UInt8>, dataSize:Int):Image;
    @:native("LoadImageFromTexture") static function LoadImageFromTexture(texture:Texture2D):Image;
    @:native("LoadImageFromScreen") static function LoadImageFromScreen():Void;
    @:native("UnloadImage") static function UnloadImage(image:Image):Void;
    @:native("ExportImage") static function ExportImage(image:Image, fileName:ConstCharStar):Bool;
    @:native("ExportImageAsCode") static function ExportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

    // Image generation functions
    @:native("GenImageColor") static function GenImageColor(width:Int, height:Int, color:Color):Image;
    @:native("GenImageGradientV") static function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image;
    @:native("GenImageGradientH") static function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image;
    @:native("GenImageGradientRadial") static function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;
    @:native("GenImageChecked") static function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, color:Color):Image;
    @:native("GenImageWhiteNoise") static function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image;
    @:native("GenImageCellular") static function GenImageCellular(width:Int, height:Int, tileSize:Int):Image;

    // Image manipulation functions
    @:native("ImageCopy") static function ImageCopy(image:Image):Image;
    @:native("ImageFromImage") static function ImageFromImage(image:Image, rec:Rectangle):Image;
    @:native("ImageText") static function ImageText(text:ConstCharStar, fontSize:Int, color:Color):Image;
    @:native("ImageTextEx") static function ImageTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;
    @:native("ImageFormat") static function ImageFormat(image:Star<Image>, newFormat:Int):Void;
    @:native("ImageToPOT") static function ImageToPOT(image:Star<Image>, fill:Color):Void;
    @:native("ImageCrop") static function ImageCrop(image:Star<Image>, crop:Rectangle):Void;
    @:native("ImageAlphaCrop") static function ImageAlphaCrop(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaClear") static function ImageAlphaClear(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaMask") static function ImageAlphaMask(image:Star<Image>, alphaMask:Image):Void;
    @:native("ImageAlphaPremultiply") static function ImageAlphaPremultiply(image:Star<Image>):Void;
    @:native("ImageResize") static function ImageResize(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeNN") static function ImageResizeNN(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeCanvas") static function ImageResizeCanvas(image:Star<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void;
    @:native("ImageMipmaps") static function ImageMipmaps(image:Star<Image>):Void;
    @:native("ImageDither") static function ImageDither(image:Star<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;
    @:native("ImageFlipVertical") static function ImageFlipVertical(image:Star<Image>):Void;
    @:native("ImageFlipHorizontal") static function ImageFlipHorizontal(image:Star<Image>):Void;
    @:native("ImageRotateCW") static function ImageRotateCW(image:Star<Image>):Void;
    @:native("ImageRotateCCW") static function ImageRotateCCW(image:Star<Image>):Void;
    @:native("ImageColorTint") static function ImageColorTint(image:Star<Image>, color:Color):Void;
    @:native("ImageColorInvert") static function ImageColorInvert(image:Star<Image>):Void;
    @:native("ImageColorGrayscale") static function ImageColorGrayscale(image:Star<Image>):Void;
    @:native("ImageColorContrast") static function ImageColorContrast(image:Star<Image>, contrast:Float):Void;
    @:native("ImageColorBrightness") static function ImageColorBrightness(image:Star<Image>, brightness:Int):Void;
    @:native("ImageColorReplace") static function ImageColorReplace(image:Star<Image>, color:Color, replace:Color):Void;
    @:native("LoadImageColors") static function LoadImageColors(image:Image):Star<Color>;
    @:native("LoadImagePalette") static function LoadImagePalette(image:Image, maxPaletteSize:Int, colorsCount:Star<Int>):Star<Color>;
    @:native("UnloadImageColors") static function UnloadImageColors(colors:Star<Color>):Void;
    @:native("UnloadImagePalette") static function UnloadImagePalette(colors:Star<Color>):Void;
    @:native("GetImageAlphaBorder") static function GetImageAlphaBorder(image:Image, threshold:Float):Rectangle;
    @:native("GetImageColor") static function GetImageColor(image:Image, x:Int, y:Int):Color;

    // Image drawing functions
    // NOTE: Image software-rendering functions (CPU)
    @:native("ImageClearBackground") static function ImageClearBackground(dst:Star<Image>, color:Color):Void;
    @:native("ImageDrawPixel") static function ImageDrawPixel(dst:Star<Image>, posX:Int, posY:Int, color:Color):Void;
    @:native("ImageDrawPixelV") static function ImageDrawPixelV(dst:Star<Image>, position:Vector2, color:Color):Void;
    @:native("ImageDrawLine") static function ImageDrawLine(dst:Star<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("ImageDrawLineV") static function ImageDrawLineV(dst:Star<Image>, start:Vector2, end:Vector2, color:Color):Void;
    @:native("ImageDrawCircle") static function ImageDrawCircle(dst:Star<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;
    @:native("ImageDrawCircleV") static function ImageDrawCircleV(dst:Star<Image>, center:Vector2, radius:Int, color:Color):Void;
    @:native("ImageDrawRectangle") static function ImageDrawRectangle(dst:Star<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("ImageDrawRectangleV") static function ImageDrawRectangleV(dst:Star<Image>, position:Vector2, size:Vector2, color:Color):Void;
    @:native("ImageDrawRectangleRec") static function ImageDrawRectangleRec(dst:Star<Image>, rec:Rectangle, color:Color):Void;
    @:native("ImageDrawRectangleLines") static function ImageDrawRectangleLines(dst:Star<Image>, rec:Rectangle, thick:Int, color:Color):Void;
    @:native("ImageDraw") static function ImageDraw(dst:Star<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;
    @:native("ImageDrawText") static function ImageDrawText(dst:Star<Image>, text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;
    @:native("ImageDrawTextEx") static function ImageDrawTextEx(dst:Star<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Float,
        spacing:Float, tint:Color):Void;

    // Texture Loading functions
    // NOTE: These functions require GPU access
    @:native("LoadTexture") static function LoadTexture(fileName:ConstCharStar):Texture2D;
    @:native("LoadTextureFromImage") static function LoadTextureFromImage(image:Image):Texture2D;
    @:native("LoadTextureCubemap") static function LoadTextureCubemap(image:Image, layout:Int):TextureCubemap;
    @:native("LoadRenderTexture") static function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;
    @:native("UnloadTexture") static function UnloadTexture(texture:Texture2D):Void;
    @:native("UnloadRenderTexture") static function UnloadRenderTexture(texture:RenderTexture2D):Void;
    @:native("UpdateTexture") static function UpdateTexture(texture:Texture2D, pixels:ConstStar<Void>):Void;
    @:native("UpdateTextureRec") static function UpdateTextureRec(texture:Texture2D, rec:Rectangle, pixels:ConstStar<Void>):Void;

    // Texture configuration functions
    @:native("GenTextureMipmaps") static function GenTextureMipmaps(texture:Star<Texture2D>):Void;
    @:native("SetTextureFilter") static function SetTextureFilter(texture:Texture2D, filter:Int):Void;
    @:native("SetTextureWrap") static function SetTextureWrap(texture:Texture2D, wrap:Int):Void;

    // Texture drawing functions
    @:native("DrawTexture") static function DrawTexture(texture:Texture2D, posX:Int, posy:Int, tint:Color):Void;
    @:native("DrawTextureV") static function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;
    @:native("DrawTextureEx") static function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;
    @:native("DrawTextureRec") static function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;
    @:native("DrawTextureQuad") static function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;
    @:native("DrawTextureTiled") static function DrawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        scale:Float, tint:Color):Void;
    @:native("DrawTexturePro") static function DrawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTextureNPatch") static function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTexturePoly") static function DrawTexturePoly(texture:Texture2D, center:Vector2, points:Star<Vector2>, texcoords:Star<Vector2>,
        pointsCount:Int, tint:Color):Void;

    // Color pixel related functions
    @:native("Fade") static function Fade(color:Color, alpha:Float):Void;
    @:native("ColorToInt") static function ColorToInt(color:Color):Int;
    @:native("ColorNormalize") static function ColorNormalize(color:Color):Vector4;
    @:native("ColorFromNormalized") static function ColorFromNormalized(normalized:Vector4):Color;
    @:native("ColorToHSV") static function ColorToHSV(color:Color):Vector3;
    @:native("ColorFromHSV") static function ColorFromHSV(hue:Float, saturation:Float, Value:Float):Color;
    @:native("ColorAlpha") static function ColorAlpha(color:Color, alpha:Float):Color;
    @:native("ColorAlphaBlend") static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;
    @:native("GetColor") static function GetColor(hexValue:UInt):Color;
    @:native("GetPixelColor") static function GetPixelColor(srcPtr:Star<Void>, format:PixelFormat):Color;
    @:native("SetPixelColor") static function SetPixelColor(dstPtr:Star<Void>, color:Color, format:Int):Void;
    @:native("GetPixelDataSize") static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

    //------------------------------------------------------------------------------------
    // Font module
    //------------------------------------------------------------------------------------
    // Font loading/unloading functions
    @:native("GetFontDefault") static function GetFontDefault():Void;
    @:native("LoadFont") static function LoadFont(fileName:ConstCharStar):Font;
    @:native("LoadFontEx") static function LoadFontEx(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontFromImage") static function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font;
    @:native("LoadFontFromMemory") static function LoadFontFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int, fontSize:Int,
        fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontData") static function LoadFontData(fileData:ConstStar<UInt8>, dataSize:Int, fontSize:Int, fontChars:Star<Int>, glyphCount:Int,
        type:Int):GlyphInfo;
    @:native("GenImageFontAtlas") static function GenImageFontAtlas(chars:ConstStar<GlyphInfo>, recs:Star<Star<Rectangle>>, glyphCount:Int, fontSize:Int,
        padding:Int, packMethod:Int):Image;
    @:native("UnloadFontData") static function UnloadFontData(chars:Star<GlyphInfo>, glyphCount:Int):Void;
    @:native("UnloadFont") static function UnloadFont(font:Font):Void;

    // Text drawing functions
    @:native("DrawFPS") static function DrawFPS(posX:Int, posY:Int):Void;
    @:native("DrawText") static function DrawText(text:ConstCharStar, posX:Int, posY:Int, FontSize:Int, color:Color):Void;
    @:native("DrawTextEx") static function DrawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;
    @:native("DrawTextPro") static function DrawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, rotation:Float, fontSize:Float,
        spacing:Float, tint:Color):Void;
    @:native("DrawTextCodePoint") static function DrawTextCodePoint(font:Font, codepoint:Int, position:Vector2, fontSize:Float, tint:Color):Void;

    // Text misc. functions
    @:native("MeasureText") static function MeasureText(text:ConstCharStar, fontSize:Int):Int;
    @:native("MeasureTextEx") static function MeasureTextEx(font:Font, text:ConstCharStar, fontsize:Float, tint:Color):Vector2;
    @:native("GetGlyphIndex") static function GetGlyphIndex(font:Font, codepoint:Int):Int;
    @:native("GetGlyphInfo") static function GetGlyphInfo(font:Font, codepoint:Int):GlyphInfo;
    @:native("GetGlyphAtlasRec") static function GetGlyphAtlasRec(font:Font, codepoint:Int):Rectangle;

    //------------------------------------------------------------------------------------
    // Models module
    //------------------------------------------------------------------------------------
    // Basic geometric 3D shapes drawing functions
    @:native("DrawLine3D") static function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;
    @:native("DrawPoint3D") static function DrawPoint3D(position:Vector3, color:Color):Void;
    @:native("DrawCircle3D") static function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void;
    @:native("DrawTriangle3D") static function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleStrip3D") static function DrawTriangleStrip3D(points:Star<Vector3>, pointsCount:Int, color:Color):Void;
    @:native("DrawCube") static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeV") static function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeWires") static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeWiresV") static function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeTexture") static function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float,
        color:Color):Void;
    @:native("DrawCubeTextureRec") static function DrawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float, height:Float,
        length:Float, color:Color):Void;
    @:native("DrawSphere") static function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void;
    @:native("DrawSphereEx") static function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawSphereWires") static function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawCylinder") static function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;
    @:native("DrawCylinderEx") static function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawCylinderWires") static function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int,
        color:Color):Void;
    @:native("DrawCylinderWiresEx") static function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawPlane") static function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;
    @:native("DrawRay") static function DrawRay(ray:Ray, color:Color):Void;
    @:native("DrawGrid") static function DrawGrid(slices:Int, spacing:Float):Void;

    // Model management functions
    @:native("LoadModel") static function LoadModel(fileName:ConstCharStar):Model;
    @:native("LoadModelFromMesh") static function LoadModelFromMesh(mesh:Mesh):Model;
    @:native("UnloadModel") static function UnloadModel(model:Model):Void;
    @:native("UnloadModelKeepMeshes") static function UnloadModelKeepMeshes(model:Model):Void;
    @:native("GetModelBoundingBox") static function GetModelBoundingBox(model:Model):BoundingBox;

    // Model drawing functions
    @:native("DrawModel") static function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelEx") static function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawModelWires") static function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelWiresEx") static function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawBoundingBox") static function DrawBoundingBox(box:BoundingBox, color:Color):Void;
    @:native("DrawBillboard") static function DrawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float, tint:Color):Void;
    @:native("DrawBillboardRec") static function DrawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2,
        tint:Color):Void;
    @:native("DrawBillboardPro") static function DrawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3,
        size:Vector2, origin:Vector2, rotation:Float, tint:Color):Void;

    // Mesh management functions
    @:native("UploadMesh") static function UploadMesh(mesh:Star<Mesh>, dyn:Bool):Void;
    @:native("UpdateMeshBuffer") static function UpdateMeshBuffer(mesh:Mesh, index:Int, data:Star<Void>, dataSize:Int, offset:Int):Void;
    @:native("UnloadMesh") static function UnloadMesh(mesh:Mesh):Void;
    @:native("DrawMesh") static function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;
    @:native("DrawMeshInstanced") static function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:Star<Matrix>, instances:Int):Void;
    @:native("ExportMesh") static function ExportMesh(mesh:Mesh, fileName:ConstCharStar):Bool;
    @:native("GetMeshBoundingBox") static function GetMeshBoundingBox(mesh:Mesh):BoundingBox;
    @:native("GetMeshTangents") static function GetMeshTangents(mesh:Star<Mesh>):Void;
    @:native("GetMeshBinomials") static function GetMeshBinomials(mesh:Star<Mesh>):Void;

    // Mesh generation functions
    @:native("GenMeshPoly") static function GenMeshPoly(sides:Int, radius:Float):Mesh;
    @:native("GenMeshPlane") static function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh;
    @:native("GenMeshCube") static function GenMeshCube(width:Float, height:Float, length:Float):Mesh;
    @:native("GenMeshSphere") static function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshHemiSphere") static function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCylinder") static function GenMeshCylinder(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCone") static function GenMeshCone(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshTorus") static function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshKnot") static function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshHeightMap") static function GenMeshHeightMap(heightMap:Image, size:Vector3):Mesh;
    @:native("GenMeshCubicMap") static function GenMeshCubicMap(cubicmap:Image, cubeSize:Vector3):Mesh;

    // Material loading/unloading functions
    @:native("LoadMaterials") static function LoadMaterials(fileName:ConstCharStar, materialCount:Star<Int>):Star<Material>;
    @:native("LoadMaterialDefault") static function LoadMaterialDefault():Material;
    @:native("UnloadMaterial") static function UnloadMaterial(material:Material):Void;
    @:native("SetMaterialTexture") static function SetMaterialTexture(material:Star<Material>, mapType:Int, texture:Texture2D):Void;
    @:native("SetModelMeshMaterial") static function SetModelMeshMaterial(model:Star<Model>, meshId:Int, materialId:Int):Void;

    // Model animations loading/unloading functions
    @:native("LoadModelAnimations") static function LoadModelAnimations(fileName:ConstCharStar, animCount:Star<UInt>):Star<ModelAnimation>;
    @:native("UpdateModelAnimation") static function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;
    @:native("UnloadModelAnimation") static function UnloadModelAnimation(anim:ModelAnimation):Void;
    @:native("UnloadModelAnimations") static function UnloadModelAnimations(animations:Star<ModelAnimation>, count:UInt):Void;
    @:native("IsModelAnimationValid") static function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

    // Collision detection functions
    @:native("CheckCollisionSpheres") static function CheckCollisionSpheres(center1:Vector3, radius1:Float, center2:Vector3, radius2:Float):Bool;
    @:native("CheckCollisionBoxes") static function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;
    @:native("CheckCollisionBoxSphere") static function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float):Bool;
    @:native("GetRayCollisionSphere") static function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Float):RayCollision;
    @:native("GetRayCollisionBox") static function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;
    @:native("GetRayCollisionModel") static function GetRayCollisionModel(ray:Ray, model:Model):RayCollision;
    @:native("GetRayCollisionMesh") static function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;
    @:native("GetRayCollisionTriangle") static function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;
    @:native("GetRayCollisionQuad") static function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;

    //------------------------------------------------------------------------------------
    // Audio module
    //------------------------------------------------------------------------------------
    // Audio device management functions
    @:native("InitAudioDevice") static function InitAudioDevice():Void;
    @:native("CloseAudioDevice") static function CloseAudioDevice():Void;
    @:native("IsAudioDeviceReady") static function IsAudioDeviceReady():Bool;
    @:native("SetMasterVolume") static function SetMasterVolume(volume:Float):Void;

    // Wave/Sound loading/unloading functions
    @:native("LoadWave") static function LoadWave(fileName:ConstCharStar):Wave;
    @:native("LoadWaveFromMemory") static function LoadWaveFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int):Wave;
    @:native("LoadSound") static function LoadSound(fileName:ConstCharStar):Sound;
    @:native("LoadSoundFromWave") static function LoadSoundFromWave(wave:Wave):Sound;
    @:native("UpdateSound") static function UpdateSound(sound:Sound, data:ConstCharStar, samplesCount:Int):Void;
    @:native("UnloadWave") static function UnloadWave(wave:Wave):Void;
    @:native("UnloadSound") static function UnloadSound(sound:Sound):Void;
    @:native("ExportWave") static function ExportWave(wave:Wave, fileName:ConstCharStar):Bool;
    @:native("ExportWaveAsCode") static function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

    // Wave/Sound management functions
    @:native("PlaySound") static function PlaySound(sound:Sound):Void;
    @:native("StopSound") static function StopSound(sound:Sound):Void;
    @:native("PauseSound") static function PauseSound(sound:Sound):Void;
    @:native("ResumeSound") static function ResumeSound(sound:Sound):Void;
    @:native("PlaySoundMulti") static function PlaySoundMulti(sound:Sound):Void;
    @:native("StopSoundMulti") static function StopSoundMulti():Void;
    @:native("GetSoundsPlaying") static function GetSoundsPlaying():Int;
    @:native("IsSoundPlaying") static function IsSoundPlaying(sound:Sound):Bool;
    @:native("SetSoundVolume") static function SetSoundVolume(sound:Sound, volume:Float):Void;
    @:native("SetSoundPitch") static function SetSoundPitch(sound:Sound, pitch:Float):Void;
    @:native("WaveFormat") static function WaveFormat(wave:Star<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void;
    @:native("WaveCopy") static function WaveCopy(wave:Wave):Wave;
    @:native("WaveCrop") static function WaveCrop(wave:Star<Wave>, initSample:Int, finalSample:Int):Void;
    @:native("LoadWaveSamples") static function LoadWaveSamples(wave:Wave):Star<Float>;
    @:native("UnloadWaveSamples") static function UnloadWaveSamples(samples:Star<Float>):Void;

    // Music management functions
    @:native("LoadMusicStream") static function LoadMusicStream(fileName:ConstCharStar):Music;
    @:native("LoadMusicStreamFromMemory") static function LoadMusicStreamFromMemory(fileType:ConstCharStar, data:Star<UInt8>, dataSize:Int):Music;
    @:native("UnloadMusicStream") static function UnloadMusicStream(music:Music):Void;
    @:native("PlayMusicStream") static function PlayMusicStream(music:Music):Void;
    @:native("IsMusicStreamPlaying") static function IsMusicStreamPlaying(music:Music):Bool;
    @:native("UpdateMusicStream") static function UpdateMusicStream(music:Music):Void;
    @:native("StopMusicStream") static function StopMusicStream(music:Music):Void;
    @:native("PauseMusicStream") static function PauseMusicStream(music:Music):Void;
    @:native("ResumeMusicStream") static function ResumeMusicStream(music:Music):Void;
    @:native("SeekMusicStream") static function SeekMusicStream(music:Music, position:Float):Void;
    @:native("SetMusicVolume") static function SetMusicVolume(music:Music, volume:Float):Void;
    @:native("SetMusicPitch") static function SetMusicPitch(music:Music, pitch:Float):Void;
    @:native("GetMusicTimeLength") static function GetMusicTimeLength(music:Music):Float;
    @:native("GetMusicTimePlayed") static function GetMusicTimePlayed(music:Music):Float;

    // AudioStream management functions
    @:native("InitAudioStream") static function InitAudioStream(sampleRate:UInt, sampleSize:UInt, channels:UInt):AudioStream;
    @:native("UpdateAudioStream") static function UpdateAudioStream(stream:AudioStream, data:ConstStar<Void>, samplesCount:Int):Void;
    @:native("CloseAudioStream") static function CloseAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamProcessed") static function IsAudioStreamProcessed(stream:AudioStream):Bool;
    @:native("PlayAudioStream") static function PlayAudioStream(stream:AudioStream):Void;
    @:native("PauseAudioStream") static function PauseAudioStream(stream:AudioStream):Void;
    @:native("ResumeAudioStream") static function ResumeAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamPlaying") static function IsAudioStreamPlaying(stream:AudioStream):Bool;
    @:native("StopAudioStream") static function StopAudioStream(stream:AudioStream):Void;
    @:native("SetAudioStreamVolume") static function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void;
    @:native("SetAudioStreamPitch") static function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void;
    @:native("SetAudioStreamBufferSizeDefault") static function SetAudioStreamBufferSizeDefault(size:Int):Void;
}
>>>>>>> 18fd09bc4b3ce18faeb97bc59acf17bf97014f67
