/*
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   hxRaylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
 *   BSD-like license that allows static linking with closed source software:
 *
 *   Copyright (c) 2021-2023 Ratul Krisna (@ForeignSasquatch)
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
 * --------------------------------------------------------------------------------------------------------------------
 * Note: 3d is not tested nor supported properly. If you would want 3d make an issue in the repo and will improve it
 * or it will be improved when im trying 3d. thanks.
 *
 * Updated to 4.2 but im not sure about that still lol.
 */
package;

import cpp.Char;
import cpp.ConstCharStar;
import cpp.ConstStar;
import cpp.RawConstPointer;
import cpp.Star;
import cpp.UInt16;
import cpp.UInt8;
import cpp.Void;

/** Basic colors (colours) **/
@:include("raylib.h")
extern class Colors {
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

@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class RlVector2 {
    /** Vector x component **/
    var x:Float;
    /** Vector y component **/
    var y:Float;

    /** Creates new Vector2 type **/
    static inline function create(x:Float, y:Float):RlVector2 {
        return untyped __cpp__("Vector2{ (float){0}, (float){1} }", x, y);
    }

    /** Creates new Vector2 with x and y as 0 **/
    static inline function zero():Vector2 {
        return untyped __cpp__("Vector2{ 0, 0 }");
    }
}

/** Vector2, 2 components **/
typedef Vector2 = cpp.Struct<RlVector2>;

@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern class RlVector3 {
    /** Vector x component **/
    var x:Float;
    /** Vector y component **/
    var y:Float;
    /** Vector z component **/
    var z:Float;

    /** Creates new Vector3 type **/
    static inline function create(x:Float, y:Float, z:Float):Vector3 {
        return untyped __cpp__("Vector3{ (Float){0}, (Float){1}, (Float){2} }", x, y, z);
    }
}

/** Vector3, 3 components **/
typedef Vector3 = cpp.Struct<RlVector3>;

@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern class RlVector4 {
    /** Vector x component **/
    var x:Float;
    /** Vector y component **/
    var y:Float;
    /** Vector z component **/
    var z:Float;
    /** Vector w component **/
    var w:Float;

    /** Creates new Vector4 type **/
    static inline function create(x:Float, y:Float, z:Float, w:Float):Vector4 {
        return untyped __cpp__("Vector4{ (Float){0}, (Float){1}, (Float){2}, (Float){3} }", x, y, z, w);
    }
}

/** Vector4, 4 components **/
typedef Vector4 = cpp.Struct<RlVector4>;

/** Quaternion, 4 components (Vector4 alias) **/
typedef Quaternion = Vector4;

@:include("raylib.h")
@:native("Matrix")
@:structAccess
extern class RlMatrix {
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

/** Matrix, 4x4 components, column major, OpenGL style, right handed **/
typedef Matrix = cpp.Struct<RlMatrix>;

@:include("raylib.h")
@:native("Color")
@:structAccess
extern class RlColor {
    /** Color red value **/
    var r:cpp.UInt8;
    /** Color green value **/
    var g:cpp.UInt8;
    /** Color blue value **/
    var b:cpp.UInt8;
    /** Color alpha value **/
    var a:cpp.UInt8;

    /** Create new Color type **/
    public static inline function create(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Color {
        return untyped __cpp__("Color{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }
}

/** Color (Colour), 4 components, R8G8B8A8 (32 bit) **/
typedef Color = cpp.Struct<RlColor>;

@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern class RlRectangle {
    /** Rectangle top-left corner position x **/
    var x:Float;
    /** Rectangle top-left corner position y **/
    var y:Float;
    /** Rectangle width **/
    var width:Float;
    /** Rectangle height **/
    var height:Float;

    /** Create new Rectangle type **/
    static inline function create(x:Float, y:Float, width:Float, height:Float):Rectangle {
        return untyped __cpp__("Rectangle{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, width, height);
    }

    inline function left():Float {
        return this.x;
    }

    inline function right():Float {
        return this.x + this.width;
    }

    inline function top():Float {
        return this.y;
    }

    inline function bottom():Float {
        return this.y + this.height;
    }
}

/** Rectangle, 4 components **/
typedef Rectangle = cpp.Struct<RlRectangle>;

@:include("raylib.h")
@:native("Image")
@:structAccess
extern class RlImage {
    /** Image raw data **/
    var data:Star<Void>;
    /** Image base width **/
    var width:Int;
    /** Image base height **/
    var height:Int;
    /** Mipmap levels, 1 by default **/
    var mipmaps:Int;
    /** Data format (PixelFormat type) **/
    var format:Int;

    /** Create new Image type **/
    public static inline function create(data:cpp.RawPointer<cpp.Void>, width:Int, height:Int, mipmaps:Int, format:Int):Image {
        return untyped __cpp__("Image{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
    }
}

/** Image, pixel data stored in CPU memory (Ram) **/
typedef Image = cpp.Struct<RlImage>;

@:include("raylib.h")
@:native("Texture")
@:structAccess
@:unreflective
extern class RlTexture {
    /**  OpenGL texture id **/
    var id:UInt;
    /** Texture base width **/
    var width:Int;
    /** Texture base height **/
    var height:Int;
    /** Mipmap levels, 1 by deafult **/
    var mipmaps:Int;
    /** Data format (PixelFormat type) **/
    var format:Int;
}

/** Texture, tex data stored in GPU memory (VRAM) **/
typedef Texture = cpp.Struct<RlTexture>;

/** Texture2D, same as Texture **/
typedef Texture2D = Texture;

/** TextureCubemap, same as Texture **/
typedef TextureCubemap = Texture;

@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RlRenderTexture {
    /** OpenGL framebuffer object id **/
    var id:UInt;
    /** Color buffer attachment texture **/
    var texture:Texture;
    /** Depth buffer attachment texture **/
    var depth:Texture;
}

/**  RenderTexture, fbo for texture rendering **/
typedef RenderTexture = cpp.Struct<RlRenderTexture>;

/** RenderTexture2D, same as RenderTexture **/
typedef RenderTexture2D = RenderTexture;

@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern class RlNPatchInfo {
    /** Texture source rectangle **/
    var source:Rectangle;
    /** Left border offset **/
    var left:Int;
    /** Top border offset **/
    var top:Int;
    /** Right border offset **/
    var right:Int;
    /** Bottom border offeset **/
    var bottom:Int;
    /** Layout of n-patch: 3x3, 1x3 or 3x1 **/
    var layout:Int;
}

/** NPatchInfo, n-patch layout info **/
typedef NPatchInfo = cpp.Struct<RlNPatchInfo>;

@:include("raylib.h")
@:native("GlyphInfo")
@:structAccess
extern class RlGlyphInfo {
    /** Character value (Unicode) **/
    var value:Int;
    /** Character value (Unicode) **/
    var offsetX:Int;
    /** Character value (Unicode) **/
    var offsetY:Int;
    /** Character advance position X **/
    var advanceX:Int;
    /** Character image data **/
    var image:Image;
}

/** GlyphInfo, font characters glyphs info **/
typedef GlyphInfo = cpp.Struct<RlGlyphInfo>;

@:include("raylib.h")
@:native("Font")
@:structAccess
extern class RlFont {
    /** Base size (default chars height) **/
    var baseSize:Int;
    /** Number of characters **/
    var glyphCount:Int;
    /** Padding around the chars **/
    var glyphPadding:Int;
    /** Characters texture atlas **/
    var texture:Texture2D;
    /** Character rectabgle in texture **/
    var recs:Star<Rectangle>;
    /** Charcter info data **/
    var glyphs:Star<GlyphInfo>;
}

/** Font, font texture and CharInfo array data **/
typedef Font = cpp.Struct<RlFont>;

@:include("raylib.h")
@:native("Camera3D")
@:structAccess
/** Camera, defines positon/oreientation in 3d space **/
extern class Camera3D {
    /** Camera position **/
    var position:Vector3;
    /** Camera target it looks-at **/
    var target:Vector3;
    /** Camera up vector (rotation over its axis) **/
    var up:Vector3;
    /** Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic **/
    var fovy:Float;
    /** Camera projection: PERSPECTIVE or ORTHOGRAPHIC **/
    var projection:Int;

    /** Create new Camera3D type **/
    static inline function create():Camera3D {
        return untyped __cpp__("Camera3D{ 0 }");
    }
}

/** Camera type fallback, defaults to Camera3D **/
typedef Camera = Camera3D;

@:include("raylib.h")
@:native("Camera2D")
@:structAccess
@:unreflective
extern class RlCamera2D {
    /** Camera offset (displacement from target) **/
    var offset:RlVector2;
    /** Camera target (rotation and zoom origin) **/
    var target:RlVector2;
    /** Camera rotation in degrees **/
    var rotation:Float;
    /** Camera zoom (scaling), should be 1.0f by default **/
    var zoom:Float;

    /** Create new Camera2D type **/
    static inline function create(offset:RlVector2, target:RlVector2, rotation:Float=0.0, zoom:Float=1.0):Camera2D {
        return untyped __cpp__("Camera2D{ (Vector2){0}, (Vector2){1}, (float){2}, (float){3} }", offset, target, rotation, zoom );
    }
}

/** Camera2D, defines position/orientation in 2d space **/
typedef Camera2D = cpp.Struct<RlCamera2D>;

//
// SECTION TO BE FIXED.
//
@:include("raylib.h")
@:native("Mesh")
@:structAccess
extern class RlMesh {
    /** Number of vertices stored in arrays **/
    var vertexCount:Int;
    /** Number of triangles stored (indexed or not) **/
    var triangleCount:Int;

    // Vertex attributes data
    /** Vertex position (XYZ - 3 components per vertex) (shader-location = 0) **/
    var verticies:Star<Float>;
    /** Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1) **/
    var textcoords:Star<Float>;
    /** Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5) **/
    var texcoord2:Star<Float>;
    /** Vertex normals (XYZ - 3 components per vertex) (shader-location = 2) **/
    var normals:Star<Float>;
    /** Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4) **/
    var tangents:Star<Float>;

    var animVertices:Star<Float>;
    var animNormals:Star<Float>;
    var boneIds:Star<Int>;
    var boneWeights:Star<Float>;

    var vaoId:UInt;
    var vboId:Star<UInt>;
}

/** Mesh, vertex data and vao/vbo **/
typedef Mesh = cpp.Struct<RlMesh>;

@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader {
    /** Shader program id **/
    var id:UInt;
    /** Shader locations array (RL_MAX_SHADER_LOCATIONS) **/
    var locs:Star<Int>;
}

@:include("raylib.h")
@:native("MaterialMap")
@:structAccess
extern class MaterialMap {
    var texture:Texture2D;
    var color:Color;
    var value:Float;
}

@:include("raylib.h")
@:native("Material")
@:structAccess
extern class Material {
    var shader:Shader;
    var maps:Star<MaterialMap>;
    var params:Array<Float>;
}

@:include("raylib.h")
@:native("Transform")
@:structAccess
extern class Transform {
    var translation:Vector3;
    var rotation:Quaternion;
    var scale:Vector3;
}

// Do not use - Not working right now
@:include("raylib.h")
@:native("BoneInfo")
@:structAccess
extern class BoneInfo {
    var parent:Int;
}

@:include("raylib.h")
@:native("Model")
@:structAccess
extern class Model {
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
extern class ModelAnimation {
    var boneCount:Int;
    var frameCount:Int;
    var bones:Star<BoneInfo>;
    var framePoses:Star<Star<Transform>>;
}

@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray {
    var position:Vector3;
    var direction:Vector3;

    static inline function create():Ray {
        return untyped __cpp__("(Ray){ 0 }");
    }
}

@:include("raylib.h")
@:native("RayCollision")
@:structAccess
extern class RayCollision {
    var hit:Bool;
    var distance:Float;
    var point:Vector3;
    var normal:Vector3;

    static inline function create():RayCollision {
        return untyped __cpp__("(Ray){ 0 }");
    }
}

@:include("raylib.h")
@:native("BoundingBox")
@:structAccess
extern class BoundingBox {
    var min:Vector3;
    var max:Vector3;

    static inline function create(min:Vector3, max:Vector3):BoundingBox {
        return untyped __cpp__("(BoundingBox){ {0}, {1} }", min, max);
    }
}

@:include("raylib.h")
@:native("Wave")
@:structAccess
extern class Wave {
    var frameCount:UInt;
    var sampleRate:UInt;
    var sampleSize:UInt;
    var channels:UInt;
    var data:Star<Void>;
}

@:include("raylib.h")
@:native("rAudioBuffer")
@:structAccess
extern class RAudioBuffer {}

@:include("raylib.h")
@:native("rAudioProcessor")
@:structAccess
extern class RAudioProcessor {}

@:include("raylib.h")
@:native("AudioStream")
@:structAccess
extern class AudioStream {
    var buffer:Star<RAudioBuffer>;
    var processor:Star<RAudioProcessor>;

    var sampleRate:UInt;
    var sampleSize:UInt;
    var channels:UInt;
}

@:include("raylib.h")
@:native("Sound")
@:structAccess
extern class Sound {
    var stream:AudioStream;
    var frameCount:UInt;
}

@:include("raylib.h")
@:native("Music")
@:structAccess
extern class Music {
    var stream:AudioStream;
    var frameCount:UInt;
    var looping:Bool;

    var ctxType:Int;
    var ctxData:ConstStar<Void>;
}

@:include("raylib.h")
@:native("VrDeviceInfo")
@:structAccess
extern class VrDeviceInfo {
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
extern class VrStereoConfig {
    var projection:Matrix;
    var viewoffset:Matrix;
    var leftLensCenter:Float;
    var rightLensCenter:Float;
    var leftScreenCenter:Float;
    var rightScreenCenter:Float;
    var scale:Float;
    var scaleIn:Float;
}
//
// END SECTION TO BE FIXED
//

@:include("raylib.h")
@:native("FilePathList")
@:structAccess
extern class FilePathList {
    var capacity:cpp.UInt32;
    var count:cpp.UInt32;
    var paths:Star<Star<cpp.Char>>;
}

@:include("raylib.h")
extern enum abstract ConfigFlags(UInt) {
    @:native("FLAG_VSYNC_HINT")
    var VSYNC_HINT:UInt;
    @:native("FLAG_FULLSCREEN_MODE")
    var FULLSCREEN_MODE:UInt;
    @:native("FLAG_WINDOW_RESIZABLE")
    var WINDOW_RESIZABLE:UInt;
    @:native("FLAG_WINDOW_UNDECORATED")
    var WINDOW_UNDECORATED:UInt;
    @:native("FLAG_WINDOW_HIDDEN")
    var WINDOW_HIDDEN:UInt;
    @:native("FLAG_WINDOW_MINIMIZED")
    var WINDOW_MINIMIZED:UInt;
    @:native("FLAG_WINDOW_MAXIMIZED")
    var WINDOW_MAXIMIZED:UInt;
    @:native("FLAG_WINDOW_UNFOCUSED")
    var WINDOW_UNFOCUSED:UInt;
    @:native("FLAG_WINDOW_TOPMOST")
    var WINDOW_TOPMOST:UInt;
    @:native("FLAG_WINDOW_ALWAYS_RUN")
    var WINDOW_ALWAYS_RUN:UInt;
    @:native("FLAG_WINDOW_TRANSPARENT")
    var WINDOW_TRANSPARENT:UInt;
    @:native("FLAG_WINDOW_HIGHDPI")
    var WINDOW_HIGHDPI:UInt;
    @:native("FLAG_MSAA_4X_HINT")
    var MSAA_4X_HINT:UInt;
    @:native("FLAG_INTERLACED_HINT")
    var INTERLACED_HINT:UInt;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int) {
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
extern enum abstract CameraProjection(Int) {
    @:native("CAMERA_PERSPECTIVE") static var PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC") static var ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern enum abstract CameraMode(Int) {
    @:native("CAMERA_CUSTOM") static var CUSTOM:Int;
    @:native("CAMERA_FREE") static var FREE:Int;
    @:native("CAMERA_ORBITAL") static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON") static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON") static var THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract Config(UInt) {}

/** Keyboard keys (US keyboard layout) **/
@:include("raylib.h")
extern enum abstract Keys(Int) to Int from Int {
    @:native("KEY_NULL")
    var NULL;
    @:native("KEY_APOSTROPHE")
    var APOSTROPHE;
    @:native("KEY_COMMA")
    var COMMA;
    @:native("KEY_MINUS")
    var MINUS;
    @:native("KEY_PERIOD")
    var PERIOD;
    @:native("KEY_SLASH")
    var SLASH;
    @:native("KEY_ZERO")
    var ZERO;
    @:native("KEY_ONE")
    var ONE;
    @:native("KEY_TWO")
    var TWO;
    @:native("KEY_THREE")
    var THREE;
    @:native("KEY_FOUR")
    var FOUR;
    @:native("KEY_FIVE")
    var FIVE;
    @:native("KEY_SIX")
    var SIX;
    @:native("KEY_SEVEN")
    var SEVEN;
    @:native("KEY_EIGHT")
    var EIGHT;
    @:native("KEY_NINE")
    var NINE;
    @:native("KEY_SEMICOLON")
    var SEMICOLON;
    @:native("KEY_EQUAL")
    var EQUAL;
    @:native("KEY_A")
    var A;
    @:native("KEY_B")
    var B;
    @:native("KEY_C")
    var C;
    @:native("KEY_D")
    var D;
    @:native("KEY_E")
    var E;
    @:native("KEY_F")
    var F;
    @:native("KEY_G")
    var G;
    @:native("KEY_H")
    var H;
    @:native("KEY_I")
    var I;
    @:native("KEY_J")
    var J;
    @:native("KEY_K")
    var K;
    @:native("KEY_L")
    var L;
    @:native("KEY_M")
    var M;
    @:native("KEY_N")
    var N;
    @:native("KEY_O")
    var O;
    @:native("KEY_P")
    var P;
    @:native("KEY_Q")
    var Q;
    @:native("KEY_R")
    var R;
    @:native("KEY_S")
    var S;
    @:native("KEY_T")
    var T;
    @:native("KEY_U")
    var U;
    @:native("KEY_V")
    var V;
    @:native("KEY_W")
    var W;
    @:native("KEY_X")
    var X;
    @:native("KEY_Y")
    var Y;
    @:native("KEY_Z")
    var Z;
    @:native("KEY_SPACE")
    var SPACE;
    @:native("KEY_ESCAPE")
    var ESCAPE;
    @:native("KEY_ENTER")
    var ENTER;
    @:native("KEY_TAB")
    var TAB;
    @:native("KEY_BACKSPACE")
    var BACKSPACE;
    @:native("KEY_INSERT")
    var INSERT;
    @:native("KEY_DELETE")
    var DELETE;
    @:native("KEY_RIGHT")
    var RIGHT;
    @:native("KEY_LEFT")
    var LEFT;
    @:native("KEY_DOWN")
    var DOWN;
    @:native("KEY_UP")
    var UP;
    @:native("KEY_PAGE_UP")
    var PAGE_UP;
    @:native("KEY_PAGE_DOWN")
    var PAGE_DOWN;
    @:native("KEY_HOME")
    var HOME;
    @:native("KEY_END")
    var END;
    @:native("KEY_CAPS_LOCK")
    var CAPS_LOCK;
    @:native("KEY_SCROLL_LOCK")
    var SCROLL_LOCK;
    @:native("KEY_NUM_LOCK")
    var NUM_LOCK;
    @:native("KEY_PRINT_SCREEN")
    var PRINT_SCREEN;
    @:native("KEY_PAUSE")
    var PAUSE;
    @:native("KEY_F1")
    var F1;
    @:native("KEY_F2")
    var F2;
    @:native("KEY_F3")
    var F3;
    @:native("KEY_F4")
    var F4;
    @:native("KEY_F5")
    var F5;
    @:native("KEY_F6")
    var F6;
    @:native("KEY_F7")
    var F7;
    @:native("KEY_F8")
    var F8;
    @:native("KEY_F9")
    var F9;
    @:native("KEY_F10")
    var F10;
    @:native("KEY_F11")
    var F11;
    @:native("KEY_F12")
    var F12;
    @:native("KEY_LEFT_SHIFT")
    var LEFT_SHIFT;
    @:native("KEY_LEFT_CONTROL")
    var LEFT_CONTROL;
    @:native("KEY_LEFT_ALT")
    var LEFT_ALT;
    @:native("KEY_LEFT_SUPER")
    var LEFT_SUPER;
    @:native("KEY_RIGHT_SHIFT")
    var RIGHT_SHIFT;
    @:native("KEY_RIGHT_CONTROL")
    var RIGHT_CONTROL;
    @:native("KEY_RIGHT_ALT")
    var RIGHT_ALT;
    @:native("KEY_RIGHT_SUPER")
    var RIGHT_SUPER;
    @:native("KEY_KB_MENU")
    var KB_MENU;
    @:native("KEY_LEFT_BRACKET")
    var LEFT_BRACKET;
    @:native("KEY_BACKSLASH")
    var BACKSLASH;
    @:native("KEY_RIGHT_BRACKET")
    var RIGHT_BRACKET;
    @:native("KEY_GRAVE")
    var GRAVE;
    @:native("KEY_KP_0")
    var KP_0;
    @:native("KEY_KP_1")
    var KP_1;
    @:native("KEY_KP_2")
    var KP_2;
    @:native("KEY_KP_3")
    var KP_3;
    @:native("KEY_KP_4")
    var KP_4;
    @:native("KEY_KP_5")
    var KP_5;
    @:native("KEY_KP_6")
    var KP_6;
    @:native("KEY_KP_7")
    var KP_7;
    @:native("KEY_KP_8")
    var KP_8;
    @:native("KEY_KP_9")
    var KP_9;
    @:native("KEY_KP_DECIMAL")
    var KP_DECIMAL;
    @:native("KEY_KP_DIVIDE")
    var KP_DIVIDE;
    @:native("KEY_KP_MULTIPLY")
    var KP_MULTIPLY;
    @:native("KEY_KP_SUBTRACT")
    var KP_SUBTRACT;
    @:native("KEY_KP_ADD")
    var KP_ADD;
    @:native("KEY_KP_ENTER")
    var KP_ENTER;
    @:native("KEY_KP_EQUAL")
    var KP_EQUAL;
}

// Mouse buttons

@:include("raylib.h")
extern enum abstract MouseButton(Int) {
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
extern enum abstract MouseCursor(Int) {
    @:native("MOUSE_CURSOR_DEFAULT")
    var DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")
    var ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")
    var IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")
    var CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")
    var POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW") // The horizontal resize/move arrow shape
    var RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS") // The vertical resize/move arrow shape
    var RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE") // The top-left to bottom-right diagonal resize/move arrow shape
    var RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW") // The top-right to bottom-left diagonal resize/move arrow shape
    var RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL") // The omni-directional resize/move cursor shape
    var RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED") // The operation-not-allowed shape
    var NOT_ALLOWED:Int;
}

// Gamepad buttons

@:include("raylib.h")
extern enum abstract GamepadButton(UInt) {
    // This is here just for error checking
    @:native("GAMEPAD_BUTTON_UNKNOWN")
    var UNKNOWN:UInt;
    // This is normally a DPAD
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")
    var LEFT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_RIGHT")
    var LEFT_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_DOWN")
    var LEFT_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_LEFT")
    var LEFT_FACE_LEFT:UInt;
    // This normally corresponds with PlayStation and Xbox controllers
    // XBOX: [Y,X,A,B]
    // PS3: [Triangle,Square,Cross,Circle]
    // No support for 6 button controllers though..
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")
    var RIGHT_FACE_UP:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")
    var RIGHT_FACE_RIGHT:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")
    var RIGHT_FACE_DOWN:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")
    var RIGHT_FACE_LEFT:UInt;
    // Triggers
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")
    var LEFT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")
    var LEFT_TRIGGER_2:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")
    var RIGHT_TRIGGER_1:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")
    var RIGHT_TRIGGER_2:UInt;
    // These are buttons in the center of the gamepad
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")
    var MIDDLE_LEFT:UInt; // PS3 Select
    @:native("GAMEPAD_BUTTON_MIDDLE")
    var MIDDLE:UInt; // PS Button/XBOX Button
    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")
    var MIDDLE_RIGHT:UInt; // PS3 Start
    // These are the joystick press in buttons
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")
    var LEFT_THUMB:UInt;
    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")
    var RIGHT_THUMB:UInt;
}

// Gampad axis

@:include("raylib.h")
extern enum abstract GamepadAxis(UInt) {
    // Left stick
    @:native("GAMEPAD_AXIS_LEFT_X")
    var LEFT_X:UInt;
    @:native("GAMEPAD_AXIS_LEFT_Y")
    var LEFT_Y:UInt;
    // Right stick
    @:native("GAMEPAD_AXIS_RIGHT_X")
    var RIGHT_X:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_Y")
    var RIGHT_Y:UInt;
    // Pressure levels for the back triggers
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")
    var LEFT_TRIGGER:UInt;
    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")
    var RIGHT_TRIGGER:UInt;
}

@:include("raylib.h")
extern enum abstract MaterialMapIndex(UInt) {
    @:native("MATERIAL_MAP_ALBEDO")
    var ALBEDO:UInt;
    @:native("MATERIAL_MAP_METALNESS")
    var METALNESS:UInt;
    @:native("MATERIAL_MAP_NORMAL")
    var NORMAL:UInt;
    @:native("MATERIAL_MAP_ROUGHNESS")
    var ROUGHNESS:UInt;
    @:native("MATERIAL_MAP_OCCLUSION")
    var OCCLUSION:UInt;
    @:native("MATERIAL_MAP_EMISSION")
    var EMISSION:UInt;
    @:native("MATERIAL_MAP_HEIGHT")
    var HEIGHT:UInt;
    @:native("MATERIAL_MAP_CUBEMAP")
    var CUBEMAP:UInt;
    @:native("MATERIAL_MAP_IRRADIANCE")
    var IRRADIANCE:UInt;
    @:native("MATERIAL_MAP_PREFILTER")
    var PREFILTER:UInt;
    @:native("MATERIAL_MAP_BRDF")
    var BRDF:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(UInt) {
    @:native("SHADER_LOC_VERTEX_POSITION")
    var VERTEX_POSITION:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD01")
    var VERTEX_TEXCOORD01:UInt;
    @:native("SHADER_LOC_VERTEX_TEXCOORD02")
    var VERTEX_TEXCOORD02:UInt;
    @:native("SHADER_LOC_VERTEX_NORMAL")
    var VERTEX_NORMAL:UInt;
    @:native("SHADER_LOC_VERTEX_TANGENT")
    var VERTEX_TANGENT:UInt;
    @:native("SHADER_LOC_VERTEX_COLOR")
    var VERTEX_COLOR:UInt;
    @:native("SHADER_LOC_MATRIX_MVP")
    var MATRIX_MVP:UInt;
    @:native("SHADER_LOC_MATRIX_VIEW")
    var MATRIX_VIEW:UInt;
    @:native("SHADER_LOC_MATRIX_PROJECTION")
    var MATRIX_PROJECTION:UInt;
    @:native("SHADER_LOC_MATRIX_MODEL")
    var MATRIX_MODEL:UInt;
    @:native("SHADER_LOC_MATRIX_NORMAL")
    var MATRIX_NORMAL:UInt;
    @:native("SHADER_LOC_VECTOR_VIEW")
    var VECTOR_VIEW:UInt;
    @:native("SHADER_LOC_COLOR_DIFFUSE")
    var COLOR_DIFFUSE:UInt;
    @:native("SHADER_LOC_COLOR_SPECULAR")
    var COLOR_SPECULAR:UInt;
    @:native("SHADER_LOC_COLOR_AMBIENT")
    var COLOR_AMBIENT:UInt;
    @:native("SHADER_LOC_MAP_ALBEDO")
    var MAP_ALBEDO:UInt;
    @:native("SHADER_LOC_MAP_METALNESS")
    var MAP_METALNESS:UInt;
    @:native("SHADER_LOC_MAP_NORMAL")
    var MAP_NORMAL:UInt;
    @:native("SHADER_LOC_MAP_ROUGHNESS")
    var MAP_ROUGHNESS:UInt;
    @:native("SHADER_LOC_MAP_OCCLUSION")
    var MAP_OCCLUSION:UInt;
    @:native("SHADER_LOC_MAP_EMISSION")
    var MAP_EMISSION:UInt;
    @:native("SHADER_LOC_MAP_HEIGHT")
    var MAP_HEIGHT:UInt;
    @:native("SHADER_LOC_MAP_CUBEMAP")
    var MAP_CUBEMAP:UInt;
    @:native("SHADER_LOC_MAP_IRRADIANCE")
    var MAP_IRRADIANCE:UInt;
    @:native("SHADER_LOC_MAP_PREFILTER")
    var MAP_PREFILTER:UInt;
    @:native("SHADER_LOC_MAP_BRDF")
    var MAP_BRDF:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderUniform(UInt) {
    @:native("SHADER_UNIFORM_FLOAT")
    var FLOAT:UInt;
    @:native("SHADER_UNIFORM_VEC2")
    var VEC2:UInt;
    @:native("SHADER_UNIFORM_VEC3")
    var VEC3:UInt;
    @:native("SHADER_UNIFORM_VEC4")
    var VEC4:UInt;
    @:native("SHADER_UNIFORM_INT")
    var INT:UInt;
    @:native("SHADER_UNIFORM_IVEC2")
    var IVEC2:UInt;
    @:native("SHADER_UNIFORM_IVEC3")
    var IVEC3:UInt;
    @:native("SHADER_UNIFORM_IVEC4")
    var IVEC4:UInt;
    @:native("SHADER_UNIFORM_SAMPLER2D")
    var SAMPLER2D:UInt;
}

@:include("raylib.h")
extern enum abstract ShaderAttribute(UInt) {
    @:native("SHADER_ATTRIB_FLOAT")
    var FLOAT:UInt;
    @:native("SHADER_ATTRIB_VEC2")
    var VEC2:UInt;
    @:native("SHADER_ATTRIB_VEC3")
    var VEC3:UInt;
    @:native("SHADER_ATTRIB_VEC4")
    var VEC4:UInt;
}

@:include("raylib.h")
extern enum abstract PixelFormat(UInt) {
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")
    var UNCOMPRESSED_GRAYSCALE:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")
    var UNCOMPRESSED_GRAY_ALPHA:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")
    var UNCOMPRESSED_R5G6B5:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")
    var UNCOMPRESSED_R8G8B8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")
    var UNCOMPRESSED_R5G5B5A1:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")
    var UNCOMPRESSED_R4G4B4A4:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")
    var UNCOMPRESSED_R8G8B8A8:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32")
    var UNCOMPRESSED_R32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")
    var UNCOMPRESSED_R32G32B32:UInt;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")
    var UNCOMPRESSED_R32G32B32A32:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")
    var COMPRESSED_DXT1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")
    var COMPRESSED_DXT1_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")
    var COMPRESSED_DXT3_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")
    var COMPRESSED_DXT5_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")
    var COMPRESSED_ETC1_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")
    var COMPRESSED_ETC2_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")
    var COMPRESSED_ETC2_EAC_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")
    var COMPRESSED_PVRT_RGB:UInt;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")
    var COMPRESSED_PVRT_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")
    var COMPRESSED_ASTC_4x4_RGBA:UInt;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")
    var COMPRESSED_ASTC_8x8_RGBA:UInt;
}

@:include("raylib.h")
extern enum abstract TextureFilter(UInt) {
    @:native("TEXTURE_FILTER_POINT")
    var POINT:UInt;
    @:native("TEXTURE_FILTER_BILINEAR")
    var BILINEAR:UInt;
    @:native("TEXTURE_FILTER_TRILINEAR")
    var TRILINEAR:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")
    var ANISOTROPIC_4X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")
    var ANISOTROPIC_8X:UInt;
    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")
    var ANISOTROPIC_16X:UInt;
}

@:include("raylib.h")
extern enum abstract TextureWrap(UInt) {
    @:native("TEXTURE_WRAP_REPEAT")
    var REPEAT:UInt;
    @:native("TEXTURE_WRAP_CLAMP")
    var CLAMP:UInt;
    @:native("TEXTURE_WRAP_MIRROR_REPEAT")
    var MIRROR_REPEAT:UInt;
    @:native("TEXTURE_WRAP_MIRROR_CLAMP")
    var MIRROR_CLAMP:UInt;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(UInt) {
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")
    var AUTO_DETECT:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")
    var LINE_VERTICAL:UInt;
    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")
    var LINE_HORIZONTAL:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")
    var CROSS_THREE_BY_FOUR:UInt;
    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")
    var CROSS_FOUR_BY_THREE:UInt;
    @:native("CUBEMAP_LAYOUT_PANORAMA")
    var PANORAMA:UInt;
}

@:include("raylib.h")
extern enum abstract FontType(UInt) {
    @:native("FONT_DEFAULT")
    var DEFAULT:UInt;
    @:native("FONT_BITMAP")
    var BITMAP:UInt;
    @:native("FONT_SDF")
    var SDF:UInt;
}

@:include("raylib.h")
extern enum abstract BlendMode(UInt) {
    @:native("BLEND_ALPHA")
    var ALPHA:UInt;
    @:native("BLEND_ADDITIVE")
    var ADDITIVE:UInt;
    @:native("BLEND_MULTIPLIED")
    var MULTIPLIED:UInt;
    @:native("BLEND_ADD_COLORS")
    var ADD_COLORS:UInt;
    @:native("BLEND_SUBTRACT_COLORS")
    var SUBTRACT_COLORS:UInt;
    @:native("BLEND_CUSTOM")
    var CUSTOM:UInt;
}

@:include("raylib.h")
extern enum abstract Gesture(UInt) {
    @:native("GESTURE_NONE")
    var NONE:UInt;
    @:native("GESTURE_TAP")
    var TAP:UInt;
    @:native("GESTURE_DOUBLETAP")
    var DOUBLETAP:UInt;
    @:native("GESTURE_HOLD")
    var HOLD:UInt;
    @:native("GESTURE_DRAG")
    var DRAG:UInt;
    @:native("GESTURE_SWIPE_RIGHT")
    var SWIPE_RIGHT:UInt;
    @:native("GESTURE_SWIPE_LEFT")
    var SWIPE_LEFT:UInt;
    @:native("GESTURE_SWIPE_UP")
    var SWIPE_UP:UInt;
    @:native("GESTURE_SWIPE_DOWN")
    var SWIPE_DOWN:UInt;
    @:native("GESTURE_PINCH_IN")
    var PINCH_IN:UInt;
    @:native("GESTURE_PINCH_OUT")
    var PINCH_OUT:UInt;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(UInt) {
    @:native("NPATCH_NINE_PATCH")
    var NINE_PATCH:UInt;
    @:native("NPATCH_THREE_PATCH_VERTICAL")
    var THREE_PATCH_VERTICAL:UInt;
    @:native("NPATCH_THREE_PATCH_HORIZONTAL")
    var THREE_PATCH_HORIZONTAL:UInt;
}

#if wasm
@:buildXml("<include name='${haxelib:raylib-hx}/source/Web.xml'/>")
#elseif wasm_no_asnyc
@:buildXml("<include name='${haxelib:raylib-hx}/source/WebNoAsnyc.xml'/>")
#elseif shared_libs
@:buildXml("<include name='${haxelib:raylib-hx}/source/DynLib.xml'/>")
#else
@:buildXml("<include name='${haxelib:raylib-hx}/source/Build.xml'/>")
#end
@:include("raylib.h")
extern class Rl {
    //------------------------------------------------------------------------------------
    // Core module
    //------------------------------------------------------------------------------------
    // Window-related functions
    @:native("InitWindow") static function initWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose") static function windowShouldClose():Bool;
    @:native("CloseWindow") static function closeWindow():Bool;
    @:native("IsWindowReady") static function isWindowReady():Bool;
    @:native("IsWindowFullscreen") static function isWindowFullscreen():Bool;
    @:native("IsWindowHidden") static function isWindowHidden():Bool;
    @:native("IsWindowMinimized") static function isWindowsMinimized():Bool;
    @:native("IsWindowMaximized") static function isWindowMaximized():Bool;
    @:native("IsWindowFocused") static function isWindowFocused():Bool;
    @:native("IsWindowResized") static function isWindowResized():Bool;
    @:native("IsWindowState") static function isWindowState(flag:UInt):Bool;
    @:native("SetWindowState") static function setWindowState(flag:UInt):Void;
    @:native("ClearWindowState") static function clearWindowState(flag:UInt):Void;
    @:native("ToggleFullscreen") static function toggleFullscreen():Void;
    @:native("MaximizeWindow") static function maximizeWindow():Void;
    @:native("MinimizeWindow") static function minimizeWindow():Void;
    @:native("RestoreWindow") static function restoreWindow():Void;
    @:native("SetWindowIcon") static function setWindowIcon(image:Image):Void;
    @:native("SetWindowTitle") static function setWindowTitle(title:ConstCharStar):Void;
    @:native("SetWindowPosition") static function setWindowPosition(x:Int, y:Int):Void;
    @:native("SetWindowMonitor") static function setWindowMonitor(monitor:Int):Void;
    @:native("SetWindowMinSize") static function setWindowMinSize(width:Int, height:Int):Void;
    @:native("SetWindowSize") static function setWindowSize(width:Int, height:Int):Void;
    @:native("GetWindowHandle") static function getWindowHandle():Star<Void>; // Not to be used in haxe
    @:native("GetScreenWidth") static function getScreenWidth():Int;
    @:native("GetScreenHeight") static function getScreenHeight():Int;
    @:native("GetMonitorCount") static function getMonitorCount():Int;
    @:native("GetCurrentMonitor") static function getCurrentMonitor():Int;
    @:native("GetMonitorPosition") static function getMonitorPosition(monitor:Int):Vector2;
    @:native("GetMonitorWidth") static function getMonitorWidth(monitor:Int):Int;
    @:native("GetMonitorHeight") static function getMonitorHeight(monitor:Int):Int;
    @:native("GetMonitorPhysicalWidth") static function getMonitorPhysicalWidth(monitor:Int):Int;
    @:native("GetMonitorPhysicalHeight") static function getMonitorPhysicalHeight(monitor:Int):Int;
    @:native("GetMonitorRefershRate") static function getMonitorRefershRate(monitor:Int):Int;
    @:native("GetWindowPosition") static function getWindowPosition():Vector2;
    @:native("GetWindowScaleDPI") static function getWindowScaleDPI():Vector2;
    @:native("GetMonitorName") static function getMonitorName(monitor:Int):ConstCharStar;
    @:native("SetClipboardText") static function setClipboardText(text:ConstCharStar):Void;
    @:native("GetClipboardText") static function getClipboardText():ConstCharStar;
    @:native("EnableEventWaiting") static function enableEventWaiting():Void;
    @:native("DisableEventWaiting") static function disableEventWaiting():Void;

    // Custom frame control functions
    // NOTE: Those functions are intended for advance users that want full control over the frame processing
    // By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timming + PollInputEvents()
    // To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL
    @:native("InitTimer") static function initTimer():Void;
    @:native("WaitTime") static function waitTime(ms:Float):Void;
    @:native("SwapScreenBuffer") static function swapScreenBuffer():Void;
    @:native("PollInputEvents") static function pollInputEvents():Void;

    // Cursor-related functions
    @:native("ShowCursor") static function showCursor():Void;
    @:native("HideCursor") static function hideCursor():Void;
    @:native("IsCursorHidden") static function isCursorHidden():Bool;
    @:native("EnableCursor") static function enableCursor():Void;
    @:native("DisableCursor") static function disableCursor():Void;
    @:native("IsCursorOnScreen") static function isCursorOnScreen():Bool;

    // Drawing-related functions
    @:native("ClearBackground") static function clearBackground(color:Color):Void;
    @:native("BeginDrawing") static function beginDrawing():Void;
    @:native("EndDrawing") static function endDrawing():Void;
    @:native("BeginMode2D") static function beginMode2D(camera:Camera2D):Void;
    @:native("EndMode2D") static function endMode2D():Void;
    @:native("BeginMode3D") static function beginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D") static function endMode3D():Void;
    @:native("BeginTextureMode") static function beginTextureMode(target:RenderTexture2D):Void;
    @:native("EndTextureMode") static function endTextureMode():Void;
    @:native("BeginShaderMode") static function beginShaderMode(shader:Shader):Void;
    @:native("EndShaderMode") static function endShaderMode():Void;
    @:native("BeginBlendMode") static function beginBlendMode(mode:Int):Void;
    @:native("EndBlendMode") static function endBlendMode():Void;
    @:native("BeginScissorMode") static function beginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("EndScissorMode") static function endScissorMode():Void;
    @:native("BeginVrStereoMode") static function beginVrStereoMode(config:VrStereoConfig):Void;
    @:native("EndVrStereoMode") static function endVrStereoMode():Void;

    @:native("LoadVrStereoConfig") static function loadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;
    @:native("UnloadVrStereoConfig") static function unloadVrStereoConfig(config:VrStereoConfig):Void;

    // Shader manangement function
    @:native("LoadShader") static function loadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;
    @:native("LoadShaderFromMemory") static function loadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;
    @:native("GetShaderLocation") static function getShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;
    @:native("GetShaderLocationAttrib") static function getShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int;
    @:native("SetShaderValue") static function setShaderValue(shader:Shader, locIndex:Int, value:RawConstPointer<Void>, uniformType:Int):Void;
    @:native("SetShaderValueV") static function setShaderValueV(shader:Shader, locIndex:Int, value:ConstStar<Void>, uniformType:Int, count:Int):Void;
    @:native("SetShaderValueMatrix") static function setShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;
    @:native("SetShaderValueTexture") static function setShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void;
    @:native("UnloadShader") static function unloadShader(shader:Shader):Void;

    // Screen-space-related functions
    @:native("GetMouseRay") static function getMouseRay(mousePosition:Vector2, camera:Camera):Ray;
    @:native("GetCameraMatrix") static function getCameraMatrix(camera:Camera):Matrix;
    @:native("GetCameraMatrix2D") static function getCameraMatrix2D(camera:Camera2D):Matrix;
    @:native("GetWorldToScreen") static function getWorldToScreen(position:Vector3, camera:Camera):Vector2;
    @:native("GetWorldToScreenEx") static function getWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2;
    @:native("GetWorldToScreen2D") static function getWorldToScreen2D(postition:Vector2, camera:Camera2D):Vector2;
    @:native("GetScreenToWorld2D") static function getScreenToWorld2D(position:Vector2, camera:Camera2D):Vector2;

    // Timing-related functions
    @:native("SetTargetFPS") static function setTargetFPS(fps:Int):Void;
    @:native("GetFrameTime") static function getFrameTime():Float;
    @:native("GetFPS") static function getFPS():Int;
    @:native("GetTime") static function getTime():Int;

    // Misc. functions
    @:native("GetRandomValue") static function getRandomValue(min:Int, max:Int):Int;
    @:native("SetRandomSeed") static function setRandomSeed(seed:cpp.UInt32):Void;
    @:native("TakeScreenshot") static function takeScreenshot(fileName:ConstCharStar):Void;
    @:native("SetConfigFlags") static function setConfigFlags(flags:UInt):Void;

    @:native("TraceLog") static function traceLog(logLevel:Int, text:ConstCharStar):Void;
    @:native("SetTraceLogLevel") static function setTraceLogLevel(logLevel:Int):Void;
    @:native("MemAlloc") static function memAlloc(size:Int):Star<Void>;
    @:native("MemRealloc") static function memRealloc(ptr:Star<Void>, size:Int):Star<Void>;
    @:native("MemFree") static function memFree(ptr:Star<Void>):Void;

    @:native("OpenURL") static function openURL(url:ConstCharStar):Void;

    // Files management functions
    @:native("LoadFileData") static function loadFileData(filename:ConstCharStar, bytesRead:Star<UInt>):Star<UInt16>;
    @:native("UnloadFileData") static function unloadFileData(data:Star<UInt16>):Void;
    @:native("SaveFileData") static function saveFileData(filename:Star<UInt16>, data:Star<Void>, byetsToWrite:UInt):Bool;
    @:native("LoadFileText") static function loadFileText(fileName:ConstCharStar):Char;
    @:native("UnloadFileText") static function unloadFileText(text:ConstCharStar):Void;
    @:native("SaveFileText") static function saveFileText(fileName:ConstCharStar, text:ConstCharStar):Bool;
    @:native("FileExists") static function fileExists(fileName:ConstCharStar):Bool;
    @:native("DirectoryExists") static function directoryExists(dirPath:ConstCharStar):Bool;
    @:native("IsFileExtension") static function isFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;
    @:native("GetFileExtension") static function getFileExtension(fileName:ConstCharStar):ConstCharStar;
    @:native("GetFileName") static function getFileName(filePath:ConstCharStar):ConstCharStar;
    @:native("GetFileNameWithoutExt") static function getFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;
    @:native("GetDirectoryPath") static function getDirectoryPath(filePath:ConstCharStar):ConstCharStar;
    @:native("GetPrevDirectoryPath") static function getPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;
    @:native("GetWorkingDirectory") static function getWorkingDirectory():ConstCharStar;
    @:native("GetApplicationDirectory") static function getApplicationDirectory():ConstCharStar;
    @:native("ChangeDirectory") static function changeDirectory(dir:ConstCharStar):Bool;
    @:native("IsPathFile") static function isPathFile(path:ConstCharStar):Bool;
    @:native("LoadDirectoryFiles") static function loadDirectoryFiles(dirPath:Star<ConstCharStar>):FilePathList;
    @:native("LoadDirectoryFilesEx") static function loadDirectoryFilesEx(basePath:Star<ConstCharStar>, filter:Star<ConstCharStar>, scanSubdirs:Bool):FilePathList;
    @:native("UnloadDirectoryFiles") static function unloadDirectoryFiles(files:FilePathList):Void;
    @:native("IsFileDropped") static function isFileDropped():Bool;
    @:native("LoadDroppedFiles") static function loadDroppedFiles():FilePathList;
    @:native("UnloadDroppedFiles") static function unloadDroppedFiles(files:FilePathList):Void;
    @:native("GetFileModTime") static function getFileModTime(fileName:ConstCharStar):Float;

    // Input-related functions: keyboard
    @:native("IsKeyPressed") static function isKeyPressed(key:Int):Bool;
    @:native("IsKeyDown") static function isKeyDown(key:Int):Bool;
    @:native("IsKeyReleased") static function isKeyReleased(key:Int):Bool;
    @:native("IsKeyUp") static function isKeyUp(key:Int):Bool;
    @:native("SetExitKey") static function setExitKey(key:Int):Void;
    @:native("GetKeyPressed") static function getKeyPressed():Int;
    @:native("GetCharPressed") static function getCharPressed():Int;

    // Input-relate functions: gamepads
    @:native("IsGamepadAvailable") static function isGamepadAvailable(gamepad:Int):Bool;
    @:native("IsGamepadName") static function isGamepadName(gamepad:Int, name:ConstCharStar):Bool;
    @:native("GetGamepadName") static function getGamepadName(gamepad:Int):ConstCharStar;
    @:native("IsGamepadButtonPressed") static function isGamepadButtonPressed(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonDown") static function isGamepadButtonDown(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonReleased") static function isGamepadButtonReleased(gamepad:Int, button:Int):Bool;
    @:native("IsGamepadButtonUp") static function isGamepadButtonUp(gamepad:Int, button:Int):Bool;
    @:native("GetGamepadButtonPressed") static function getGamepadButtonPressed():Int;
    @:native("GetGamepadAxisCount") static function getGamepadAxisCount(gamepad:Int):Int;
    @:native("GetGamepadAxisMovement") static function getGamepadAxisMovement(gamepad:Int, axis:Int):Float;
    @:native("SetGamepadMappings") static function setGamepadMappings(mappings:ConstCharStar):Int;

    // Input-related functions: mouse
    @:native("IsMouseButtonPressed") static function isMouseButtonPressed(button:Int):Bool;
    @:native("IsMouseButtonDown") static function isMouseButtonDown(button:Int):Bool;
    @:native("IsMouseButtonReleased") static function isMouseButtonReleased(button:Int):Bool;
    @:native("IsMouseButtonUp") static function isMouseButtonUp(buttton:Int):Bool;
    @:native("GetMouseX") static function getMouseX():Int;
    @:native("GetMouseY") static function getMouseY():Int;
    @:native("GetMousePosition") static function getMousePosition():Vector2;
    @:native("GetMouseDelta") static function getMouseDelta():Vector2;
    @:native("SetMousePosition") static function setMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset") static function setMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("GetMouseWheelMove") static function getMouseWheelMove():Float;
    @:native("SetMouseCursor") static function setMouseCursor(cursor:Int):Void;

    // Input-related functions: touch
    @:native("GetTouchX") static function getTouchX():Int;
    @:native("GetTouchY") static function getTouchY():Int;
    @:native("GetTouchPosition") static function getTouchPosition(index:Int):Vector2;
    @:native("GetTouchPointId") static function getTouchPointId(index:Int):Int;
    @:native("GetTouchPointCount") static function getTouchPointCount():Int;

    // Gestures and Touch Handling Functions (Module: gestures)
    @:native("SetGestureEnabled") static function setGestureEnabled(flags:UInt):Void;
    @:native("IsGestureDetected") static function isGestureDetected(gesture:Int):Bool;
    @:native("GetGestureDetected") static function getGestureDetected():Int;
    @:native("GetTouchPointsCount") static function getTouchPointsCount():Int;
    @:native("GetGestureHoldDuration") static function getGestureHoldDuration():Float;
    @:native("GetGestureDragVector") static function getGestureDragVector():Vector2;
    @:native("GetGestureDragAngle") static function getGestureDragAngle():Float;
    @:native("GetGesturePinchVector") static function getGesturePinchVector():Vector2;
    @:native("GetGesturePinchAngle") static function getGesturePinchAngle():Float;

    // Camera system functions
    @:native("SetCameraMode") static function setCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera") static function updateCamera(camera:Star<Camera3D>):Void;

    @:native("SetCameraPanControl") static function setCameraPanControl(keyPan:Int):Void;
    @:native("SetCameraAltControl") static function setCameraAltControl(keyAlt:Int):Void;
    @:native("SetCameraSmoothZoomControl") static function setCameraSmoothZoomControl(keySmoothZoom:Int):Void;
    @:native("SetCameraMoveControls") static function setCameraMoveControls(keyFron:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;

    //------------------------------------------------------------------------------------
    // Shapes module
    //------------------------------------------------------------------------------------
    @:native("SetShapesTexture") static function setShapesTexture(texture:Texture2D, source:Rectangle):Void;

    // Basic shapes drawing functions
    @:native("DrawPixel") static function drawPixel(posX:Int, posY:Int, color:Color):Void;
    @:native("DrawPixelV") static function drawPixelV(position:Vector2, color:Color):Void;
    @:native("DrawLine") static function drawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("DrawLineV") static function drawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;
    @:native("DrawLineEx") static function drawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezier") static function drawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineBezierQuad") static function drawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void;
    @:native("DrawLineStrip") static function drawLineStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawCircle") static function drawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    @:native("DrawCircleSector") static function drawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleSectorLines") static function drawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int,
        color:Color):Void;
    @:native("DrawCircleGradient") static function drawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;
    @:native("DrawCircleV") static function drawCircleV(center:Vector2, radius:Float, color:Color):Void;
    @:native("DrawCircleLines") static function drawCircleLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    @:native("DrawEllipse") static function drawEllipse(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;
    @:native("DrawEllipseLines") static function drawEllipseLines(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;
    @:native("DrawRing") static function drawRing(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;
    @:native("DrawRingLines") static function drawRingLines(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;
    @:native("DrawRectangle") static function drawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleV") static function drawRectangleV(position:Vector2, size:Vector2, color:Color):Void;
    @:native("DrawRectangleRec") static function drawRectangleRec(rec:Rectangle, color:Color):Void;
    @:native("DrawRectanglePro") static function drawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;
    @:native("DrawRectangleGradientV") static function drawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleGradientH") static function drawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleLines") static function drawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("DrawRectangleLinesEx") static function drawRectangleLinesEx(rec:Rectangle, lineThick:Int, color:Color):Void;
    @:native("DrawRectangleRounded") static function drawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;
    @:native("DrawRectangleRoundedLines") static function drawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Int,
        color:Color):Void;
    @:native("DrawTriangle") static function drawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;
    @:native("DrawTriangleLines") static function drawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;
    @:native("DrawTriangleFan") static function drawTriangleFan(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawTriangleStrip") static function drawTriangleStrip(points:Star<Vector2>, pointsCount:Int, color:Color):Void;
    @:native("DrawPoly") static function drawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLines") static function drawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;
    @:native("DrawPolyLinesEx") static function drawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;

    // Basic shapes collision detection functions
    @:native("CheckCollisionRecs") static function checkCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;
    @:native("CheckCollisionCircles") static function checkCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;
    @:native("CheckCollisionCircleRec") static function checkCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;
    @:native("CheckCollisionPointRec") static function checkCollisionPointRec(point:Vector2, rec:Rectangle):Bool;
    @:native("CheckCollisionPointCircle") static function checkCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;
    @:native("CheckCollisionPointTriangle") static function checkCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;
    @:native("CheckCollisionLines") static function checkCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2,
        collisionPoint:Star<Vector2>):Bool;
    @:native("CheckCollisionPointLine") static function checkCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;
    @:native("GetCollisionRec") static function getCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

    //------------------------------------------------------------------------------------
    // Textures module
    //------------------------------------------------------------------------------------
    // Image loading functions
    @:native("LoadImage") static function loadImage(fileName:ConstCharStar):Image;
    @:native("LoadImageRaw") static function loadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;
    @:native("LoadImageAnim") static function loadImageAnim(fileName:ConstCharStar, frames:Int):Image;
    @:native("LoadImageFromMemory") static function loadImageFromMemory(fileType:ConstCharStar, fileData:ConstStar<UInt8>, dataSize:Int):Image;
    @:native("LoadImageFromTexture") static function loadImageFromTexture(texture:Texture2D):Image;
    @:native("LoadImageFromScreen") static function loadImageFromScreen():Void;
    @:native("UnloadImage") static function unloadImage(image:Image):Void;
    @:native("ExportImage") static function exportImage(image:Image, fileName:ConstCharStar):Bool;

    // Image generation functions
    @:native("GenImageColor") static function genImageColor(width:Int, height:Int, color:Color):Image;
    @:native("GenImageGradientV") static function genImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image;
    @:native("GenImageGradientH") static function genImageGradientH(width:Int, height:Int, left:Color, right:Color):Image;
    @:native("GenImageGradientRadial") static function genImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;
    @:native("GenImageChecked") static function genImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, color:Color):Image;
    @:native("GenImageWhiteNoise") static function genImageWhiteNoise(width:Int, height:Int, factor:Float):Image;
    @:native("GenImageCellular") static function genImageCellular(width:Int, height:Int, tileSize:Int):Image;

    // Image manipulation functions
    @:native("ImageCopy") static function imageCopy(image:Image):Image;
    @:native("ImageFromImage") static function imageFromImage(image:Image, rec:Rectangle):Image;
    @:native("ImageText") static function imageText(text:ConstCharStar, fontSize:Int, color:Color):Image;
    @:native("ImageTextEx") static function imageTextEx(font:Font, text:ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;
    @:native("ImageFormat") static function imageFormat(image:Star<Image>, newFormat:Int):Void;
    @:native("ImageToPOT") static function imageToPOT(image:Star<Image>, fill:Color):Void;
    @:native("ImageCrop") static function imageCrop(image:Star<Image>, crop:Rectangle):Void;
    @:native("ImageAlphaCrop") static function imageAlphaCrop(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaClear") static function imageAlphaClear(image:Star<Image>, threshold:Float):Void;
    @:native("ImageAlphaMask") static function imageAlphaMask(image:Star<Image>, alphaMask:Image):Void;
    @:native("ImageAlphaPremultiply") static function imageAlphaPremultiply(image:Star<Image>):Void;
    @:native("ImageResize") static function imageResize(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeNN") static function imageResizeNN(image:Star<Image>, newWidth:Int, newHeight:Int):Void;
    @:native("ImageResizeCanvas") static function imageResizeCanvas(image:Star<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void;
    @:native("ImageMipmaps") static function imageMipmaps(image:Star<Image>):Void;
    @:native("ImageDither") static function imageDither(image:Star<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;
    @:native("ImageFlipVertical") static function imageFlipVertical(image:Star<Image>):Void;
    @:native("ImageFlipHorizontal") static function imageFlipHorizontal(image:Star<Image>):Void;
    @:native("ImageRotateCW") static function imageRotateCW(image:Star<Image>):Void;
    @:native("ImageRotateCCW") static function imageRotateCCW(image:Star<Image>):Void;
    @:native("ImageColorTint") static function imageColorTint(image:Star<Image>, color:Color):Void;
    @:native("ImageColorInvert") static function imageColorInvert(image:Star<Image>):Void;
    @:native("ImageColorGrayscale") static function imageColorGrayscale(image:Star<Image>):Void;
    @:native("ImageColorContrast") static function imageColorContrast(image:Star<Image>, contrast:Float):Void;
    @:native("ImageColorBrightness") static function imageColorBrightness(image:Star<Image>, brightness:Int):Void;
    @:native("ImageColorReplace") static function imageColorReplace(image:Star<Image>, color:Color, replace:Color):Void;
    @:native("LoadImageColors") static function loadImageColors(image:Image):Star<Color>;
    @:native("LoadImagePalette") static function loadImagePalette(image:Image, maxPaletteSize:Int, colorsCount:Star<Int>):Star<Color>;
    @:native("UnloadImageColors") static function unloadImageColors(colors:Star<Color>):Void;
    @:native("UnloadImagePalette") static function unloadImagePalette(colors:Star<Color>):Void;
    @:native("GetImageAlphaBorder") static function getImageAlphaBorder(image:Image, threshold:Float):Rectangle;
    @:native("GetImageColor") static function getImageColor(image:Image, x:Int, y:Int):Color;

    // Image drawing functions
    // NOTE: Image software-rendering functions (CPU)
    @:native("ImageClearBackground") static function imageClearBackground(dst:Star<Image>, color:Color):Void;
    @:native("ImageDrawPixel") static function imageDrawPixel(dst:Star<Image>, posX:Int, posY:Int, color:Color):Void;
    @:native("ImageDrawPixelV") static function imageDrawPixelV(dst:Star<Image>, position:Vector2, color:Color):Void;
    @:native("ImageDrawLine") static function imageDrawLine(dst:Star<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    @:native("ImageDrawLineV") static function imageDrawLineV(dst:Star<Image>, start:Vector2, end:Vector2, color:Color):Void;
    @:native("ImageDrawCircle") static function imageDrawCircle(dst:Star<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;
    @:native("ImageDrawCircleV") static function imageDrawCircleV(dst:Star<Image>, center:Vector2, radius:Int, color:Color):Void;
    @:native("ImageDrawRectangle") static function imageDrawRectangle(dst:Star<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    @:native("ImageDrawRectangleV") static function imageDrawRectangleV(dst:Star<Image>, position:Vector2, size:Vector2, color:Color):Void;
    @:native("ImageDrawRectangleRec") static function imageDrawRectangleRec(dst:Star<Image>, rec:Rectangle, color:Color):Void;
    @:native("ImageDrawRectangleLines") static function imageDrawRectangleLines(dst:Star<Image>, rec:Rectangle, thick:Int, color:Color):Void;
    @:native("ImageDraw") static function imageDraw(dst:Star<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;
    @:native("ImageDrawText") static function imageDrawText(dst:Star<Image>, text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;
    @:native("ImageDrawTextEx") static function imageDrawTextEx(dst:Star<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Float,
        spacing:Float, tint:Color):Void;

    // Texture Loading functions
    // NOTE: These functions require GPU access
    @:native("LoadTexture") static function loadTexture(fileName:ConstCharStar):Texture2D;
    @:native("LoadTextureFromImage") static function loadTextureFromImage(image:Image):Texture2D;
    @:native("LoadTextureCubemap") static function loadTextureCubemap(image:Image, layout:Int):TextureCubemap;
    @:native("LoadRenderTexture") static function loadRenderTexture(width:Int, height:Int):RenderTexture2D;
    @:native("UnloadTexture") static function unloadTexture(texture:Texture2D):Void;
    @:native("UnloadRenderTexture") static function unloadRenderTexture(texture:RenderTexture2D):Void;
    @:native("UpdateTexture") static function updateTexture(texture:Texture2D, pixels:ConstStar<Void>):Void;
    @:native("UpdateTextureRec") static function updateTextureRec(texture:Texture2D, rec:Rectangle, pixels:ConstStar<Void>):Void;

    // Texture configuration functions
    @:native("GenTextureMipmaps") static function genTextureMipmaps(texture:Star<Texture2D>):Void;
    @:native("SetTextureFilter") static function setTextureFilter(texture:Texture2D, filter:Int):Void;
    @:native("SetTextureWrap") static function setTextureWrap(texture:Texture2D, wrap:Int):Void;

    // Texture drawing functions
    @:native("DrawTexture") static function drawTexture(texture:Texture2D, posX:Int, posy:Int, tint:Color):Void;
    @:native("DrawTextureV") static function drawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;
    @:native("DrawTextureEx") static function drawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;
    @:native("DrawTextureRec") static function drawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;
    @:native("DrawTextureQuad") static function drawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;
    @:native("DrawTextureTiled") static function drawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        scale:Float, tint:Color):Void;
    @:native("DrawTexturePro") static function drawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTextureNPatch") static function drawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Float,
        tint:Color):Void;
    @:native("DrawTexturePoly") static function drawTexturePoly(texture:Texture2D, center:Vector2, points:Star<Vector2>, texcoords:Star<Vector2>,
        pointsCount:Int, tint:Color):Void;

    // Color pixel related functions
    @:native("Fade") static function fade(color:Color, alpha:Float):Void;
    @:native("ColorToInt") static function colorToInt(color:Color):Int;
    @:native("ColorNormalize") static function colorNormalize(color:Color):Vector4;
    @:native("ColorFromNormalized") static function colorFromNormalized(normalized:Vector4):Color;
    @:native("ColorToHSV") static function colorToHSV(color:Color):Vector3;
    @:native("ColorFromHSV") static function colorFromHSV(hue:Float, saturation:Float, Value:Float):Color;
    @:native("ColorAlpha") static function colorAlpha(color:Color, alpha:Float):Color;
    @:native("ColorAlphaBlend") static function colorAlphaBlend(dst:Color, src:Color, tint:Color):Color;
    @:native("GetColor") static function getColor(hexValue:UInt):Color;
    @:native("GetPixelColor") static function getPixelColor(srcPtr:Star<Void>, format:PixelFormat):Color;
    @:native("SetPixelColor") static function setPixelColor(dstPtr:Star<Void>, color:Color, format:Int):Void;
    @:native("GetPixelDataSize") static function getPixelDataSize(width:Int, height:Int, format:Int):Int;

    //------------------------------------------------------------------------------------
    // Font module
    //------------------------------------------------------------------------------------
    // Font loading/unloading functions
    @:native("GetFontDefault") static function getFontDefault():Void;
    @:native("LoadFont") static function loadFont(fileName:ConstCharStar):Font;
    @:native("LoadFontEx") static function loadFontEx(fileName:ConstCharStar, fontSize:Int, fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontFromImage") static function loadFontFromImage(image:Image, key:Color, firstChar:Int):Font;
    @:native("LoadFontFromMemory") static function loadFontFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int, fontSize:Int,
        fontChars:Star<Int>, glyphCount:Int):Font;
    @:native("LoadFontData") static function loadFontData(fileData:ConstStar<UInt8>, dataSize:Int, fontSize:Int, fontChars:Star<Int>, glyphCount:Int,
        type:Int):GlyphInfo;
    @:native("GenImageFontAtlas") static function genImageFontAtlas(chars:ConstStar<GlyphInfo>, recs:Star<Star<Rectangle>>, glyphCount:Int, fontSize:Int,
        padding:Int, packMethod:Int):Image;
    @:native("UnloadFontData") static function unloadFontData(chars:Star<GlyphInfo>, glyphCount:Int):Void;
    @:native("UnloadFont") static function unloadFont(font:Font):Void;

    // Text drawing functions
    @:native("DrawFPS") static function drawFPS(posX:Int, posY:Int):Void;
    @:native("DrawText") static function drawText(text:ConstCharStar, posX:Int, posY:Int, FontSize:Int, color:Color):Void;
    @:native("DrawTextEx") static function drawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;
    @:native("DrawTextPro") static function drawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, rotation:Float, fontSize:Float,
        spacing:Float, tint:Color):Void;
    @:native("DrawTextCodePoint") static function drawTextCodePoint(font:Font, codepoint:Int, position:Vector2, fontSize:Float, tint:Color):Void;

    // Text misc. functions
    @:native("MeasureText") static function measureText(text:ConstCharStar, fontSize:Int):Int;
    @:native("MeasureTextEx") static function measureTextEx(font:Font, text:ConstCharStar, fontsize:Float, spacing:Float):Vector2;
    @:native("GetGlyphIndex") static function getGlyphIndex(font:Font, codepoint:Int):Int;
    @:native("GetGlyphInfo") static function getGlyphInfo(font:Font, codepoint:Int):GlyphInfo;
    @:native("GetGlyphAtlasRec") static function getGlyphAtlasRec(font:Font, codepoint:Int):Rectangle;

    //------------------------------------------------------------------------------------
    // Models module
    //------------------------------------------------------------------------------------
    // Basic geometric 3D shapes drawing functions
    @:native("DrawLine3D") static function drawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;
    @:native("DrawPoint3D") static function drawPoint3D(position:Vector3, color:Color):Void;
    @:native("DrawCircle3D") static function drawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void;
    @:native("DrawTriangle3D") static function drawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;
    @:native("DrawTriangleStrip3D") static function drawTriangleStrip3D(points:Star<Vector3>, pointsCount:Int, color:Color):Void;
    @:native("DrawCube") static function drawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeV") static function drawCubeV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeWires") static function drawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeWiresV") static function drawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;
    @:native("DrawCubeTexture") static function drawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float,
        color:Color):Void;
    @:native("DrawCubeTextureRec") static function drawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float, height:Float,
        length:Float, color:Color):Void;
    @:native("DrawSphere") static function drawSphere(centerPos:Vector3, radius:Float, color:Color):Void;
    @:native("DrawSphereEx") static function drawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawSphereWires") static function drawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;
    @:native("DrawCylinder") static function drawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;
    @:native("DrawCylinderEx") static function drawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawCylinderWires") static function drawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int,
        color:Color):Void;
    @:native("DrawCylinderWiresEx") static function drawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int,
        color:Color):Void;
    @:native("DrawPlane") static function drawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;
    @:native("DrawRay") static function drawRay(ray:Ray, color:Color):Void;
    @:native("DrawGrid") static function drawGrid(slices:Int, spacing:Float):Void;

    // Model management functions
    @:native("LoadModel") static function loadModel(fileName:ConstCharStar):Model;
    @:native("LoadModelFromMesh") static function loadModelFromMesh(mesh:Mesh):Model;
    @:native("UnloadModel") static function unloadModel(model:Model):Void;
    @:native("UnloadModelKeepMeshes") static function unloadModelKeepMeshes(model:Model):Void;
    @:native("GetModelBoundingBox") static function getModelBoundingBox(model:Model):BoundingBox;

    // Model drawing functions
    @:native("DrawModel") static function drawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelEx") static function drawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawModelWires") static function drawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    @:native("DrawModelWiresEx") static function drawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3,
        color:Color):Void;
    @:native("DrawBoundingBox") static function drawBoundingBox(box:BoundingBox, color:Color):Void;
    @:native("DrawBillboard") static function drawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float, tint:Color):Void;
    @:native("DrawBillboardRec") static function drawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2,
        tint:Color):Void;
    @:native("DrawBillboardPro") static function drawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3,
        size:Vector2, origin:Vector2, rotation:Float, tint:Color):Void;

    // Mesh management functions
    @:native("UploadMesh") static function uploadMesh(mesh:Star<Mesh>, dyn:Bool):Void;
    @:native("UpdateMeshBuffer") static function updateMeshBuffer(mesh:Mesh, index:Int, data:Star<Void>, dataSize:Int, offset:Int):Void;
    @:native("UnloadMesh") static function unloadMesh(mesh:Mesh):Void;
    @:native("DrawMesh") static function drawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;
    @:native("DrawMeshInstanced") static function drawMeshInstanced(mesh:Mesh, material:Material, transforms:Star<Matrix>, instances:Int):Void;
    @:native("ExportMesh") static function exportMesh(mesh:Mesh, fileName:ConstCharStar):Bool;
    @:native("GetMeshBoundingBox") static function getMeshBoundingBox(mesh:Mesh):BoundingBox;
    @:native("GetMeshTangents") static function getMeshTangents(mesh:Star<Mesh>):Void;
    @:native("GetMeshBinomials") static function getMeshBinomials(mesh:Star<Mesh>):Void;

    // Mesh generation functions
    @:native("GenMeshPoly") static function genMeshPoly(sides:Int, radius:Float):Mesh;
    @:native("GenMeshPlane") static function genMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh;
    @:native("GenMeshCube") static function genMeshCube(width:Float, height:Float, length:Float):Mesh;
    @:native("GenMeshSphere") static function genMeshSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshHemiSphere") static function genMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCylinder") static function genMeshCylinder(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshCone") static function genMeshCone(radius:Float, rings:Int, slices:Int):Mesh;
    @:native("GenMeshTorus") static function genMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshKnot") static function genMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;
    @:native("GenMeshHeightMap") static function genMeshHeightMap(heightMap:Image, size:Vector3):Mesh;
    @:native("GenMeshCubicMap") static function genMeshCubicMap(cubicmap:Image, cubeSize:Vector3):Mesh;

    // Material loading/unloading functions
    @:native("LoadMaterials") static function loadMaterials(fileName:ConstCharStar, materialCount:Star<Int>):Star<Material>;
    @:native("LoadMaterialDefault") static function loadMaterialDefault():Material;
    @:native("UnloadMaterial") static function unloadMaterial(material:Material):Void;
    @:native("SetMaterialTexture") static function setMaterialTexture(material:Star<Material>, mapType:Int, texture:Texture2D):Void;
    @:native("SetModelMeshMaterial") static function setModelMeshMaterial(model:Star<Model>, meshId:Int, materialId:Int):Void;

    // Model animations loading/unloading functions
    @:native("LoadModelAnimations") static function loadModelAnimations(fileName:ConstCharStar, animCount:Star<UInt>):Star<ModelAnimation>;
    @:native("UpdateModelAnimation") static function updateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;
    @:native("UnloadModelAnimation") static function unloadModelAnimation(anim:ModelAnimation):Void;
    @:native("UnloadModelAnimations") static function unloadModelAnimations(animations:Star<ModelAnimation>, count:UInt):Void;
    @:native("IsModelAnimationValid") static function isModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

    // Collision detection functions
    @:native("CheckCollisionSpheres") static function checkCollisionSpheres(center1:Vector3, radius1:Float, center2:Vector3, radius2:Float):Bool;
    @:native("CheckCollisionBoxes") static function checkCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;
    @:native("CheckCollisionBoxSphere") static function checkCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float):Bool;
    @:native("GetRayCollisionRec") static function getRayCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;
    @:native("GetRayCollisionSphere") static function getRayCollisionSphere(ray:Ray, center:Vector3, radius:Float):RayCollision;
    @:native("GetRayCollisionBox") static function getRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;
    @:native("GetRayCollisionModel") static function getRayCollisionModel(ray:Ray, model:Model):RayCollision;
    @:native("GetRayCollisionMesh") static function getRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;
    @:native("GetRayCollisionTriangle") static function getRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;
    @:native("GetRayCollisionQuad") static function getRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;

    //------------------------------------------------------------------------------------
    // Audio module
    //------------------------------------------------------------------------------------
    // Audio device management functions
    @:native("InitAudioDevice") static function initAudioDevice():Void;
    @:native("CloseAudioDevice") static function closeAudioDevice():Void;
    @:native("IsAudioDeviceReady") static function isAudioDeviceReady():Bool;
    @:native("SetMasterVolume") static function setMasterVolume(volume:Float):Void;

    // Wave/Sound loading/unloading functions
    @:native("LoadWave") static function loadWave(fileName:ConstCharStar):Wave;
    @:native("LoadWaveFromMemory") static function loadWaveFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int):Wave;
    @:native("LoadSound") static function loadSound(fileName:ConstCharStar):Sound;
    @:native("LoadSoundFromWave") static function loadSoundFromWave(wave:Wave):Sound;
    @:native("UpdateSound") static function updateSound(sound:Sound, data:ConstCharStar, samplesCount:Int):Void;
    @:native("UnloadWave") static function unloadWave(wave:Wave):Void;
    @:native("UnloadSound") static function unloadSound(sound:Sound):Void;
    @:native("ExportWave") static function exportWave(wave:Wave, fileName:ConstCharStar):Bool;
    @:native("ExportWaveAsCode") static function exportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

    // Wave/Sound management functions
    @:native("PlaySound") static function playSound(sound:Sound):Void;
    @:native("StopSound") static function stopSound(sound:Sound):Void;
    @:native("PauseSound") static function pauseSound(sound:Sound):Void;
    @:native("ResumeSound") static function resumeSound(sound:Sound):Void;
    @:native("PlaySoundMulti") static function playSoundMulti(sound:Sound):Void;
    @:native("StopSoundMulti") static function stopSoundMulti():Void;
    @:native("GetSoundsPlaying") static function getSoundsPlaying():Int;
    @:native("IsSoundPlaying") static function isSoundPlaying(sound:Sound):Bool;
    @:native("SetSoundVolume") static function setSoundVolume(sound:Sound, volume:Float):Void;
    @:native("SetSoundPitch") static function setSoundPitch(sound:Sound, pitch:Float):Void;
    @:native("WaveFormat") static function waveFormat(wave:Star<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void;
    @:native("WaveCopy") static function waveCopy(wave:Wave):Wave;
    @:native("WaveCrop") static function waveCrop(wave:Star<Wave>, initSample:Int, finalSample:Int):Void;
    @:native("LoadWaveSamples") static function loadWaveSamples(wave:Wave):Star<Float>;
    @:native("UnloadWaveSamples") static function unloadWaveSamples(samples:Star<Float>):Void;

    // Music management functions
    @:native("LoadMusicStream") static function loadMusicStream(fileName:ConstCharStar):Music;
    @:native("LoadMusicStreamFromMemory") static function loadMusicStreamFromMemory(fileType:ConstCharStar, data:Star<UInt8>, dataSize:Int):Music;
    @:native("UnloadMusicStream") static function unloadMusicStream(music:Music):Void;
    @:native("PlayMusicStream") static function playMusicStream(music:Music):Void;
    @:native("IsMusicStreamPlaying") static function isMusicStreamPlaying(music:Music):Bool;
    @:native("UpdateMusicStream") static function updateMusicStream(music:Music):Void;
    @:native("StopMusicStream") static function stopMusicStream(music:Music):Void;
    @:native("PauseMusicStream") static function pauseMusicStream(music:Music):Void;
    @:native("ResumeMusicStream") static function resumeMusicStream(music:Music):Void;
    @:native("SeekMusicStream") static function seekMusicStream(music:Music, position:Float):Void;
    @:native("SetMusicVolume") static function setMusicVolume(music:Music, volume:Float):Void;
    @:native("SetMusicPitch") static function setMusicPitch(music:Music, pitch:Float):Void;
    @:native("GetMusicTimeLength") static function getMusicTimeLength(music:Music):Float;
    @:native("GetMusicTimePlayed") static function getMusicTimePlayed(music:Music):Float;

    // AudioStream management functions
    @:native("InitAudioStream") static function initAudioStream(sampleRate:UInt, sampleSize:UInt, channels:UInt):AudioStream;
    @:native("UpdateAudioStream") static function updateAudioStream(stream:AudioStream, data:ConstStar<Void>, samplesCount:Int):Void;
    @:native("CloseAudioStream") static function closeAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamProcessed") static function isAudioStreamProcessed(stream:AudioStream):Bool;
    @:native("PlayAudioStream") static function playAudioStream(stream:AudioStream):Void;
    @:native("PauseAudioStream") static function pauseAudioStream(stream:AudioStream):Void;
    @:native("ResumeAudioStream") static function resumeAudioStream(stream:AudioStream):Void;
    @:native("IsAudioStreamPlaying") static function isAudioStreamPlaying(stream:AudioStream):Bool;
    @:native("StopAudioStream") static function stopAudioStream(stream:AudioStream):Void;
    @:native("SetAudioStreamVolume") static function setAudioStreamVolume(stream:AudioStream, volume:Float):Void;
    @:native("SetAudioStreamPitch") static function setAudioStreamPitch(stream:AudioStream, pitch:Float):Void;
    @:native("SetAudioStreamBufferSizeDefault") static function setAudioStreamBufferSizeDefault(size:Int):Void;
	  /** Attach audio stream processor to stream**/
//    @:native("AttachAudioStreamProcessor") static function attachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;
	  /** Detach audio stream processor from stream**/
//   	@:native("DetachAudioStreamProcessor") static function detachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;
}
