/*
	This Source Code Form is subject to the terms of the Mozilla Public
	License, v. 2.0. If a copy of the MPL was not distributed with this
	file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

package;

import cpp.Char;
import cpp.ConstCharStar;
import cpp.ConstStar;
import cpp.Float32;
import cpp.Float64;
import cpp.Int32;
import cpp.Int64;
import cpp.Rest;
import cpp.Star;
import cpp.UInt16;
import cpp.UInt32;
import cpp.UInt8;
import cpp.Void;

/**	Vector2, 2 components**/
@:include("raylib.h")
@:structAccess
@:native("Vector2")
extern class Vector2 {
	/**	Vector x component**/
	@:native("x") var x:Float32;

	/**	Vector y component**/
	@:native("y") var y:Float32;

	public static inline function create(x:Float32, y:Float32):Vector2 {
		return untyped __cpp__('Vector2{ {0}, {1} }', x, y);
	}
}

/**	Vector3, 3 components**/
@:include("raylib.h")
@:structAccess
@:native("Vector3")
extern class Vector3 {
	/**	Vector x component**/
	@:native("x") var x:Float32;

	/**	Vector y component**/
	@:native("y") var y:Float32;

	/**	Vector z component**/
	@:native("z") var z:Float32;

	public static inline function create(x:Float32, y:Float32, z:Float32):Vector3 {
		return untyped __cpp__('Vector3{ {0}, {1}, {2} }', x, y, z);
	}
}

/**	Vector4, 4 components**/
@:include("raylib.h")
@:structAccess
@:native("Vector4")
extern class Vector4 {
	/**	Vector x component**/
	@:native("x") var x:Float32;

	/**	Vector y component**/
	@:native("y") var y:Float32;

	/**	Vector z component**/
	@:native("z") var z:Float32;

	/**	Vector w component**/
	@:native("w") var w:Float32;

	public static inline function create(x:Float32, y:Float32, z:Float32, w:Float32):Vector4 {
		return untyped __cpp__('Vector4{ {0}, {1}, {2}, {3} }', x, y, z, w);
	}
}

typedef Quaternion = Vector4;

/**	Matrix, 4x4 components, column major, OpenGL style, right handed**/
@:include("raylib.h")
@:structAccess
@:native("Matrix")
extern class Matrix {
	@:native("m0") var m0:Float32;
	@:native("m4") var m4:Float32;
	@:native("m8") var m8:Float32;
	@:native("m12") var m12:Float32;
	@:native("m1") var m1:Float32;
	@:native("m5") var m5:Float32;
	@:native("m9") var m9:Float32;
	@:native("m13") var m13:Float32;
	@:native("m2") var m2:Float32;
	@:native("m6") var m6:Float32;
	@:native("m10") var m10:Float32;
	@:native("m14") var m14:Float32;
	@:native("m3") var m3:Float32;
	@:native("m7") var m7:Float32;
	@:native("m11") var m11:Float32;
	@:native("m15") var m15:Float32;
}

/**	Color, 4 components, R8G8B8A8 (32bit)**/
@:include("raylib.h")
@:structAccess
@:native("Color")
extern class Color {
	/**	Color red value**/
	@:native("r") var r:UInt8;

	/**	Color green value**/
	@:native("g") var g:UInt8;

	/**	Color blue value**/
	@:native("b") var b:UInt8;

	/**	Color alpha value**/
	@:native("a") var a:UInt8;

	public static inline function create(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Color {
		return untyped __cpp__('Color{ {0}, {1}, {2}, {3} }', r, g, b, a);
	}
}

/**	Rectangle, 4 components**/
@:include("raylib.h")
@:structAccess
@:native("Rectangle")
extern class Rectangle {
	/**	Rectangle top-left corner position x**/
	@:native("x") var x:Float32;

	/**	Rectangle top-left corner position y**/
	@:native("y") var y:Float32;

	/**	Rectangle width**/
	@:native("width") var width:Float32;

	/**	Rectangle height**/
	@:native("height") var height:Float32;

	public static inline function create(x:Float32, y:Float32, width:Float32, height:Float32):Rectangle {
		return untyped __cpp__('Rectangle{ {0}, {1}, {2}, {3} }', x, y, width, height);
	}
}

/**	Image, pixel data stored in CPU memory (RAM)**/
@:include("raylib.h")
@:structAccess
@:native("Image")
extern class Image {
	/**	Image raw data**/
	@:native("data") var data:Star<Void>;

	/**	Image base width**/
	@:native("width") var width:Int32;

	/**	Image base height**/
	@:native("height") var height:Int32;

	/**	Mipmap levels, 1 by default**/
	@:native("mipmaps") var mipmaps:Int32;

	/**	Data format (PixelFormat type)**/
	@:native("format") var format:Int32;
}

/**	Texture, tex data stored in GPU memory (VRAM)**/
@:include("raylib.h")
@:structAccess
@:native("Texture")
extern class Texture {
	/**	OpenGL texture id**/
	@:native("id") var id:UInt32;

	/**	Texture base width**/
	@:native("width") var width:Int32;

	/**	Texture base height**/
	@:native("height") var height:Int32;

	/**	Mipmap levels, 1 by default**/
	@:native("mipmaps") var mipmaps:Int32;

	/**	Data format (PixelFormat type)**/
	@:native("format") var format:Int32;
}

typedef Texture2D = Texture;
typedef TextureCubemap = Texture;

/**	RenderTexture, fbo for texture rendering**/
@:include("raylib.h")
@:structAccess
@:native("RenderTexture")
extern class RenderTexture {
	/**	OpenGL framebuffer object id**/
	@:native("id") var id:UInt32;

	/**	Color buffer attachment texture**/
	@:native("texture") var texture:Texture;

	/**	Depth buffer attachment texture**/
	@:native("depth") var depth:Texture;
}

typedef RenderTexture2D = RenderTexture;

/**	NPatchInfo, n-patch layout info**/
@:include("raylib.h")
@:structAccess
@:native("NPatchInfo")
extern class NPatchInfo {
	/**	Texture source rectangle**/
	@:native("source") var source:Rectangle;

	/**	Left border offset**/
	@:native("left") var left:Int32;

	/**	Top border offset**/
	@:native("top") var top:Int32;

	/**	Right border offset**/
	@:native("right") var right:Int32;

	/**	Bottom border offset**/
	@:native("bottom") var bottom:Int32;

	/**	Layout of the n-patch: 3x3, 1x3 or 3x1**/
	@:native("layout") var layout:Int32;
}

/**	GlyphInfo, font characters glyphs info**/
@:include("raylib.h")
@:structAccess
@:native("GlyphInfo")
extern class GlyphInfo {
	/**	Character value (Unicode)**/
	@:native("value") var value:Int32;

	/**	Character offset X when drawing**/
	@:native("offsetX") var offsetX:Int32;

	/**	Character offset Y when drawing**/
	@:native("offsetY") var offsetY:Int32;

	/**	Character advance position X**/
	@:native("advanceX") var advanceX:Int32;

	/**	Character image data**/
	@:native("image") var image:Image;
}

/**	Font, font texture and GlyphInfo array data**/
@:include("raylib.h")
@:structAccess
@:native("Font")
extern class Font {
	/**	Base size (default chars height)**/
	@:native("baseSize") var baseSize:Int32;

	/**	Number of glyph characters**/
	@:native("glyphCount") var glyphCount:Int32;

	/**	Padding around the glyph characters**/
	@:native("glyphPadding") var glyphPadding:Int32;

	/**	Texture atlas containing the glyphs**/
	@:native("texture") var texture:Texture2D;

	/**	Rectangles in texture for the glyphs**/
	@:native("recs") var recs:Star<Rectangle>;

	/**	Glyphs info data**/
	@:native("glyphs") var glyphs:Star<GlyphInfo>;
}

/**	Camera, defines position/orientation in 3d space**/
@:include("raylib.h")
@:structAccess
@:native("Camera3D")
extern class Camera3D {
	/**	Camera position**/
	@:native("position") var position:Vector3;

	/**	Camera target it looks-at**/
	@:native("target") var target:Vector3;

	/**	Camera up vector (rotation over its axis)**/
	@:native("up") var up:Vector3;

	/**	Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic**/
	@:native("fovy") var fovy:Float32;

	/**	Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC**/
	@:native("projection") var projection:Int32;
}

typedef Camera = Camera3D;

/**	Camera2D, defines position/orientation in 2d space**/
@:include("raylib.h")
@:structAccess
@:native("Camera2D")
extern class Camera2D {
	/**	Camera offset (displacement from target)**/
	@:native("offset") var offset:Vector2;

	/**	Camera target (rotation and zoom origin)**/
	@:native("target") var target:Vector2;

	/**	Camera rotation in degrees**/
	@:native("rotation") var rotation:Float32;

	/**	Camera zoom (scaling), should be 1.0f by default**/
	@:native("zoom") var zoom:Float32;
}

/**	Mesh, vertex data and vao/vbo**/
@:include("raylib.h")
@:structAccess
@:native("Mesh")
extern class Mesh {
	/**	Number of vertices stored in arrays**/
	@:native("vertexCount") var vertexCount:Int32;

	/**	Number of triangles stored (indexed or not)**/
	@:native("triangleCount") var triangleCount:Int32;

	/**	Vertex position (XYZ - 3 components per vertex) (shader-location = 0)**/
	@:native("vertices") var vertices:Star<Float32>;

	/**	Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)**/
	@:native("texcoords") var texcoords:Star<Float32>;

	/**	Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)**/
	@:native("texcoords2") var texcoords2:Star<Float32>;

	/**	Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)**/
	@:native("normals") var normals:Star<Float32>;

	/**	Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)**/
	@:native("tangents") var tangents:Star<Float32>;

	/**	Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)**/
	@:native("colors") var colors:Star<UInt8>;

	/**	Vertex indices (in case vertex data comes indexed)**/
	@:native("indices") var indices:Star<UInt16>;

	/**	Animated vertex positions (after bones transformations)**/
	@:native("animVertices") var animVertices:Star<Float32>;

	/**	Animated normals (after bones transformations)**/
	@:native("animNormals") var animNormals:Star<Float32>;

	/**	Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)**/
	@:native("boneIds") var boneIds:Star<UInt8>;

	/**	Vertex bone weight, up to 4 bones influence by vertex (skinning)**/
	@:native("boneWeights") var boneWeights:Star<Float32>;

	/**	OpenGL Vertex Array Object id**/
	@:native("vaoId") var vaoId:UInt32;

	/**	OpenGL Vertex Buffer Objects id (default vertex data)**/
	@:native("vboId") var vboId:Star<UInt32>;
}

/**	Shader**/
@:include("raylib.h")
@:structAccess
@:native("Shader")
extern class Shader {
	/**	Shader program id**/
	@:native("id") var id:UInt32;

	/**	Shader locations array (RL_MAX_SHADER_LOCATIONS)**/
	@:native("locs") var locs:Star<Int32>;
}

/**	MaterialMap**/
@:include("raylib.h")
@:structAccess
@:native("MaterialMap")
extern class MaterialMap {
	/**	Material map texture**/
	@:native("texture") var texture:Texture2D;

	/**	Material map color**/
	@:native("color") var color:Color;

	/**	Material map value**/
	@:native("value") var value:Float32;
}

/**	Material, includes shader and maps**/
@:include("raylib.h")
@:structAccess
@:native("Material")
extern class Material {
	/**	Material shader**/
	@:native("shader") var shader:Shader;

	/**	Material maps array (MAX_MATERIAL_MAPS)**/
	@:native("maps") var maps:Star<MaterialMap>;

	/**	Material generic parameters (if required)**/
	@:native("params") var params:Star<Float32>;
}

/**	Transform, vectex transformation data**/
@:include("raylib.h")
@:structAccess
@:native("Transform")
extern class Transform {
	/**	Translation**/
	@:native("translation") var translation:Vector3;

	/**	Rotation**/
	@:native("rotation") var rotation:Quaternion;

	/**	Scale**/
	@:native("scale") var scale:Vector3;
}

/**	Bone, skeletal animation bone**/
@:include("raylib.h")
@:structAccess
@:native("BoneInfo")
extern class BoneInfo {
	/**	Bone name**/
	@:native("name") var name:Star<Char>;

	/**	Bone parent**/
	@:native("parent") var parent:Int32;
}

/**	Model, meshes, materials and animation data**/
@:include("raylib.h")
@:structAccess
@:native("Model")
extern class Model {
	/**	Local transform matrix**/
	@:native("transform") var transform:Matrix;

	/**	Number of meshes**/
	@:native("meshCount") var meshCount:Int32;

	/**	Number of materials**/
	@:native("materialCount") var materialCount:Int32;

	/**	Meshes array**/
	@:native("meshes") var meshes:Star<Mesh>;

	/**	Materials array**/
	@:native("materials") var materials:Star<Material>;

	/**	Mesh material number**/
	@:native("meshMaterial") var meshMaterial:Star<Int32>;

	/**	Number of bones**/
	@:native("boneCount") var boneCount:Int32;

	/**	Bones information (skeleton)**/
	@:native("bones") var bones:Star<BoneInfo>;

	/**	Bones base transformation (pose)**/
	@:native("bindPose") var bindPose:Star<Transform>;
}

/**	ModelAnimation**/
@:include("raylib.h")
@:structAccess
@:native("ModelAnimation")
extern class ModelAnimation {
	/**	Number of bones**/
	@:native("boneCount") var boneCount:Int32;

	/**	Number of animation frames**/
	@:native("frameCount") var frameCount:Int32;

	/**	Bones information (skeleton)**/
	@:native("bones") var bones:Star<BoneInfo>;

	/**	Poses array by frame**/
	@:native("framePoses") var framePoses:Star<Star<Transform>>;
}

/**	Ray, ray for raycasting**/
@:include("raylib.h")
@:structAccess
@:native("Ray")
extern class Ray {
	/**	Ray position (origin)**/
	@:native("position") var position:Vector3;

	/**	Ray direction**/
	@:native("direction") var direction:Vector3;
}

/**	RayCollision, ray hit information**/
@:include("raylib.h")
@:structAccess
@:native("RayCollision")
extern class RayCollision {
	/**	Did the ray hit something?**/
	@:native("hit") var hit:Bool;

	/**	Distance to nearest hit**/
	@:native("distance") var distance:Float32;

	/**	Point of nearest hit**/
	@:native("point") var point:Vector3;

	/**	Surface normal of hit**/
	@:native("normal") var normal:Vector3;
}

/**	BoundingBox**/
@:include("raylib.h")
@:structAccess
@:native("BoundingBox")
extern class BoundingBox {
	/**	Minimum vertex box-corner**/
	@:native("min") var min:Vector3;

	/**	Maximum vertex box-corner**/
	@:native("max") var max:Vector3;
}

/**	Wave, audio wave data**/
@:include("raylib.h")
@:structAccess
@:native("Wave")
extern class Wave {
	/**	Total number of frames (considering channels)**/
	@:native("frameCount") var frameCount:UInt32;

	/**	Frequency (samples per second)**/
	@:native("sampleRate") var sampleRate:UInt32;

	/**	Bit depth (bits per sample): 8, 16, 32 (24 not supported)**/
	@:native("sampleSize") var sampleSize:UInt32;

	/**	Number of channels (1-mono, 2-stereo, ...)**/
	@:native("channels") var channels:UInt32;

	/**	Buffer data pointer**/
	@:native("data") var data:Star<Void>;
}

/**	**/
@:include("raylib.h")
@:structAccess
@:native("rAudioBuffer")
extern class AudioBuffer {}

/**	AudioStream, custom audio stream**/
@:include("raylib.h")
@:structAccess
@:native("AudioStream")
extern class AudioStream {
	/**	Pointer to internal data used by the audio system**/
	@:native("buffer") var buffer:Star<AudioBuffer>;

	/**	Frequency (samples per second)**/
	@:native("sampleRate") var sampleRate:UInt32;

	/**	Bit depth (bits per sample): 8, 16, 32 (24 not supported)**/
	@:native("sampleSize") var sampleSize:UInt32;

	/**	Number of channels (1-mono, 2-stereo, ...)**/
	@:native("channels") var channels:UInt32;
}

/**	Sound**/
@:include("raylib.h")
@:structAccess
@:native("Sound")
extern class Sound {
	/**	Audio stream**/
	@:native("stream") var stream:AudioStream;

	/**	Total number of frames (considering channels)**/
	@:native("frameCount") var frameCount:UInt32;
}

/**	Music, audio stream, anything longer than ~10 seconds should be streamed**/
@:include("raylib.h")
@:structAccess
@:native("Music")
extern class Music {
	/**	Audio stream**/
	@:native("stream") var stream:AudioStream;

	/**	Total number of frames (considering channels)**/
	@:native("frameCount") var frameCount:UInt32;

	/**	Music looping enable**/
	@:native("looping") var looping:Bool;

	/**	Type of music context (audio filetype)**/
	@:native("ctxType") var ctxType:Int32;

	/**	Audio context data, depends on type**/
	@:native("ctxData") var ctxData:Star<Void>;
}

/**	VrDeviceInfo, Head-Mounted-Display device parameters**/
@:include("raylib.h")
@:structAccess
@:native("VrDeviceInfo")
extern class VrDeviceInfo {
	/**	Horizontal resolution in pixels**/
	@:native("hResolution") var hResolution:Int32;

	/**	Vertical resolution in pixels**/
	@:native("vResolution") var vResolution:Int32;

	/**	Horizontal size in meters**/
	@:native("hScreenSize") var hScreenSize:Float32;

	/**	Vertical size in meters**/
	@:native("vScreenSize") var vScreenSize:Float32;

	/**	Screen center in meters**/
	@:native("vScreenCenter") var vScreenCenter:Float32;

	/**	Distance between eye and display in meters**/
	@:native("eyeToScreenDistance") var eyeToScreenDistance:Float32;

	/**	Lens separation distance in meters**/
	@:native("lensSeparationDistance") var lensSeparationDistance:Float32;

	/**	IPD (distance between pupils) in meters**/
	@:native("interpupillaryDistance") var interpupillaryDistance:Float32;

	/**	Lens distortion constant parameters**/
	@:native("lensDistortionValues") var lensDistortionValues:Star<Float32>;

	/**	Chromatic aberration correction parameters**/
	@:native("chromaAbCorrection") var chromaAbCorrection:Star<Float32>;
}

/**	VrStereoConfig, VR stereo rendering configuration for simulator**/
@:include("raylib.h")
@:structAccess
@:native("VrStereoConfig")
extern class VrStereoConfig {
	/**	VR projection matrices (per eye)**/
	@:native("projection") var projection:Star<Matrix>;

	/**	VR view offset matrices (per eye)**/
	@:native("viewOffset") var viewOffset:Star<Matrix>;

	/**	VR left lens center**/
	@:native("leftLensCenter") var leftLensCenter:Star<Float32>;

	/**	VR right lens center**/
	@:native("rightLensCenter") var rightLensCenter:Star<Float32>;

	/**	VR left screen center**/
	@:native("leftScreenCenter") var leftScreenCenter:Star<Float32>;

	/**	VR right screen center**/
	@:native("rightScreenCenter") var rightScreenCenter:Star<Float32>;

	/**	VR distortion scale**/
	@:native("scale") var scale:Star<Float32>;

	/**	VR distortion scale in**/
	@:native("scaleIn") var scaleIn:Star<Float32>;
}

/** File path list **/
@:include("raylib.h")
@:structAccess
@:native("FilePathList")
extern class FilePathList {
	/** Filepaths max entries **/
	@:native("capacity") var capacity:UInt32;

	/** Filepaths entries count **/
	@:native("count") var count:UInt32;

	/** Filepaths entries**/
	@:native("paths") var paths:Star<Star<Char>>;
}

/**	System/Window config flags**/
@:include("raylib.h")
extern enum abstract ConfigFlags(Int32) {
	/**Set to try enabling V-Sync on GPU**/
	@:native("FLAG_VSYNC_HINT") var FLAG_VSYNC_HINT:Int32;

	/**Set to run program in fullscreen**/
	@:native("FLAG_FULLSCREEN_MODE") var FLAG_FULLSCREEN_MODE:Int32;

	/**Set to allow resizable window**/
	@:native("FLAG_WINDOW_RESIZABLE") var FLAG_WINDOW_RESIZABLE:Int32;

	/**Set to disable window decoration (frame and buttons)**/
	@:native("FLAG_WINDOW_UNDECORATED") var FLAG_WINDOW_UNDECORATED:Int32;

	/**Set to hide window**/
	@:native("FLAG_WINDOW_HIDDEN") var FLAG_WINDOW_HIDDEN:Int32;

	/**Set to minimize window (iconify)**/
	@:native("FLAG_WINDOW_MINIMIZED") var FLAG_WINDOW_MINIMIZED:Int32;

	/**Set to maximize window (expanded to monitor)**/
	@:native("FLAG_WINDOW_MAXIMIZED") var FLAG_WINDOW_MAXIMIZED:Int32;

	/**Set to window non focused**/
	@:native("FLAG_WINDOW_UNFOCUSED") var FLAG_WINDOW_UNFOCUSED:Int32;

	/**Set to window always on top**/
	@:native("FLAG_WINDOW_TOPMOST") var FLAG_WINDOW_TOPMOST:Int32;

	/**Set to allow windows running while minimized**/
	@:native("FLAG_WINDOW_ALWAYS_RUN") var FLAG_WINDOW_ALWAYS_RUN:Int32;

	/**Set to allow transparent framebuffer**/
	@:native("FLAG_WINDOW_TRANSPARENT") var FLAG_WINDOW_TRANSPARENT:Int32;

	/**Set to support HighDPI**/
	@:native("FLAG_WINDOW_HIGHDPI") var FLAG_WINDOW_HIGHDPI:Int32;

	/**Set to try enabling MSAA 4X**/
	@:native("FLAG_MSAA_4X_HINT") var FLAG_MSAA_4X_HINT:Int32;

	/**Set to try enabling interlaced video format (for V3D)**/
	@:native("FLAG_INTERLACED_HINT") var FLAG_INTERLACED_HINT:Int32;
}

/**	Trace log level**/
@:include("raylib.h")
extern enum abstract TraceLogLevel(Int32) {
	/**Display all logs**/
	@:native("LOG_ALL") var LOG_ALL:Int32;

	/**Trace logging, intended for internal use only**/
	@:native("LOG_TRACE") var LOG_TRACE:Int32;

	/**Debug logging, used for internal debugging, it should be disabled on release builds**/
	@:native("LOG_DEBUG") var LOG_DEBUG:Int32;

	/**Info logging, used for program execution info**/
	@:native("LOG_INFO") var LOG_INFO:Int32;

	/**Warning logging, used on recoverable failures**/
	@:native("LOG_WARNING") var LOG_WARNING:Int32;

	/**Error logging, used on unrecoverable failures**/
	@:native("LOG_ERROR") var LOG_ERROR:Int32;

	/**Fatal logging, used to abort program: exit(EXIT_FAILURE)**/
	@:native("LOG_FATAL") var LOG_FATAL:Int32;

	/**Disable logging**/
	@:native("LOG_NONE") var LOG_NONE:Int32;
}

/**	Keyboard keys (US keyboard layout)**/
@:include("raylib.h")
extern enum abstract KeyboardKey(Int32) {
	/**Key: NULL, used for no key pressed**/
	@:native("KEY_NULL") var KEY_NULL:Int32;

	/**Key: '**/
	@:native("KEY_APOSTROPHE") var KEY_APOSTROPHE:Int32;

	/**Key: ,**/
	@:native("KEY_COMMA") var KEY_COMMA:Int32;

	/**Key: -**/
	@:native("KEY_MINUS") var KEY_MINUS:Int32;

	/**Key: .**/
	@:native("KEY_PERIOD") var KEY_PERIOD:Int32;

	/**Key: /**/
	@:native("KEY_SLASH") var KEY_SLASH:Int32;

	/**Key: 0**/
	@:native("KEY_ZERO") var KEY_ZERO:Int32;

	/**Key: 1**/
	@:native("KEY_ONE") var KEY_ONE:Int32;

	/**Key: 2**/
	@:native("KEY_TWO") var KEY_TWO:Int32;

	/**Key: 3**/
	@:native("KEY_THREE") var KEY_THREE:Int32;

	/**Key: 4**/
	@:native("KEY_FOUR") var KEY_FOUR:Int32;

	/**Key: 5**/
	@:native("KEY_FIVE") var KEY_FIVE:Int32;

	/**Key: 6**/
	@:native("KEY_SIX") var KEY_SIX:Int32;

	/**Key: 7**/
	@:native("KEY_SEVEN") var KEY_SEVEN:Int32;

	/**Key: 8**/
	@:native("KEY_EIGHT") var KEY_EIGHT:Int32;

	/**Key: 9**/
	@:native("KEY_NINE") var KEY_NINE:Int32;

	/**Key: ;**/
	@:native("KEY_SEMICOLON") var KEY_SEMICOLON:Int32;

	/**Key: =**/
	@:native("KEY_EQUAL") var KEY_EQUAL:Int32;

	/**Key: A | a**/
	@:native("KEY_A") var KEY_A:Int32;

	/**Key: B | b**/
	@:native("KEY_B") var KEY_B:Int32;

	/**Key: C | c**/
	@:native("KEY_C") var KEY_C:Int32;

	/**Key: D | d**/
	@:native("KEY_D") var KEY_D:Int32;

	/**Key: E | e**/
	@:native("KEY_E") var KEY_E:Int32;

	/**Key: F | f**/
	@:native("KEY_F") var KEY_F:Int32;

	/**Key: G | g**/
	@:native("KEY_G") var KEY_G:Int32;

	/**Key: H | h**/
	@:native("KEY_H") var KEY_H:Int32;

	/**Key: I | i**/
	@:native("KEY_I") var KEY_I:Int32;

	/**Key: J | j**/
	@:native("KEY_J") var KEY_J:Int32;

	/**Key: K | k**/
	@:native("KEY_K") var KEY_K:Int32;

	/**Key: L | l**/
	@:native("KEY_L") var KEY_L:Int32;

	/**Key: M | m**/
	@:native("KEY_M") var KEY_M:Int32;

	/**Key: N | n**/
	@:native("KEY_N") var KEY_N:Int32;

	/**Key: O | o**/
	@:native("KEY_O") var KEY_O:Int32;

	/**Key: P | p**/
	@:native("KEY_P") var KEY_P:Int32;

	/**Key: Q | q**/
	@:native("KEY_Q") var KEY_Q:Int32;

	/**Key: R | r**/
	@:native("KEY_R") var KEY_R:Int32;

	/**Key: S | s**/
	@:native("KEY_S") var KEY_S:Int32;

	/**Key: T | t**/
	@:native("KEY_T") var KEY_T:Int32;

	/**Key: U | u**/
	@:native("KEY_U") var KEY_U:Int32;

	/**Key: V | v**/
	@:native("KEY_V") var KEY_V:Int32;

	/**Key: W | w**/
	@:native("KEY_W") var KEY_W:Int32;

	/**Key: X | x**/
	@:native("KEY_X") var KEY_X:Int32;

	/**Key: Y | y**/
	@:native("KEY_Y") var KEY_Y:Int32;

	/**Key: Z | z**/
	@:native("KEY_Z") var KEY_Z:Int32;

	/**Key: [**/
	@:native("KEY_LEFT_BRACKET") var KEY_LEFT_BRACKET:Int32;

	/**Key: '\'**/
	@:native("KEY_BACKSLASH") var KEY_BACKSLASH:Int32;

	/**Key: ]**/
	@:native("KEY_RIGHT_BRACKET") var KEY_RIGHT_BRACKET:Int32;

	/**Key: `**/
	@:native("KEY_GRAVE") var KEY_GRAVE:Int32;

	/**Key: Space**/
	@:native("KEY_SPACE") var KEY_SPACE:Int32;

	/**Key: Esc**/
	@:native("KEY_ESCAPE") var KEY_ESCAPE:Int32;

	/**Key: Enter**/
	@:native("KEY_ENTER") var KEY_ENTER:Int32;

	/**Key: Tab**/
	@:native("KEY_TAB") var KEY_TAB:Int32;

	/**Key: Backspace**/
	@:native("KEY_BACKSPACE") var KEY_BACKSPACE:Int32;

	/**Key: Ins**/
	@:native("KEY_INSERT") var KEY_INSERT:Int32;

	/**Key: Del**/
	@:native("KEY_DELETE") var KEY_DELETE:Int32;

	/**Key: Cursor right**/
	@:native("KEY_RIGHT") var KEY_RIGHT:Int32;

	/**Key: Cursor left**/
	@:native("KEY_LEFT") var KEY_LEFT:Int32;

	/**Key: Cursor down**/
	@:native("KEY_DOWN") var KEY_DOWN:Int32;

	/**Key: Cursor up**/
	@:native("KEY_UP") var KEY_UP:Int32;

	/**Key: Page up**/
	@:native("KEY_PAGE_UP") var KEY_PAGE_UP:Int32;

	/**Key: Page down**/
	@:native("KEY_PAGE_DOWN") var KEY_PAGE_DOWN:Int32;

	/**Key: Home**/
	@:native("KEY_HOME") var KEY_HOME:Int32;

	/**Key: End**/
	@:native("KEY_END") var KEY_END:Int32;

	/**Key: Caps lock**/
	@:native("KEY_CAPS_LOCK") var KEY_CAPS_LOCK:Int32;

	/**Key: Scroll down**/
	@:native("KEY_SCROLL_LOCK") var KEY_SCROLL_LOCK:Int32;

	/**Key: Num lock**/
	@:native("KEY_NUM_LOCK") var KEY_NUM_LOCK:Int32;

	/**Key: Print screen**/
	@:native("KEY_PRINT_SCREEN") var KEY_PRINT_SCREEN:Int32;

	/**Key: Pause**/
	@:native("KEY_PAUSE") var KEY_PAUSE:Int32;

	/**Key: F1**/
	@:native("KEY_F1") var KEY_F1:Int32;

	/**Key: F2**/
	@:native("KEY_F2") var KEY_F2:Int32;

	/**Key: F3**/
	@:native("KEY_F3") var KEY_F3:Int32;

	/**Key: F4**/
	@:native("KEY_F4") var KEY_F4:Int32;

	/**Key: F5**/
	@:native("KEY_F5") var KEY_F5:Int32;

	/**Key: F6**/
	@:native("KEY_F6") var KEY_F6:Int32;

	/**Key: F7**/
	@:native("KEY_F7") var KEY_F7:Int32;

	/**Key: F8**/
	@:native("KEY_F8") var KEY_F8:Int32;

	/**Key: F9**/
	@:native("KEY_F9") var KEY_F9:Int32;

	/**Key: F10**/
	@:native("KEY_F10") var KEY_F10:Int32;

	/**Key: F11**/
	@:native("KEY_F11") var KEY_F11:Int32;

	/**Key: F12**/
	@:native("KEY_F12") var KEY_F12:Int32;

	/**Key: Shift left**/
	@:native("KEY_LEFT_SHIFT") var KEY_LEFT_SHIFT:Int32;

	/**Key: Control left**/
	@:native("KEY_LEFT_CONTROL") var KEY_LEFT_CONTROL:Int32;

	/**Key: Alt left**/
	@:native("KEY_LEFT_ALT") var KEY_LEFT_ALT:Int32;

	/**Key: Super left**/
	@:native("KEY_LEFT_SUPER") var KEY_LEFT_SUPER:Int32;

	/**Key: Shift right**/
	@:native("KEY_RIGHT_SHIFT") var KEY_RIGHT_SHIFT:Int32;

	/**Key: Control right**/
	@:native("KEY_RIGHT_CONTROL") var KEY_RIGHT_CONTROL:Int32;

	/**Key: Alt right**/
	@:native("KEY_RIGHT_ALT") var KEY_RIGHT_ALT:Int32;

	/**Key: Super right**/
	@:native("KEY_RIGHT_SUPER") var KEY_RIGHT_SUPER:Int32;

	/**Key: KB menu**/
	@:native("KEY_KB_MENU") var KEY_KB_MENU:Int32;

	/**Key: Keypad 0**/
	@:native("KEY_KP_0") var KEY_KP_0:Int32;

	/**Key: Keypad 1**/
	@:native("KEY_KP_1") var KEY_KP_1:Int32;

	/**Key: Keypad 2**/
	@:native("KEY_KP_2") var KEY_KP_2:Int32;

	/**Key: Keypad 3**/
	@:native("KEY_KP_3") var KEY_KP_3:Int32;

	/**Key: Keypad 4**/
	@:native("KEY_KP_4") var KEY_KP_4:Int32;

	/**Key: Keypad 5**/
	@:native("KEY_KP_5") var KEY_KP_5:Int32;

	/**Key: Keypad 6**/
	@:native("KEY_KP_6") var KEY_KP_6:Int32;

	/**Key: Keypad 7**/
	@:native("KEY_KP_7") var KEY_KP_7:Int32;

	/**Key: Keypad 8**/
	@:native("KEY_KP_8") var KEY_KP_8:Int32;

	/**Key: Keypad 9**/
	@:native("KEY_KP_9") var KEY_KP_9:Int32;

	/**Key: Keypad .**/
	@:native("KEY_KP_DECIMAL") var KEY_KP_DECIMAL:Int32;

	/**Key: Keypad /**/
	@:native("KEY_KP_DIVIDE") var KEY_KP_DIVIDE:Int32;

	/**Key: Keypad ***/
	@:native("KEY_KP_MULTIPLY") var KEY_KP_MULTIPLY:Int32;

	/**Key: Keypad -**/
	@:native("KEY_KP_SUBTRACT") var KEY_KP_SUBTRACT:Int32;

	/**Key: Keypad +**/
	@:native("KEY_KP_ADD") var KEY_KP_ADD:Int32;

	/**Key: Keypad Enter**/
	@:native("KEY_KP_ENTER") var KEY_KP_ENTER:Int32;

	/**Key: Keypad =**/
	@:native("KEY_KP_EQUAL") var KEY_KP_EQUAL:Int32;

	/**Key: Android back button**/
	@:native("KEY_BACK") var KEY_BACK:Int32;

	/**Key: Android menu button**/
	@:native("KEY_MENU") var KEY_MENU:Int32;

	/**Key: Android volume up button**/
	@:native("KEY_VOLUME_UP") var KEY_VOLUME_UP:Int32;

	/**Key: Android volume down button**/
	@:native("KEY_VOLUME_DOWN") var KEY_VOLUME_DOWN:Int32;
}

/**	Mouse buttons**/
@:include("raylib.h")
extern enum abstract MouseButton(Int32) {
	/**Mouse button left**/
	@:native("MOUSE_BUTTON_LEFT") var MOUSE_BUTTON_LEFT:Int32;

	/**Mouse button right**/
	@:native("MOUSE_BUTTON_RIGHT") var MOUSE_BUTTON_RIGHT:Int32;

	/**Mouse button middle (pressed wheel)**/
	@:native("MOUSE_BUTTON_MIDDLE") var MOUSE_BUTTON_MIDDLE:Int32;

	/**Mouse button side (advanced mouse device)**/
	@:native("MOUSE_BUTTON_SIDE") var MOUSE_BUTTON_SIDE:Int32;

	/**Mouse button extra (advanced mouse device)**/
	@:native("MOUSE_BUTTON_EXTRA") var MOUSE_BUTTON_EXTRA:Int32;

	/**Mouse button fordward (advanced mouse device)**/
	@:native("MOUSE_BUTTON_FORWARD") var MOUSE_BUTTON_FORWARD:Int32;

	/**Mouse button back (advanced mouse device)**/
	@:native("MOUSE_BUTTON_BACK") var MOUSE_BUTTON_BACK:Int32;
}

/**	Mouse cursor**/
@:include("raylib.h")
extern enum abstract MouseCursor(Int32) {
	/**Default pointer shape**/
	@:native("MOUSE_CURSOR_DEFAULT") var MOUSE_CURSOR_DEFAULT:Int32;

	/**Arrow shape**/
	@:native("MOUSE_CURSOR_ARROW") var MOUSE_CURSOR_ARROW:Int32;

	/**Text writing cursor shape**/
	@:native("MOUSE_CURSOR_IBEAM") var MOUSE_CURSOR_IBEAM:Int32;

	/**Cross shape**/
	@:native("MOUSE_CURSOR_CROSSHAIR") var MOUSE_CURSOR_CROSSHAIR:Int32;

	/**Pointing hand cursor**/
	@:native("MOUSE_CURSOR_POINTING_HAND") var MOUSE_CURSOR_POINTING_HAND:Int32;

	/**Horizontal resize/move arrow shape**/
	@:native("MOUSE_CURSOR_RESIZE_EW") var MOUSE_CURSOR_RESIZE_EW:Int32;

	/**Vertical resize/move arrow shape**/
	@:native("MOUSE_CURSOR_RESIZE_NS") var MOUSE_CURSOR_RESIZE_NS:Int32;

	/**Top-left to bottom-right diagonal resize/move arrow shape**/
	@:native("MOUSE_CURSOR_RESIZE_NWSE") var MOUSE_CURSOR_RESIZE_NWSE:Int32;

	/**The top-right to bottom-left diagonal resize/move arrow shape**/
	@:native("MOUSE_CURSOR_RESIZE_NESW") var MOUSE_CURSOR_RESIZE_NESW:Int32;

	/**The omni-directional resize/move cursor shape**/
	@:native("MOUSE_CURSOR_RESIZE_ALL") var MOUSE_CURSOR_RESIZE_ALL:Int32;

	/**The operation-not-allowed shape**/
	@:native("MOUSE_CURSOR_NOT_ALLOWED") var MOUSE_CURSOR_NOT_ALLOWED:Int32;
}

/**	Gamepad buttons**/
@:include("raylib.h")
extern enum abstract GamepadButton(Int32) {
	/**Unknown button, just for error checking**/
	@:native("GAMEPAD_BUTTON_UNKNOWN") var GAMEPAD_BUTTON_UNKNOWN:Int32;

	/**Gamepad left DPAD up button**/
	@:native("GAMEPAD_BUTTON_LEFT_FACE_UP") var GAMEPAD_BUTTON_LEFT_FACE_UP:Int32;

	/**Gamepad left DPAD right button**/
	@:native("GAMEPAD_BUTTON_LEFT_FACE_RIGHT") var GAMEPAD_BUTTON_LEFT_FACE_RIGHT:Int32;

	/**Gamepad left DPAD down button**/
	@:native("GAMEPAD_BUTTON_LEFT_FACE_DOWN") var GAMEPAD_BUTTON_LEFT_FACE_DOWN:Int32;

	/**Gamepad left DPAD left button**/
	@:native("GAMEPAD_BUTTON_LEFT_FACE_LEFT") var GAMEPAD_BUTTON_LEFT_FACE_LEFT:Int32;

	/**Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)**/
	@:native("GAMEPAD_BUTTON_RIGHT_FACE_UP") var GAMEPAD_BUTTON_RIGHT_FACE_UP:Int32;

	/**Gamepad right button right (i.e. PS3: Square, Xbox: X)**/
	@:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT") var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT:Int32;

	/**Gamepad right button down (i.e. PS3: Cross, Xbox: A)**/
	@:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN") var GAMEPAD_BUTTON_RIGHT_FACE_DOWN:Int32;

	/**Gamepad right button left (i.e. PS3: Circle, Xbox: B)**/
	@:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT") var GAMEPAD_BUTTON_RIGHT_FACE_LEFT:Int32;

	/**Gamepad top/back trigger left (first), it could be a trailing button**/
	@:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1") var GAMEPAD_BUTTON_LEFT_TRIGGER_1:Int32;

	/**Gamepad top/back trigger left (second), it could be a trailing button**/
	@:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2") var GAMEPAD_BUTTON_LEFT_TRIGGER_2:Int32;

	/**Gamepad top/back trigger right (one), it could be a trailing button**/
	@:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1") var GAMEPAD_BUTTON_RIGHT_TRIGGER_1:Int32;

	/**Gamepad top/back trigger right (second), it could be a trailing button**/
	@:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2") var GAMEPAD_BUTTON_RIGHT_TRIGGER_2:Int32;

	/**Gamepad center buttons, left one (i.e. PS3: Select)**/
	@:native("GAMEPAD_BUTTON_MIDDLE_LEFT") var GAMEPAD_BUTTON_MIDDLE_LEFT:Int32;

	/**Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)**/
	@:native("GAMEPAD_BUTTON_MIDDLE") var GAMEPAD_BUTTON_MIDDLE:Int32;

	/**Gamepad center buttons, right one (i.e. PS3: Start)**/
	@:native("GAMEPAD_BUTTON_MIDDLE_RIGHT") var GAMEPAD_BUTTON_MIDDLE_RIGHT:Int32;

	/**Gamepad joystick pressed button left**/
	@:native("GAMEPAD_BUTTON_LEFT_THUMB") var GAMEPAD_BUTTON_LEFT_THUMB:Int32;

	/**Gamepad joystick pressed button right**/
	@:native("GAMEPAD_BUTTON_RIGHT_THUMB") var GAMEPAD_BUTTON_RIGHT_THUMB:Int32;
}

/**	Gamepad axis**/
@:include("raylib.h")
extern enum abstract GamepadAxis(Int32) {
	/**Gamepad left stick X axis**/
	@:native("GAMEPAD_AXIS_LEFT_X") var GAMEPAD_AXIS_LEFT_X:Int32;

	/**Gamepad left stick Y axis**/
	@:native("GAMEPAD_AXIS_LEFT_Y") var GAMEPAD_AXIS_LEFT_Y:Int32;

	/**Gamepad right stick X axis**/
	@:native("GAMEPAD_AXIS_RIGHT_X") var GAMEPAD_AXIS_RIGHT_X:Int32;

	/**Gamepad right stick Y axis**/
	@:native("GAMEPAD_AXIS_RIGHT_Y") var GAMEPAD_AXIS_RIGHT_Y:Int32;

	/**Gamepad back trigger left, pressure level: [1..-1]**/
	@:native("GAMEPAD_AXIS_LEFT_TRIGGER") var GAMEPAD_AXIS_LEFT_TRIGGER:Int32;

	/**Gamepad back trigger right, pressure level: [1..-1]**/
	@:native("GAMEPAD_AXIS_RIGHT_TRIGGER") var GAMEPAD_AXIS_RIGHT_TRIGGER:Int32;
}

/**	Material map index**/
@:include("raylib.h")
extern enum abstract MaterialMapIndex(Int32) {
	/**Albedo material (same as: MATERIAL_MAP_DIFFUSE)**/
	@:native("MATERIAL_MAP_ALBEDO") var MATERIAL_MAP_ALBEDO:Int32;

	/**Metalness material (same as: MATERIAL_MAP_SPECULAR)**/
	@:native("MATERIAL_MAP_METALNESS") var MATERIAL_MAP_METALNESS:Int32;

	/**Normal material**/
	@:native("MATERIAL_MAP_NORMAL") var MATERIAL_MAP_NORMAL:Int32;

	/**Roughness material**/
	@:native("MATERIAL_MAP_ROUGHNESS") var MATERIAL_MAP_ROUGHNESS:Int32;

	/**Ambient occlusion material**/
	@:native("MATERIAL_MAP_OCCLUSION") var MATERIAL_MAP_OCCLUSION:Int32;

	/**Emission material**/
	@:native("MATERIAL_MAP_EMISSION") var MATERIAL_MAP_EMISSION:Int32;

	/**Heightmap material**/
	@:native("MATERIAL_MAP_HEIGHT") var MATERIAL_MAP_HEIGHT:Int32;

	/**Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)**/
	@:native("MATERIAL_MAP_CUBEMAP") var MATERIAL_MAP_CUBEMAP:Int32;

	/**Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)**/
	@:native("MATERIAL_MAP_IRRADIANCE") var MATERIAL_MAP_IRRADIANCE:Int32;

	/**Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)**/
	@:native("MATERIAL_MAP_PREFILTER") var MATERIAL_MAP_PREFILTER:Int32;

	/**Brdf material**/
	@:native("MATERIAL_MAP_BRDF") var MATERIAL_MAP_BRDF:Int32;
}

/**	Shader location index**/
@:include("raylib.h")
extern enum abstract ShaderLocationIndex(Int32) {
	/**Shader location: vertex attribute: position**/
	@:native("SHADER_LOC_VERTEX_POSITION") var SHADER_LOC_VERTEX_POSITION:Int32;

	/**Shader location: vertex attribute: texcoord01**/
	@:native("SHADER_LOC_VERTEX_TEXCOORD01") var SHADER_LOC_VERTEX_TEXCOORD01:Int32;

	/**Shader location: vertex attribute: texcoord02**/
	@:native("SHADER_LOC_VERTEX_TEXCOORD02") var SHADER_LOC_VERTEX_TEXCOORD02:Int32;

	/**Shader location: vertex attribute: normal**/
	@:native("SHADER_LOC_VERTEX_NORMAL") var SHADER_LOC_VERTEX_NORMAL:Int32;

	/**Shader location: vertex attribute: tangent**/
	@:native("SHADER_LOC_VERTEX_TANGENT") var SHADER_LOC_VERTEX_TANGENT:Int32;

	/**Shader location: vertex attribute: color**/
	@:native("SHADER_LOC_VERTEX_COLOR") var SHADER_LOC_VERTEX_COLOR:Int32;

	/**Shader location: matrix uniform: model-view-projection**/
	@:native("SHADER_LOC_MATRIX_MVP") var SHADER_LOC_MATRIX_MVP:Int32;

	/**Shader location: matrix uniform: view (camera transform)**/
	@:native("SHADER_LOC_MATRIX_VIEW") var SHADER_LOC_MATRIX_VIEW:Int32;

	/**Shader location: matrix uniform: projection**/
	@:native("SHADER_LOC_MATRIX_PROJECTION") var SHADER_LOC_MATRIX_PROJECTION:Int32;

	/**Shader location: matrix uniform: model (transform)**/
	@:native("SHADER_LOC_MATRIX_MODEL") var SHADER_LOC_MATRIX_MODEL:Int32;

	/**Shader location: matrix uniform: normal**/
	@:native("SHADER_LOC_MATRIX_NORMAL") var SHADER_LOC_MATRIX_NORMAL:Int32;

	/**Shader location: vector uniform: view**/
	@:native("SHADER_LOC_VECTOR_VIEW") var SHADER_LOC_VECTOR_VIEW:Int32;

	/**Shader location: vector uniform: diffuse color**/
	@:native("SHADER_LOC_COLOR_DIFFUSE") var SHADER_LOC_COLOR_DIFFUSE:Int32;

	/**Shader location: vector uniform: specular color**/
	@:native("SHADER_LOC_COLOR_SPECULAR") var SHADER_LOC_COLOR_SPECULAR:Int32;

	/**Shader location: vector uniform: ambient color**/
	@:native("SHADER_LOC_COLOR_AMBIENT") var SHADER_LOC_COLOR_AMBIENT:Int32;

	/**Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)**/
	@:native("SHADER_LOC_MAP_ALBEDO") var SHADER_LOC_MAP_ALBEDO:Int32;

	/**Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)**/
	@:native("SHADER_LOC_MAP_METALNESS") var SHADER_LOC_MAP_METALNESS:Int32;

	/**Shader location: sampler2d texture: normal**/
	@:native("SHADER_LOC_MAP_NORMAL") var SHADER_LOC_MAP_NORMAL:Int32;

	/**Shader location: sampler2d texture: roughness**/
	@:native("SHADER_LOC_MAP_ROUGHNESS") var SHADER_LOC_MAP_ROUGHNESS:Int32;

	/**Shader location: sampler2d texture: occlusion**/
	@:native("SHADER_LOC_MAP_OCCLUSION") var SHADER_LOC_MAP_OCCLUSION:Int32;

	/**Shader location: sampler2d texture: emission**/
	@:native("SHADER_LOC_MAP_EMISSION") var SHADER_LOC_MAP_EMISSION:Int32;

	/**Shader location: sampler2d texture: height**/
	@:native("SHADER_LOC_MAP_HEIGHT") var SHADER_LOC_MAP_HEIGHT:Int32;

	/**Shader location: samplerCube texture: cubemap**/
	@:native("SHADER_LOC_MAP_CUBEMAP") var SHADER_LOC_MAP_CUBEMAP:Int32;

	/**Shader location: samplerCube texture: irradiance**/
	@:native("SHADER_LOC_MAP_IRRADIANCE") var SHADER_LOC_MAP_IRRADIANCE:Int32;

	/**Shader location: samplerCube texture: prefilter**/
	@:native("SHADER_LOC_MAP_PREFILTER") var SHADER_LOC_MAP_PREFILTER:Int32;

	/**Shader location: sampler2d texture: brdf**/
	@:native("SHADER_LOC_MAP_BRDF") var SHADER_LOC_MAP_BRDF:Int32;
}

/**	Shader uniform data type**/
@:include("raylib.h")
extern enum abstract ShaderUniformDataType(Int32) {
	/**Shader uniform type: float**/
	@:native("SHADER_UNIFORM_FLOAT") var SHADER_UNIFORM_FLOAT:Int32;

	/**Shader uniform type: vec2 (2 float)**/
	@:native("SHADER_UNIFORM_VEC2") var SHADER_UNIFORM_VEC2:Int32;

	/**Shader uniform type: vec3 (3 float)**/
	@:native("SHADER_UNIFORM_VEC3") var SHADER_UNIFORM_VEC3:Int32;

	/**Shader uniform type: vec4 (4 float)**/
	@:native("SHADER_UNIFORM_VEC4") var SHADER_UNIFORM_VEC4:Int32;

	/**Shader uniform type: int**/
	@:native("SHADER_UNIFORM_INT") var SHADER_UNIFORM_INT:Int32;

	/**Shader uniform type: ivec2 (2 int)**/
	@:native("SHADER_UNIFORM_IVEC2") var SHADER_UNIFORM_IVEC2:Int32;

	/**Shader uniform type: ivec3 (3 int)**/
	@:native("SHADER_UNIFORM_IVEC3") var SHADER_UNIFORM_IVEC3:Int32;

	/**Shader uniform type: ivec4 (4 int)**/
	@:native("SHADER_UNIFORM_IVEC4") var SHADER_UNIFORM_IVEC4:Int32;

	/**Shader uniform type: sampler2d**/
	@:native("SHADER_UNIFORM_SAMPLER2D") var SHADER_UNIFORM_SAMPLER2D:Int32;
}

/**	Shader attribute data types**/
@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(Int32) {
	/**Shader attribute type: float**/
	@:native("SHADER_ATTRIB_FLOAT") var SHADER_ATTRIB_FLOAT:Int32;

	/**Shader attribute type: vec2 (2 float)**/
	@:native("SHADER_ATTRIB_VEC2") var SHADER_ATTRIB_VEC2:Int32;

	/**Shader attribute type: vec3 (3 float)**/
	@:native("SHADER_ATTRIB_VEC3") var SHADER_ATTRIB_VEC3:Int32;

	/**Shader attribute type: vec4 (4 float)**/
	@:native("SHADER_ATTRIB_VEC4") var SHADER_ATTRIB_VEC4:Int32;
}

/**	Pixel formats**/
@:include("raylib.h")
extern enum abstract PixelFormat(Int32) {
	/**8 bit per pixel (no alpha)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE") var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE:Int32;

	/**8*2 bpp (2 channels)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA") var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA:Int32;

	/**16 bpp**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5") var PIXELFORMAT_UNCOMPRESSED_R5G6B5:Int32;

	/**24 bpp**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8") var PIXELFORMAT_UNCOMPRESSED_R8G8B8:Int32;

	/**16 bpp (1 bit alpha)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1") var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1:Int32;

	/**16 bpp (4 bit alpha)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4") var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4:Int32;

	/**32 bpp**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8") var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8:Int32;

	/**32 bpp (1 channel - float)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R32") var PIXELFORMAT_UNCOMPRESSED_R32:Int32;

	/**32*3 bpp (3 channels - float)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32") var PIXELFORMAT_UNCOMPRESSED_R32G32B32:Int32;

	/**32*4 bpp (4 channels - float)**/
	@:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32") var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32:Int32;

	/**4 bpp (no alpha)**/
	@:native("PIXELFORMAT_COMPRESSED_DXT1_RGB") var PIXELFORMAT_COMPRESSED_DXT1_RGB:Int32;

	/**4 bpp (1 bit alpha)**/
	@:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA") var PIXELFORMAT_COMPRESSED_DXT1_RGBA:Int32;

	/**8 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA") var PIXELFORMAT_COMPRESSED_DXT3_RGBA:Int32;

	/**8 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA") var PIXELFORMAT_COMPRESSED_DXT5_RGBA:Int32;

	/**4 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_ETC1_RGB") var PIXELFORMAT_COMPRESSED_ETC1_RGB:Int32;

	/**4 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_ETC2_RGB") var PIXELFORMAT_COMPRESSED_ETC2_RGB:Int32;

	/**8 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA") var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA:Int32;

	/**4 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_PVRT_RGB") var PIXELFORMAT_COMPRESSED_PVRT_RGB:Int32;

	/**4 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA") var PIXELFORMAT_COMPRESSED_PVRT_RGBA:Int32;

	/**8 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA") var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA:Int32;

	/**2 bpp**/
	@:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA") var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA:Int32;
}

/**	Texture parameters: filter mode**/
@:include("raylib.h")
extern enum abstract TextureFilter(Int32) {
	/**No filter, just pixel approximation**/
	@:native("TEXTURE_FILTER_POINT") var TEXTURE_FILTER_POINT:Int32;

	/**Linear filtering**/
	@:native("TEXTURE_FILTER_BILINEAR") var TEXTURE_FILTER_BILINEAR:Int32;

	/**Trilinear filtering (linear with mipmaps)**/
	@:native("TEXTURE_FILTER_TRILINEAR") var TEXTURE_FILTER_TRILINEAR:Int32;

	/**Anisotropic filtering 4x**/
	@:native("TEXTURE_FILTER_ANISOTROPIC_4X") var TEXTURE_FILTER_ANISOTROPIC_4X:Int32;

	/**Anisotropic filtering 8x**/
	@:native("TEXTURE_FILTER_ANISOTROPIC_8X") var TEXTURE_FILTER_ANISOTROPIC_8X:Int32;

	/**Anisotropic filtering 16x**/
	@:native("TEXTURE_FILTER_ANISOTROPIC_16X") var TEXTURE_FILTER_ANISOTROPIC_16X:Int32;
}

/**	Texture parameters: wrap mode**/
@:include("raylib.h")
extern enum abstract TextureWrap(Int32) {
	/**Repeats texture in tiled mode**/
	@:native("TEXTURE_WRAP_REPEAT") var TEXTURE_WRAP_REPEAT:Int32;

	/**Clamps texture to edge pixel in tiled mode**/
	@:native("TEXTURE_WRAP_CLAMP") var TEXTURE_WRAP_CLAMP:Int32;

	/**Mirrors and repeats the texture in tiled mode**/
	@:native("TEXTURE_WRAP_MIRROR_REPEAT") var TEXTURE_WRAP_MIRROR_REPEAT:Int32;

	/**Mirrors and clamps to border the texture in tiled mode**/
	@:native("TEXTURE_WRAP_MIRROR_CLAMP") var TEXTURE_WRAP_MIRROR_CLAMP:Int32;
}

/**	Cubemap layouts**/
@:include("raylib.h")
extern enum abstract CubemapLayout(Int32) {
	/**Automatically detect layout type**/
	@:native("CUBEMAP_LAYOUT_AUTO_DETECT") var CUBEMAP_LAYOUT_AUTO_DETECT:Int32;

	/**Layout is defined by a vertical line with faces**/
	@:native("CUBEMAP_LAYOUT_LINE_VERTICAL") var CUBEMAP_LAYOUT_LINE_VERTICAL:Int32;

	/**Layout is defined by an horizontal line with faces**/
	@:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL") var CUBEMAP_LAYOUT_LINE_HORIZONTAL:Int32;

	/**Layout is defined by a 3x4 cross with cubemap faces**/
	@:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR") var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR:Int32;

	/**Layout is defined by a 4x3 cross with cubemap faces**/
	@:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE") var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE:Int32;

	/**Layout is defined by a panorama image (equirectangular map)**/
	@:native("CUBEMAP_LAYOUT_PANORAMA") var CUBEMAP_LAYOUT_PANORAMA:Int32;
}

/**	Font type, defines generation method**/
@:include("raylib.h")
extern enum abstract FontType(Int32) {
	/**Default font generation, anti-aliased**/
	@:native("FONT_DEFAULT") var FONT_DEFAULT:Int32;

	/**Bitmap font generation, no anti-aliasing**/
	@:native("FONT_BITMAP") var FONT_BITMAP:Int32;

	/**SDF font generation, requires external shader**/
	@:native("FONT_SDF") var FONT_SDF:Int32;
}

/**	Color blending modes (pre-defined)**/
@:include("raylib.h")
extern enum abstract BlendMode(Int32) {
	/**Blend textures considering alpha (default)**/
	@:native("BLEND_ALPHA") var BLEND_ALPHA:Int32;

	/**Blend textures adding colors**/
	@:native("BLEND_ADDITIVE") var BLEND_ADDITIVE:Int32;

	/**Blend textures multiplying colors**/
	@:native("BLEND_MULTIPLIED") var BLEND_MULTIPLIED:Int32;

	/**Blend textures adding colors (alternative)**/
	@:native("BLEND_ADD_COLORS") var BLEND_ADD_COLORS:Int32;

	/**Blend textures subtracting colors (alternative)**/
	@:native("BLEND_SUBTRACT_COLORS") var BLEND_SUBTRACT_COLORS:Int32;

	/**Blend premultiplied textures considering alpha**/
	@:native("BLEND_ALPHA_PREMUL") var BLEND_ALPHA_PREMUL:Int32;

	/**Blend textures using custom src/dst factors (use rlSetBlendMode())**/
	@:native("BLEND_CUSTOM") var BLEND_CUSTOM:Int32;
}

/**	Gesture**/
@:include("raylib.h")
extern enum abstract Gesture(Int32) {
	/**No gesture**/
	@:native("GESTURE_NONE") var GESTURE_NONE:Int32;

	/**Tap gesture**/
	@:native("GESTURE_TAP") var GESTURE_TAP:Int32;

	/**Double tap gesture**/
	@:native("GESTURE_DOUBLETAP") var GESTURE_DOUBLETAP:Int32;

	/**Hold gesture**/
	@:native("GESTURE_HOLD") var GESTURE_HOLD:Int32;

	/**Drag gesture**/
	@:native("GESTURE_DRAG") var GESTURE_DRAG:Int32;

	/**Swipe right gesture**/
	@:native("GESTURE_SWIPE_RIGHT") var GESTURE_SWIPE_RIGHT:Int32;

	/**Swipe left gesture**/
	@:native("GESTURE_SWIPE_LEFT") var GESTURE_SWIPE_LEFT:Int32;

	/**Swipe up gesture**/
	@:native("GESTURE_SWIPE_UP") var GESTURE_SWIPE_UP:Int32;

	/**Swipe down gesture**/
	@:native("GESTURE_SWIPE_DOWN") var GESTURE_SWIPE_DOWN:Int32;

	/**Pinch in gesture**/
	@:native("GESTURE_PINCH_IN") var GESTURE_PINCH_IN:Int32;

	/**Pinch out gesture**/
	@:native("GESTURE_PINCH_OUT") var GESTURE_PINCH_OUT:Int32;
}

/**	Camera system modes**/
@:include("raylib.h")
extern enum abstract CameraMode(Int32) {
	/**Custom camera**/
	@:native("CAMERA_CUSTOM") var CAMERA_CUSTOM:Int32;

	/**Free camera**/
	@:native("CAMERA_FREE") var CAMERA_FREE:Int32;

	/**Orbital camera**/
	@:native("CAMERA_ORBITAL") var CAMERA_ORBITAL:Int32;

	/**First person camera**/
	@:native("CAMERA_FIRST_PERSON") var CAMERA_FIRST_PERSON:Int32;

	/**Third person camera**/
	@:native("CAMERA_THIRD_PERSON") var CAMERA_THIRD_PERSON:Int32;
}

/**	Camera projection**/
@:include("raylib.h")
extern enum abstract CameraProjection(Int32) {
	/**Perspective projection**/
	@:native("CAMERA_PERSPECTIVE") var CAMERA_PERSPECTIVE:Int32;

	/**Orthographic projection**/
	@:native("CAMERA_ORTHOGRAPHIC") var CAMERA_ORTHOGRAPHIC:Int32;
}

/**	N-patch layout**/
@:include("raylib.h")
extern enum abstract NPatchLayout(Int32) {
	/**Npatch layout: 3x3 tiles**/
	@:native("NPATCH_NINE_PATCH") var NPATCH_NINE_PATCH:Int32;

	/**Npatch layout: 1x3 tiles**/
	@:native("NPATCH_THREE_PATCH_VERTICAL") var NPATCH_THREE_PATCH_VERTICAL:Int32;

	/**Npatch layout: 3x1 tiles**/
	@:native("NPATCH_THREE_PATCH_HORIZONTAL") var NPATCH_THREE_PATCH_HORIZONTAL:Int32;
}

@:include("raylib.h")
extern enum abstract Colors(Color) {
	@:native("LIGHTGRAY") var LIGHTGRAY:Color;
	@:native("GRAY") var GRAY:Color;
	@:native("DARKGRAY") var DARKGRAY:Color;
	@:native("YELLOW") var YELLOW:Color;
	@:native("GOLD") var GOLD:Color;
	@:native("ORANGE") var ORANGE:Color;
	@:native("PINK") var PINK:Color;
	@:native("RED") var RED:Color;
	@:native("MAROON") var MAROON:Color;
	@:native("GREEN") var GREEN:Color;
	@:native("LIME") var LIME:Color;
	@:native("DARKGREEN") var DARKGREEN:Color;
	@:native("SKYBLUE") var SKYBLUE:Color;
	@:native("BLUE") var BLUE:Color;
	@:native("DARKBLUE") var DARKBLUE:Color;
	@:native("PURPLE") var PURPLE:Color;
	@:native("VIOLET") var VIOLET:Color;
	@:native("DARKPURPLE") var DARKPURPLE:Color;
	@:native("BEIGE") var BEIGE:Color;
	@:native("BROWN") var BROWN:Color;
	@:native("DARKBROWN") var DARKBROWN:Color;
	@:native("WHITE") var WHITE:Color;
	@:native("BLACK") var BLACK:Color;
	@:native("BLANK") var BLANK:Color;
	@:native("MAGENTA") var MAGENTA:Color;
	@:native("RAYWHITE") var RAYWHITE:Color;
}

@:include("raylib.h")
@:native("LoadFileDataCallback")
extern class LoadFileDataCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):LoadFileDataCallback {
		return untyped __cpp__("(LoadFileDataCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

@:include("raylib.h")
@:native("SaveFileDataCallback")
extern class SaveFileDataCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):SaveFileDataCallback {
		return untyped __cpp__("(SaveFileDataCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

@:include("raylib.h")
@:native("TraceLogCallback")
extern class TraceLogCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):TraceLogCallback {
		return untyped __cpp__("(TraceLogCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

@:include("raylib.h")
@:native("LoadFileTextCallback")
extern class LoadFileTextCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):LoadFileTextCallback {
		return untyped __cpp__("(LoadFileTextCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

@:include("raylib.h")
@:native("SaveFileTextCallback")
extern class SaveFileTextCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):SaveFileTextCallback {
		return untyped __cpp__("(SaveFileTextCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

@:include("raylib.h")
@:native("AudioCallback")
extern class AudioCallback {
	public static inline function fromStatic<T>(inStaticFunction:T):AudioCallback {
		return untyped __cpp__("(AudioCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
	}
}

/**
	Raylib functions.
**/
@:buildXml("<include name='${haxelib:raylib}/src/Build.xml'/>")
@:include("raylib.h")
extern class Rl {
	/**	Initialize window and OpenGL context**/
	@:native("InitWindow") static function InitWindow(width:Int32, height:Int32, title:ConstCharStar):Void;

	/**	Check if KEY_ESCAPE pressed or Close icon pressed**/
	@:native("WindowShouldClose") static function WindowShouldClose():Bool;

	/**	Close window and unload OpenGL context**/
	@:native("CloseWindow") static function CloseWindow():Void;

	/**	Check if window has been initialized successfully**/
	@:native("IsWindowReady") static function IsWindowReady():Bool;

	/**	Check if window is currently fullscreen**/
	@:native("IsWindowFullscreen") static function IsWindowFullscreen():Bool;

	/**	Check if window is currently hidden (only PLATFORM_DESKTOP)**/
	@:native("IsWindowHidden") static function IsWindowHidden():Bool;

	/**	Check if window is currently minimized (only PLATFORM_DESKTOP)**/
	@:native("IsWindowMinimized") static function IsWindowMinimized():Bool;

	/**	Check if window is currently maximized (only PLATFORM_DESKTOP)**/
	@:native("IsWindowMaximized") static function IsWindowMaximized():Bool;

	/**	Check if window is currently focused (only PLATFORM_DESKTOP)**/
	@:native("IsWindowFocused") static function IsWindowFocused():Bool;

	/**	Check if window has been resized last frame**/
	@:native("IsWindowResized") static function IsWindowResized():Bool;

	/**	Check if one specific window flag is enabled**/
	@:native("IsWindowState") static function IsWindowState(flag:UInt32):Bool;

	/**	Set window configuration state using flags (only PLATFORM_DESKTOP)**/
	@:native("SetWindowState") static function SetWindowState(flags:UInt32):Void;

	/**	Clear window configuration state flags**/
	@:native("ClearWindowState") static function ClearWindowState(flags:UInt32):Void;

	/**	Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)**/
	@:native("ToggleFullscreen") static function ToggleFullscreen():Void;

	/**	Set window state: maximized, if resizable (only PLATFORM_DESKTOP)**/
	@:native("MaximizeWindow") static function MaximizeWindow():Void;

	/**	Set window state: minimized, if resizable (only PLATFORM_DESKTOP)**/
	@:native("MinimizeWindow") static function MinimizeWindow():Void;

	/**	Set window state: not minimized/maximized (only PLATFORM_DESKTOP)**/
	@:native("RestoreWindow") static function RestoreWindow():Void;

	/**	Set icon for window (only PLATFORM_DESKTOP)**/
	@:native("SetWindowIcon") static function SetWindowIcon(image:Image):Void;

	/**	Set title for window (only PLATFORM_DESKTOP)**/
	@:native("SetWindowTitle") static function SetWindowTitle(title:ConstCharStar):Void;

	/**	Set window position on screen (only PLATFORM_DESKTOP)**/
	@:native("SetWindowPosition") static function SetWindowPosition(x:Int32, y:Int32):Void;

	/**	Set monitor for the current window (fullscreen mode)**/
	@:native("SetWindowMonitor") static function SetWindowMonitor(monitor:Int32):Void;

	/**	Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)**/
	@:native("SetWindowMinSize") static function SetWindowMinSize(width:Int32, height:Int32):Void;

	/**	Set window dimensions**/
	@:native("SetWindowSize") static function SetWindowSize(width:Int32, height:Int32):Void;

	/**	Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)**/
	@:native("SetWindowOpacity") static function SetWindowOpacity(opacity:Float32):Void;

	/**	Get native window handle**/
	@:native("GetWindowHandle") static function GetWindowHandle():Star<Void>;

	/**	Get current screen width**/
	@:native("GetScreenWidth") static function GetScreenWidth():Int32;

	/**	Get current screen height**/
	@:native("GetScreenHeight") static function GetScreenHeight():Int32;

	/**	Get current render width (it considers HiDPI)**/
	@:native("GetRenderWidth") static function GetRenderWidth():Int32;

	/**	Get current render height (it considers HiDPI)**/
	@:native("GetRenderHeight") static function GetRenderHeight():Int32;

	/**	Get number of connected monitors**/
	@:native("GetMonitorCount") static function GetMonitorCount():Int32;

	/**	Get current connected monitor**/
	@:native("GetCurrentMonitor") static function GetCurrentMonitor():Int32;

	/**	Get specified monitor position**/
	@:native("GetMonitorPosition") static function GetMonitorPosition(monitor:Int32):Vector2;

	/**	Get specified monitor width (max available by monitor)**/
	@:native("GetMonitorWidth") static function GetMonitorWidth(monitor:Int32):Int32;

	/**	Get specified monitor height (max available by monitor)**/
	@:native("GetMonitorHeight") static function GetMonitorHeight(monitor:Int32):Int32;

	/**	Get specified monitor physical width in millimetres**/
	@:native("GetMonitorPhysicalWidth") static function GetMonitorPhysicalWidth(monitor:Int32):Int32;

	/**	Get specified monitor physical height in millimetres**/
	@:native("GetMonitorPhysicalHeight") static function GetMonitorPhysicalHeight(monitor:Int32):Int32;

	/**	Get specified monitor refresh rate**/
	@:native("GetMonitorRefreshRate") static function GetMonitorRefreshRate(monitor:Int32):Int32;

	/**	Get window position XY on monitor**/
	@:native("GetWindowPosition") static function GetWindowPosition():Vector2;

	/**	Get window scale DPI factor**/
	@:native("GetWindowScaleDPI") static function GetWindowScaleDPI():Vector2;

	/**	Get the human-readable, UTF-8 encoded name of the primary monitor**/
	@:native("GetMonitorName") static function GetMonitorName(monitor:Int32):ConstCharStar;

	/**	Set clipboard text content**/
	@:native("SetClipboardText") static function SetClipboardText(text:ConstCharStar):Void;

	/**	Get clipboard text content**/
	@:native("GetClipboardText") static function GetClipboardText():ConstCharStar;

	/**	Swap back buffer with front buffer (screen drawing)**/
	@:native("SwapScreenBuffer") static function SwapScreenBuffer():Void;

	/**	Register all input events**/
	@:native("PollInputEvents") static function PollInputEvents():Void;

	/**	Wait for some milliseconds (halt program execution)**/
	@:native("WaitTime") static function WaitTime(ms:Float32):Void;

	/**	Shows cursor**/
	@:native("ShowCursor") static function ShowCursor():Void;

	/**	Hides cursor**/
	@:native("HideCursor") static function HideCursor():Void;

	/**	Check if cursor is not visible**/
	@:native("IsCursorHidden") static function IsCursorHidden():Bool;

	/**	Enables cursor (unlock cursor)**/
	@:native("EnableCursor") static function EnableCursor():Void;

	/**	Disables cursor (lock cursor)**/
	@:native("DisableCursor") static function DisableCursor():Void;

	/**	Check if cursor is on the screen**/
	@:native("IsCursorOnScreen") static function IsCursorOnScreen():Bool;

	/**	Set background color (framebuffer clear color)**/
	@:native("ClearBackground") static function ClearBackground(color:Color):Void;

	/**	Setup canvas (framebuffer) to start drawing**/
	@:native("BeginDrawing") static function BeginDrawing():Void;

	/**	End canvas drawing and swap buffers (double buffering)**/
	@:native("EndDrawing") static function EndDrawing():Void;

	/**	Begin 2D mode with custom camera (2D)**/
	@:native("BeginMode2D") static function BeginMode2D(camera:Camera2D):Void;

	/**	Ends 2D mode with custom camera**/
	@:native("EndMode2D") static function EndMode2D():Void;

	/**	Begin 3D mode with custom camera (3D)**/
	@:native("BeginMode3D") static function BeginMode3D(camera:Camera3D):Void;

	/**	Ends 3D mode and returns to default 2D orthographic mode**/
	@:native("EndMode3D") static function EndMode3D():Void;

	/**	Begin drawing to render texture**/
	@:native("BeginTextureMode") static function BeginTextureMode(target:RenderTexture2D):Void;

	/**	Ends drawing to render texture**/
	@:native("EndTextureMode") static function EndTextureMode():Void;

	/**	Begin custom shader drawing**/
	@:native("BeginShaderMode") static function BeginShaderMode(shader:Shader):Void;

	/**	End custom shader drawing (use default shader)**/
	@:native("EndShaderMode") static function EndShaderMode():Void;

	/**	Begin blending mode (alpha, additive, multiplied, subtract, custom)**/
	@:native("BeginBlendMode") static function BeginBlendMode(mode:Int32):Void;

	/**	End blending mode (reset to default: alpha blending)**/
	@:native("EndBlendMode") static function EndBlendMode():Void;

	/**	Begin scissor mode (define screen area for following drawing)**/
	@:native("BeginScissorMode") static function BeginScissorMode(x:Int32, y:Int32, width:Int32, height:Int32):Void;

	/**	End scissor mode**/
	@:native("EndScissorMode") static function EndScissorMode():Void;

	/**	Begin stereo rendering (requires VR simulator)**/
	@:native("BeginVrStereoMode") static function BeginVrStereoMode(config:VrStereoConfig):Void;

	/**	End stereo rendering (requires VR simulator)**/
	@:native("EndVrStereoMode") static function EndVrStereoMode():Void;

	/**	Load VR stereo config for VR simulator device parameters**/
	@:native("LoadVrStereoConfig") static function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;

	/**	Unload VR stereo config**/
	@:native("UnloadVrStereoConfig") static function UnloadVrStereoConfig(config:VrStereoConfig):Void;

	/**	Load shader from files and bind default locations**/
	@:native("LoadShader") static function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;

	/**	Load shader from code strings and bind default locations**/
	@:native("LoadShaderFromMemory") static function LoadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;

	/**	Get shader uniform location**/
	@:native("GetShaderLocation") static function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int32;

	/**	Get shader attribute location**/
	@:native("GetShaderLocationAttrib") static function GetShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int32;

	/**	Set shader uniform value**/
	@:native("SetShaderValue") static function SetShaderValue(shader:Shader, locIndex:Int32, value:ConstStar<Void>, uniformType:Int32):Void;

	/**	Set shader uniform value vector**/
	@:native("SetShaderValueV") static function SetShaderValueV(shader:Shader, locIndex:Int32, value:ConstStar<Void>, uniformType:Int32, count:Int32):Void;

	/**	Set shader uniform value (matrix 4x4)**/
	@:native("SetShaderValueMatrix") static function SetShaderValueMatrix(shader:Shader, locIndex:Int32, mat:Matrix):Void;

	/**	Set shader uniform value for texture (sampler2d)**/
	@:native("SetShaderValueTexture") static function SetShaderValueTexture(shader:Shader, locIndex:Int32, texture:Texture2D):Void;

	/**	Unload shader from GPU memory (VRAM)**/
	@:native("UnloadShader") static function UnloadShader(shader:Shader):Void;

	/**	Get a ray trace from mouse position**/
	@:native("GetMouseRay") static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;

	/**	Get camera transform matrix (view matrix)**/
	@:native("GetCameraMatrix") static function GetCameraMatrix(camera:Camera):Matrix;

	/**	Get camera 2d transform matrix**/
	@:native("GetCameraMatrix2D") static function GetCameraMatrix2D(camera:Camera2D):Matrix;

	/**	Get the screen space position for a 3d world space position**/
	@:native("GetWorldToScreen") static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;

	/**	Get size position for a 3d world space position**/
	@:native("GetWorldToScreenEx") static function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int32, height:Int32):Vector2;

	/**	Get the screen space position for a 2d camera world space position**/
	@:native("GetWorldToScreen2D") static function GetWorldToScreen2D(position:Vector2, camera:Camera2D):Vector2;

	/**	Get the world space position for a 2d camera screen space position**/
	@:native("GetScreenToWorld2D") static function GetScreenToWorld2D(position:Vector2, camera:Camera2D):Vector2;

	/**	Set target FPS (maximum)**/
	@:native("SetTargetFPS") static function SetTargetFPS(fps:Int32):Void;

	/**	Get current FPS**/
	@:native("GetFPS") static function GetFPS():Int32;

	/**	Get time in seconds for last frame drawn (delta time)**/
	@:native("GetFrameTime") static function GetFrameTime():Float32;

	/**	Get elapsed time in seconds since InitWindow()**/
	@:native("GetTime") static function GetTime():Float64;

	/**	Get a random value between min and max (both included)**/
	@:native("GetRandomValue") static function GetRandomValue(min:Int32, max:Int32):Int32;

	/**	Set the seed for the random number generator**/
	@:native("SetRandomSeed") static function SetRandomSeed(seed:UInt32):Void;

	/**	Takes a screenshot of current screen (filename extension defines format)**/
	@:native("TakeScreenshot") static function TakeScreenshot(fileName:ConstCharStar):Void;

	/**	Setup init configuration flags (view FLAGS)**/
	@:native("SetConfigFlags") static function SetConfigFlags(flags:UInt32):Void;

	/**	Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)**/
	@:native("TraceLog") static function TraceLog(logLevel:Int32, text:ConstCharStar, args:Rest<Any>):Void;

	/**	Set the current threshold (minimum) log level**/
	@:native("SetTraceLogLevel") static function SetTraceLogLevel(logLevel:Int32):Void;

	/**	Internal memory allocator**/
	@:native("MemAlloc") static function MemAlloc(size:Int32):Star<Void>;

	/**	Internal memory reallocator**/
	@:native("MemRealloc") static function MemRealloc(ptr:Star<Void>, size:Int32):Star<Void>;

	/**	Internal memory free**/
	@:native("MemFree") static function MemFree(ptr:Star<Void>):Void;

	/**	Set custom trace log**/
	@:native("SetTraceLogCallback") static function SetTraceLogCallback(callback:TraceLogCallback):Void;

	/**	Set custom file binary data loader**/
	@:native("SetLoadFileDataCallback") static function SetLoadFileDataCallback(callback:LoadFileDataCallback):Void;

	/**	Set custom file binary data saver**/
	@:native("SetSaveFileDataCallback") static function SetSaveFileDataCallback(callback:SaveFileDataCallback):Void;

	/**	Set custom file text data loader**/
	@:native("SetLoadFileTextCallback") static function SetLoadFileTextCallback(callback:LoadFileTextCallback):Void;

	/**	Set custom file text data saver**/
	@:native("SetSaveFileTextCallback") static function SetSaveFileTextCallback(callback:SaveFileTextCallback):Void;

	/**	Load file data as byte array (read)**/
	@:native("LoadFileData") static function LoadFileData(fileName:ConstCharStar, bytesRead:Star<UInt32>):Star<UInt8>;

	/**	Unload file data allocated by LoadFileData()**/
	@:native("UnloadFileData") static function UnloadFileData(data:Star<UInt8>):Void;

	/**	Save data to file from byte array (write), returns true on success**/
	@:native("SaveFileData") static function SaveFileData(fileName:ConstCharStar, data:Star<Void>, bytesToWrite:UInt32):Bool;

	/**	Load text data from file (read), returns a '\0' terminated string**/
	@:native("LoadFileText") static function LoadFileText(fileName:ConstCharStar):Star<Char>;

	/**	Unload file text data allocated by LoadFileText()**/
	@:native("UnloadFileText") static function UnloadFileText(text:Star<Char>):Void;

	/**	Save text data to file (write), string must be '\0' terminated, returns true on success**/
	@:native("SaveFileText") static function SaveFileText(fileName:ConstCharStar, text:Star<Char>):Bool;

	/**	Check if file exists**/
	@:native("FileExists") static function FileExists(fileName:ConstCharStar):Bool;

	/**	Check if a directory path exists**/
	@:native("DirectoryExists") static function DirectoryExists(dirPath:ConstCharStar):Bool;

	/**	Check file extension (including point: .png, .wav)**/
	@:native("IsFileExtension") static function IsFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;

	/**	Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)**/
	@:native("GetFileLength") static function GetFileLength(fileName:ConstCharStar):Int32;

	/**	Get pointer to extension for a filename string (includes dot: '.png')**/
	@:native("GetFileExtension") static function GetFileExtension(fileName:ConstCharStar):ConstCharStar;

	/**	Get pointer to filename for a path string**/
	@:native("GetFileName") static function GetFileName(filePath:ConstCharStar):ConstCharStar;

	/**	Get filename string without extension (uses static string)**/
	@:native("GetFileNameWithoutExt") static function GetFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;

	/**	Get full path for a given fileName with path (uses static string)**/
	@:native("GetDirectoryPath") static function GetDirectoryPath(filePath:ConstCharStar):ConstCharStar;

	/**	Get previous directory path for a given path (uses static string)**/
	@:native("GetPrevDirectoryPath") static function GetPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;

	/**	Get current working directory (uses static string)**/
	@:native("GetWorkingDirectory") static function GetWorkingDirectory():ConstCharStar;

	/**	Get the directory if the running application (uses static string)**/
	@:native("GetApplicationDirectory") static function GetApplicationDirectory():ConstCharStar;

	/**	Get filenames in a directory path (memory should be freed)**/
	@:deprecated("Not available in Raylib 4.2.0")
	@:native("GetDirectoryFiles") static function GetDirectoryFiles(dirPath:ConstCharStar, count:Star<Int32>):Star<Star<Char>>;

	/**	Clear directory files paths buffers (free memory)**/
	@:deprecated("Not available in Raylib 4.2.0")
	@:native("ClearDirectoryFiles") static function ClearDirectoryFiles():Void;

	/**	Change working directory, return true on success**/
	@:native("ChangeDirectory") static function ChangeDirectory(dir:ConstCharStar):Bool;

	/**	Check if a file has been dropped into window**/
	@:native("IsFileDropped") static function IsFileDropped():Bool;

	/**	Get dropped files names (memory should be freed)**/
	@:deprecated("Not available in Raylib 4.2.0")
	@:native("GetDroppedFiles") static function GetDroppedFiles(count:Star<Int32>):Star<Star<Char>>;

	/**	Clear dropped files paths buffer (free memory)**/
	@:deprecated("Not available in Raylib 4.2.0")
	@:native("ClearDroppedFiles") static function ClearDroppedFiles():Void;

	/** Load directory filepaths**/
	@:native("LoadDirectoryFiles") static function LoadDirectoryFiles(dirPath:ConstCharStar):FilePathList;

	/** Load directory filepaths with extension filtering and recursive directory scan**/
	@:native("LoadDirectoryFilesEx") static function LoadDirectoryFilesEx(basePath:ConstCharStar, filter:ConstCharStar, scanSubDirs:Bool):FilePathList;

	/** Unload filepaths**/
	@:native("UnloadDirectoryFiles") static function UnloadDirectoryFiles(files:FilePathList):Void;

	/** Load dropped filepaths**/
	@:native("LoadDroppedFiles") static function LoadDroppedFiles():FilePathList;

	/** Unload dropped filepaths**/
	@:native("UnloadDroppedFiles") static function UnloadDroppedFiles(files:FilePathList):Void;

	/**	Get file modification time (last write time)**/
	@:native("GetFileModTime") static function GetFileModTime(fileName:ConstCharStar):Int64;

	/**	Compress data (DEFLATE algorithm)**/
	@:native("CompressData") static function CompressData(data:Star<UInt8>, dataLength:Int32, compDataLength:Star<Int32>):Star<UInt8>;

	/**	Decompress data (DEFLATE algorithm)**/
	@:native("DecompressData") static function DecompressData(compData:Star<UInt8>, compDataLength:Int32, dataLength:Star<Int32>):Star<UInt8>;

	/**	Encode data to Base64 string**/
	@:native("EncodeDataBase64") static function EncodeDataBase64(data:Star<UInt8>, dataLength:Int32, outputLength:Star<Int32>):Star<Char>;

	/**	Decode Base64 string data**/
	@:native("DecodeDataBase64") static function DecodeDataBase64(data:Star<UInt8>, outputLength:Star<Int32>):Star<UInt8>;

	/**	Save integer value to storage file (to defined position), returns true on success**/
	@:native("SaveStorageValue") static function SaveStorageValue(position:UInt32, value:Int32):Bool;

	/**	Load integer value from storage file (from defined position)**/
	@:native("LoadStorageValue") static function LoadStorageValue(position:UInt32):Int32;

	/**	Open URL with default system browser (if available)**/
	@:native("OpenURL") static function OpenURL(url:ConstCharStar):Void;

	/**	Check if a key has been pressed once**/
	@:native("IsKeyPressed") static function IsKeyPressed(key:Int32):Bool;

	/**	Check if a key is being pressed**/
	@:native("IsKeyDown") static function IsKeyDown(key:Int32):Bool;

	/**	Check if a key has been released once**/
	@:native("IsKeyReleased") static function IsKeyReleased(key:Int32):Bool;

	/**	Check if a key is NOT being pressed**/
	@:native("IsKeyUp") static function IsKeyUp(key:Int32):Bool;

	/**	Set a custom key to exit program (default is ESC)**/
	@:native("SetExitKey") static function SetExitKey(key:Int32):Void;

	/**	Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty**/
	@:native("GetKeyPressed") static function GetKeyPressed():Int32;

	/**	Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty**/
	@:native("GetCharPressed") static function GetCharPressed():Int32;

	/**	Check if a gamepad is available**/
	@:native("IsGamepadAvailable") static function IsGamepadAvailable(gamepad:Int32):Bool;

	/**	Get gamepad internal name id**/
	@:native("GetGamepadName") static function GetGamepadName(gamepad:Int32):ConstCharStar;

	/**	Check if a gamepad button has been pressed once**/
	@:native("IsGamepadButtonPressed") static function IsGamepadButtonPressed(gamepad:Int32, button:Int32):Bool;

	/**	Check if a gamepad button is being pressed**/
	@:native("IsGamepadButtonDown") static function IsGamepadButtonDown(gamepad:Int32, button:Int32):Bool;

	/**	Check if a gamepad button has been released once**/
	@:native("IsGamepadButtonReleased") static function IsGamepadButtonReleased(gamepad:Int32, button:Int32):Bool;

	/**	Check if a gamepad button is NOT being pressed**/
	@:native("IsGamepadButtonUp") static function IsGamepadButtonUp(gamepad:Int32, button:Int32):Bool;

	/**	Get the last gamepad button pressed**/
	@:native("GetGamepadButtonPressed") static function GetGamepadButtonPressed():Int32;

	/**	Get gamepad axis count for a gamepad**/
	@:native("GetGamepadAxisCount") static function GetGamepadAxisCount(gamepad:Int32):Int32;

	/**	Get axis movement value for a gamepad axis**/
	@:native("GetGamepadAxisMovement") static function GetGamepadAxisMovement(gamepad:Int32, axis:Int32):Float32;

	/**	Set internal gamepad mappings (SDL_GameControllerDB)**/
	@:native("SetGamepadMappings") static function SetGamepadMappings(mappings:ConstCharStar):Int32;

	/**	Check if a mouse button has been pressed once**/
	@:native("IsMouseButtonPressed") static function IsMouseButtonPressed(button:Int32):Bool;

	/**	Check if a mouse button is being pressed**/
	@:native("IsMouseButtonDown") static function IsMouseButtonDown(button:Int32):Bool;

	/**	Check if a mouse button has been released once**/
	@:native("IsMouseButtonReleased") static function IsMouseButtonReleased(button:Int32):Bool;

	/**	Check if a mouse button is NOT being pressed**/
	@:native("IsMouseButtonUp") static function IsMouseButtonUp(button:Int32):Bool;

	/**	Get mouse position X**/
	@:native("GetMouseX") static function GetMouseX():Int32;

	/**	Get mouse position Y**/
	@:native("GetMouseY") static function GetMouseY():Int32;

	/**	Get mouse position XY**/
	@:native("GetMousePosition") static function GetMousePosition():Vector2;

	/**	Get mouse delta between frames**/
	@:native("GetMouseDelta") static function GetMouseDelta():Vector2;

	/**	Set mouse position XY**/
	@:native("SetMousePosition") static function SetMousePosition(x:Int32, y:Int32):Void;

	/**	Set mouse offset**/
	@:native("SetMouseOffset") static function SetMouseOffset(offsetX:Int32, offsetY:Int32):Void;

	/**	Set mouse scaling**/
	@:native("SetMouseScale") static function SetMouseScale(scaleX:Float32, scaleY:Float32):Void;

	/**	Get mouse wheel movement Y**/
	@:native("GetMouseWheelMove") static function GetMouseWheelMove():Float32;

	/**	Set mouse cursor**/
	@:native("SetMouseCursor") static function SetMouseCursor(cursor:Int32):Void;

	/**	Get touch position X for touch point 0 (relative to screen size)**/
	@:native("GetTouchX") static function GetTouchX():Int32;

	/**	Get touch position Y for touch point 0 (relative to screen size)**/
	@:native("GetTouchY") static function GetTouchY():Int32;

	/**	Get touch position XY for a touch point index (relative to screen size)**/
	@:native("GetTouchPosition") static function GetTouchPosition(index:Int32):Vector2;

	/**	Get touch point identifier for given index**/
	@:native("GetTouchPointId") static function GetTouchPointId(index:Int32):Int32;

	/**	Get number of touch points**/
	@:native("GetTouchPointCount") static function GetTouchPointCount():Int32;

	/**	Enable a set of gestures using flags**/
	@:native("SetGesturesEnabled") static function SetGesturesEnabled(flags:UInt32):Void;

	/**	Check if a gesture have been detected**/
	@:native("IsGestureDetected") static function IsGestureDetected(gesture:Int32):Bool;

	/**	Get latest detected gesture**/
	@:native("GetGestureDetected") static function GetGestureDetected():Int32;

	/**	Get gesture hold time in milliseconds**/
	@:native("GetGestureHoldDuration") static function GetGestureHoldDuration():Float32;

	/**	Get gesture drag vector**/
	@:native("GetGestureDragVector") static function GetGestureDragVector():Vector2;

	/**	Get gesture drag angle**/
	@:native("GetGestureDragAngle") static function GetGestureDragAngle():Float32;

	/**	Get gesture pinch delta**/
	@:native("GetGesturePinchVector") static function GetGesturePinchVector():Vector2;

	/**	Get gesture pinch angle**/
	@:native("GetGesturePinchAngle") static function GetGesturePinchAngle():Float32;

	/**	Set camera mode (multiple camera modes available)**/
	@:native("SetCameraMode") static function SetCameraMode(camera:Camera, mode:Int32):Void;

	/**	Update camera position for selected mode**/
	@:native("UpdateCamera") static function UpdateCamera(camera:Star<Camera>):Void;

	/**	Set camera pan key to combine with mouse movement (free camera)**/
	@:native("SetCameraPanControl") static function SetCameraPanControl(keyPan:Int32):Void;

	/**	Set camera alt key to combine with mouse movement (free camera)**/
	@:native("SetCameraAltControl") static function SetCameraAltControl(keyAlt:Int32):Void;

	/**	Set camera smooth zoom key to combine with mouse (free camera)**/
	@:native("SetCameraSmoothZoomControl") static function SetCameraSmoothZoomControl(keySmoothZoom:Int32):Void;

	/**	Set camera move controls (1st person and 3rd person cameras)**/
	@:native("SetCameraMoveControls") static function SetCameraMoveControls(keyFront:Int32, keyBack:Int32, keyRight:Int32, keyLeft:Int32, keyUp:Int32,
		keyDown:Int32):Void;

	/**	Set texture and rectangle to be used on shapes drawing**/
	@:native("SetShapesTexture") static function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;

	/**	Draw a pixel**/
	@:native("DrawPixel") static function DrawPixel(posX:Int32, posY:Int32, color:Color):Void;

	/**	Draw a pixel (Vector version)**/
	@:native("DrawPixelV") static function DrawPixelV(position:Vector2, color:Color):Void;

	/**	Draw a line**/
	@:native("DrawLine") static function DrawLine(startPosX:Int32, startPosY:Int32, endPosX:Int32, endPosY:Int32, color:Color):Void;

	/**	Draw a line (Vector version)**/
	@:native("DrawLineV") static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;

	/**	Draw a line defining thickness**/
	@:native("DrawLineEx") static function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float32, color:Color):Void;

	/**	Draw a line using cubic-bezier curves in-out**/
	@:native("DrawLineBezier") static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float32, color:Color):Void;

	/**	Draw line using quadratic bezier curves with a control point**/
	@:native("DrawLineBezierQuad") static function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float32, color:Color):Void;

	/**	Draw line using cubic bezier curves with 2 control points**/
	@:native("DrawLineBezierCubic") static function DrawLineBezierCubic(startPos:Vector2, endPos:Vector2, startControlPos:Vector2, endControlPos:Vector2,
		thick:Float32, color:Color):Void;

	/**	Draw lines sequence**/
	@:native("DrawLineStrip") static function DrawLineStrip(points:Star<Vector2>, pointCount:Int32, color:Color):Void;

	/**	Draw a color-filled circle**/
	@:native("DrawCircle") static function DrawCircle(centerX:Int32, centerY:Int32, radius:Float32, color:Color):Void;

	/**	Draw a piece of a circle**/
	@:native("DrawCircleSector") static function DrawCircleSector(center:Vector2, radius:Float32, startAngle:Float32, endAngle:Float32, segments:Int32,
		color:Color):Void;

	/**	Draw circle sector outline**/
	@:native("DrawCircleSectorLines") static function DrawCircleSectorLines(center:Vector2, radius:Float32, startAngle:Float32, endAngle:Float32,
		segments:Int32, color:Color):Void;

	/**	Draw a gradient-filled circle**/
	@:native("DrawCircleGradient") static function DrawCircleGradient(centerX:Int32, centerY:Int32, radius:Float32, color1:Color, color2:Color):Void;

	/**	Draw a color-filled circle (Vector version)**/
	@:native("DrawCircleV") static function DrawCircleV(center:Vector2, radius:Float32, color:Color):Void;

	/**	Draw circle outline**/
	@:native("DrawCircleLines") static function DrawCircleLines(centerX:Int32, centerY:Int32, radius:Float32, color:Color):Void;

	/**	Draw ellipse**/
	@:native("DrawEllipse") static function DrawEllipse(centerX:Int32, centerY:Int32, radiusH:Float32, radiusV:Float32, color:Color):Void;

	/**	Draw ellipse outline**/
	@:native("DrawEllipseLines") static function DrawEllipseLines(centerX:Int32, centerY:Int32, radiusH:Float32, radiusV:Float32, color:Color):Void;

	/**	Draw ring**/
	@:native("DrawRing") static function DrawRing(center:Vector2, innerRadius:Float32, outerRadius:Float32, startAngle:Float32, endAngle:Float32,
		segments:Int32, color:Color):Void;

	/**	Draw ring outline**/
	@:native("DrawRingLines") static function DrawRingLines(center:Vector2, innerRadius:Float32, outerRadius:Float32, startAngle:Float32, endAngle:Float32,
		segments:Int32, color:Color):Void;

	/**	Draw a color-filled rectangle**/
	@:native("DrawRectangle") static function DrawRectangle(posX:Int32, posY:Int32, width:Int32, height:Int32, color:Color):Void;

	/**	Draw a color-filled rectangle (Vector version)**/
	@:native("DrawRectangleV") static function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;

	/**	Draw a color-filled rectangle**/
	@:native("DrawRectangleRec") static function DrawRectangleRec(rec:Rectangle, color:Color):Void;

	/**	Draw a color-filled rectangle with pro parameters**/
	@:native("DrawRectanglePro") static function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float32, color:Color):Void;

	/**	Draw a vertical-gradient-filled rectangle**/
	@:native("DrawRectangleGradientV") static function DrawRectangleGradientV(posX:Int32, posY:Int32, width:Int32, height:Int32, color1:Color,
		color2:Color):Void;

	/**	Draw a horizontal-gradient-filled rectangle**/
	@:native("DrawRectangleGradientH") static function DrawRectangleGradientH(posX:Int32, posY:Int32, width:Int32, height:Int32, color1:Color,
		color2:Color):Void;

	/**	Draw a gradient-filled rectangle with custom vertex colors**/
	@:native("DrawRectangleGradientEx") static function DrawRectangleGradientEx(rec:Rectangle, col1:Color, col2:Color, col3:Color, col4:Color):Void;

	/**	Draw rectangle outline**/
	@:native("DrawRectangleLines") static function DrawRectangleLines(posX:Int32, posY:Int32, width:Int32, height:Int32, color:Color):Void;

	/**	Draw rectangle outline with extended parameters**/
	@:native("DrawRectangleLinesEx") static function DrawRectangleLinesEx(rec:Rectangle, lineThick:Float32, color:Color):Void;

	/**	Draw rectangle with rounded edges**/
	@:native("DrawRectangleRounded") static function DrawRectangleRounded(rec:Rectangle, roundness:Float32, segments:Int32, color:Color):Void;

	/**	Draw rectangle with rounded edges outline**/
	@:native("DrawRectangleRoundedLines") static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float32, segments:Int32, lineThick:Float32,
		color:Color):Void;

	/**	Draw a color-filled triangle (vertex in counter-clockwise order!)**/
	@:native("DrawTriangle") static function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	/**	Draw triangle outline (vertex in counter-clockwise order!)**/
	@:native("DrawTriangleLines") static function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

	/**	Draw a triangle fan defined by points (first vertex is the center)**/
	@:native("DrawTriangleFan") static function DrawTriangleFan(points:Star<Vector2>, pointCount:Int32, color:Color):Void;

	/**	Draw a triangle strip defined by points**/
	@:native("DrawTriangleStrip") static function DrawTriangleStrip(points:Star<Vector2>, pointCount:Int32, color:Color):Void;

	/**	Draw a regular polygon (Vector version)**/
	@:native("DrawPoly") static function DrawPoly(center:Vector2, sides:Int32, radius:Float32, rotation:Float32, color:Color):Void;

	/**	Draw a polygon outline of n sides**/
	@:native("DrawPolyLines") static function DrawPolyLines(center:Vector2, sides:Int32, radius:Float32, rotation:Float32, color:Color):Void;

	/**	Draw a polygon outline of n sides with extended parameters**/
	@:native("DrawPolyLinesEx") static function DrawPolyLinesEx(center:Vector2, sides:Int32, radius:Float32, rotation:Float32, lineThick:Float32,
		color:Color):Void;

	/**	Check collision between two rectangles**/
	@:native("CheckCollisionRecs") static function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;

	/**	Check collision between two circles**/
	@:native("CheckCollisionCircles") static function CheckCollisionCircles(center1:Vector2, radius1:Float32, center2:Vector2, radius2:Float32):Bool;

	/**	Check collision between circle and rectangle**/
	@:native("CheckCollisionCircleRec") static function CheckCollisionCircleRec(center:Vector2, radius:Float32, rec:Rectangle):Bool;

	/**	Check if point is inside rectangle**/
	@:native("CheckCollisionPointRec") static function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;

	/**	Check if point is inside circle**/
	@:native("CheckCollisionPointCircle") static function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float32):Bool;

	/**	Check if point is inside a triangle**/
	@:native("CheckCollisionPointTriangle") static function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;

	/**	Check the collision between two lines defined by two points each, returns collision point by reference**/
	@:native("CheckCollisionLines") static function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2,
		collisionPoint:Star<Vector2>):Bool;

	/**	Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]**/
	@:native("CheckCollisionPointLine") static function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int32):Bool;

	/**	Get collision rectangle for two rectangles collision**/
	@:native("GetCollisionRec") static function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

	/**	Load image from file into CPU memory (RAM)**/
	@:native("LoadImage") static function LoadImage(fileName:ConstCharStar):Image;

	/**	Load image from RAW file data**/
	@:native("LoadImageRaw") static function LoadImageRaw(fileName:ConstCharStar, width:Int32, height:Int32, format:Int32, headerSize:Int32):Image;

	/**	Load image sequence from file (frames appended to image.data)**/
	@:native("LoadImageAnim") static function LoadImageAnim(fileName:ConstCharStar, frames:Star<Int32>):Image;

	/**	Load image from memory buffer, fileType refers to extension: i.e. '.png'**/
	@:native("LoadImageFromMemory") static function LoadImageFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int32):Image;

	/**	Load image from GPU texture data**/
	@:native("LoadImageFromTexture") static function LoadImageFromTexture(texture:Texture2D):Image;

	/**	Load image from screen buffer and (screenshot)**/
	@:native("LoadImageFromScreen") static function LoadImageFromScreen():Image;

	/**	Unload image from CPU memory (RAM)**/
	@:native("UnloadImage") static function UnloadImage(image:Image):Void;

	/**	Export image data to file, returns true on success**/
	@:native("ExportImage") static function ExportImage(image:Image, fileName:ConstCharStar):Bool;

	/**	Export image as code file defining an array of bytes, returns true on success**/
	@:native("ExportImageAsCode") static function ExportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

	/**	Generate image: plain color**/
	@:native("GenImageColor") static function GenImageColor(width:Int32, height:Int32, color:Color):Image;

	/**	Generate image: vertical gradient**/
	@:native("GenImageGradientV") static function GenImageGradientV(width:Int32, height:Int32, top:Color, bottom:Color):Image;

	/**	Generate image: horizontal gradient**/
	@:native("GenImageGradientH") static function GenImageGradientH(width:Int32, height:Int32, left:Color, right:Color):Image;

	/**	Generate image: radial gradient**/
	@:native("GenImageGradientRadial") static function GenImageGradientRadial(width:Int32, height:Int32, density:Float32, inner:Color, outer:Color):Image;

	/**	Generate image: checked**/
	@:native("GenImageChecked") static function GenImageChecked(width:Int32, height:Int32, checksX:Int32, checksY:Int32, col1:Color, col2:Color):Image;

	/**	Generate image: white noise**/
	@:native("GenImageWhiteNoise") static function GenImageWhiteNoise(width:Int32, height:Int32, factor:Float32):Image;

	/**	Generate image: cellular algorithm, bigger tileSize means bigger cells**/
	@:native("GenImageCellular") static function GenImageCellular(width:Int32, height:Int32, tileSize:Int32):Image;

	/**	Create an image duplicate (useful for transformations)**/
	@:native("ImageCopy") static function ImageCopy(image:Image):Image;

	/**	Create an image from another image piece**/
	@:native("ImageFromImage") static function ImageFromImage(image:Image, rec:Rectangle):Image;

	/**	Create an image from text (default font)**/
	@:native("ImageText") static function ImageText(text:ConstCharStar, fontSize:Int32, color:Color):Image;

	/**	Create an image from text (custom sprite font)**/
	@:native("ImageTextEx") static function ImageTextEx(font:Font, text:ConstCharStar, fontSize:Float32, spacing:Float32, tint:Color):Image;

	/**	Convert image data to desired format**/
	@:native("ImageFormat") static function ImageFormat(image:Star<Image>, newFormat:Int32):Void;

	/**	Convert image to POT (power-of-two)**/
	@:native("ImageToPOT") static function ImageToPOT(image:Star<Image>, fill:Color):Void;

	/**	Crop an image to a defined rectangle**/
	@:native("ImageCrop") static function ImageCrop(image:Star<Image>, crop:Rectangle):Void;

	/**	Crop image depending on alpha value**/
	@:native("ImageAlphaCrop") static function ImageAlphaCrop(image:Star<Image>, threshold:Float32):Void;

	/**	Clear alpha channel to desired color**/
	@:native("ImageAlphaClear") static function ImageAlphaClear(image:Star<Image>, color:Color, threshold:Float32):Void;

	/**	Apply alpha mask to image**/
	@:native("ImageAlphaMask") static function ImageAlphaMask(image:Star<Image>, alphaMask:Image):Void;

	/**	Premultiply alpha channel**/
	@:native("ImageAlphaPremultiply") static function ImageAlphaPremultiply(image:Star<Image>):Void;

	/**	Resize image (Bicubic scaling algorithm)**/
	@:native("ImageResize") static function ImageResize(image:Star<Image>, newWidth:Int32, newHeight:Int32):Void;

	/**	Resize image (Nearest-Neighbor scaling algorithm)**/
	@:native("ImageResizeNN") static function ImageResizeNN(image:Star<Image>, newWidth:Int32, newHeight:Int32):Void;

	/**	Resize canvas and fill with color**/
	@:native("ImageResizeCanvas") static function ImageResizeCanvas(image:Star<Image>, newWidth:Int32, newHeight:Int32, offsetX:Int32, offsetY:Int32,
		fill:Color):Void;

	/**	Compute all mipmap levels for a provided image**/
	@:native("ImageMipmaps") static function ImageMipmaps(image:Star<Image>):Void;

	/**	Dither image data to 16bpp or lower (Floyd-Steinberg dithering)**/
	@:native("ImageDither") static function ImageDither(image:Star<Image>, rBpp:Int32, gBpp:Int32, bBpp:Int32, aBpp:Int32):Void;

	/**	Flip image vertically**/
	@:native("ImageFlipVertical") static function ImageFlipVertical(image:Star<Image>):Void;

	/**	Flip image horizontally**/
	@:native("ImageFlipHorizontal") static function ImageFlipHorizontal(image:Star<Image>):Void;

	/**	Rotate image clockwise 90deg**/
	@:native("ImageRotateCW") static function ImageRotateCW(image:Star<Image>):Void;

	/**	Rotate image counter-clockwise 90deg**/
	@:native("ImageRotateCCW") static function ImageRotateCCW(image:Star<Image>):Void;

	/**	Modify image color: tint**/
	@:native("ImageColorTint") static function ImageColorTint(image:Star<Image>, color:Color):Void;

	/**	Modify image color: invert**/
	@:native("ImageColorInvert") static function ImageColorInvert(image:Star<Image>):Void;

	/**	Modify image color: grayscale**/
	@:native("ImageColorGrayscale") static function ImageColorGrayscale(image:Star<Image>):Void;

	/**	Modify image color: contrast (-100 to 100)**/
	@:native("ImageColorContrast") static function ImageColorContrast(image:Star<Image>, contrast:Float32):Void;

	/**	Modify image color: brightness (-255 to 255)**/
	@:native("ImageColorBrightness") static function ImageColorBrightness(image:Star<Image>, brightness:Int32):Void;

	/**	Modify image color: replace color**/
	@:native("ImageColorReplace") static function ImageColorReplace(image:Star<Image>, color:Color, replace:Color):Void;

	/**	Load color data from image as a Color array (RGBA - 32bit)**/
	@:native("LoadImageColors") static function LoadImageColors(image:Image):Star<Color>;

	/**	Load colors palette from image as a Color array (RGBA - 32bit)**/
	@:native("LoadImagePalette") static function LoadImagePalette(image:Image, maxPaletteSize:Int32, colorCount:Star<Int32>):Star<Color>;

	/**	Unload color data loaded with LoadImageColors()**/
	@:native("UnloadImageColors") static function UnloadImageColors(colors:Star<Color>):Void;

	/**	Unload colors palette loaded with LoadImagePalette()**/
	@:native("UnloadImagePalette") static function UnloadImagePalette(colors:Star<Color>):Void;

	/**	Get image alpha border rectangle**/
	@:native("GetImageAlphaBorder") static function GetImageAlphaBorder(image:Image, threshold:Float32):Rectangle;

	/**	Get image pixel color at (x, y) position**/
	@:native("GetImageColor") static function GetImageColor(image:Image, x:Int32, y:Int32):Color;

	/**	Clear image background with given color**/
	@:native("ImageClearBackground") static function ImageClearBackground(dst:Star<Image>, color:Color):Void;

	/**	Draw pixel within an image**/
	@:native("ImageDrawPixel") static function ImageDrawPixel(dst:Star<Image>, posX:Int32, posY:Int32, color:Color):Void;

	/**	Draw pixel within an image (Vector version)**/
	@:native("ImageDrawPixelV") static function ImageDrawPixelV(dst:Star<Image>, position:Vector2, color:Color):Void;

	/**	Draw line within an image**/
	@:native("ImageDrawLine") static function ImageDrawLine(dst:Star<Image>, startPosX:Int32, startPosY:Int32, endPosX:Int32, endPosY:Int32, color:Color):Void;

	/**	Draw line within an image (Vector version)**/
	@:native("ImageDrawLineV") static function ImageDrawLineV(dst:Star<Image>, start:Vector2, end:Vector2, color:Color):Void;

	/**	Draw circle within an image**/
	@:native("ImageDrawCircle") static function ImageDrawCircle(dst:Star<Image>, centerX:Int32, centerY:Int32, radius:Int32, color:Color):Void;

	/**	Draw circle within an image (Vector version)**/
	@:native("ImageDrawCircleV") static function ImageDrawCircleV(dst:Star<Image>, center:Vector2, radius:Int32, color:Color):Void;

	/**	Draw rectangle within an image**/
	@:native("ImageDrawRectangle") static function ImageDrawRectangle(dst:Star<Image>, posX:Int32, posY:Int32, width:Int32, height:Int32, color:Color):Void;

	/**	Draw rectangle within an image (Vector version)**/
	@:native("ImageDrawRectangleV") static function ImageDrawRectangleV(dst:Star<Image>, position:Vector2, size:Vector2, color:Color):Void;

	/**	Draw rectangle within an image**/
	@:native("ImageDrawRectangleRec") static function ImageDrawRectangleRec(dst:Star<Image>, rec:Rectangle, color:Color):Void;

	/**	Draw rectangle lines within an image**/
	@:native("ImageDrawRectangleLines") static function ImageDrawRectangleLines(dst:Star<Image>, rec:Rectangle, thick:Int32, color:Color):Void;

	/**	Draw a source image within a destination image (tint applied to source)**/
	@:native("ImageDraw") static function ImageDraw(dst:Star<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;

	/**	Draw text (using default font) within an image (destination)**/
	@:native("ImageDrawText") static function ImageDrawText(dst:Star<Image>, text:ConstCharStar, posX:Int32, posY:Int32, fontSize:Int32, color:Color):Void;

	/**	Draw text (custom sprite font) within an image (destination)**/
	@:native("ImageDrawTextEx") static function ImageDrawTextEx(dst:Star<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Float32,
		spacing:Float32, tint:Color):Void;

	/**	Load texture from file into GPU memory (VRAM)**/
	@:native("LoadTexture") static function LoadTexture(fileName:ConstCharStar):Texture2D;

	/**	Load texture from image data**/
	@:native("LoadTextureFromImage") static function LoadTextureFromImage(image:Image):Texture2D;

	/**	Load cubemap from image, multiple image cubemap layouts supported**/
	@:native("LoadTextureCubemap") static function LoadTextureCubemap(image:Image, layout:Int32):TextureCubemap;

	/**	Load texture for rendering (framebuffer)**/
	@:native("LoadRenderTexture") static function LoadRenderTexture(width:Int32, height:Int32):RenderTexture2D;

	/**	Unload texture from GPU memory (VRAM)**/
	@:native("UnloadTexture") static function UnloadTexture(texture:Texture2D):Void;

	/**	Unload render texture from GPU memory (VRAM)**/
	@:native("UnloadRenderTexture") static function UnloadRenderTexture(target:RenderTexture2D):Void;

	/**	Update GPU texture with new data**/
	@:native("UpdateTexture") static function UpdateTexture(texture:Texture2D, pixels:ConstStar<Void>):Void;

	/**	Update GPU texture rectangle with new data**/
	@:native("UpdateTextureRec") static function UpdateTextureRec(texture:Texture2D, rec:Rectangle, pixels:ConstStar<Void>):Void;

	/**	Generate GPU mipmaps for a texture**/
	@:native("GenTextureMipmaps") static function GenTextureMipmaps(texture:Star<Texture2D>):Void;

	/**	Set texture scaling filter mode**/
	@:native("SetTextureFilter") static function SetTextureFilter(texture:Texture2D, filter:Int32):Void;

	/**	Set texture wrapping mode**/
	@:native("SetTextureWrap") static function SetTextureWrap(texture:Texture2D, wrap:Int32):Void;

	/**	Draw a Texture2D**/
	@:native("DrawTexture") static function DrawTexture(texture:Texture2D, posX:Int32, posY:Int32, tint:Color):Void;

	/**	Draw a Texture2D with position defined as Vector2**/
	@:native("DrawTextureV") static function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;

	/**	Draw a Texture2D with extended parameters**/
	@:native("DrawTextureEx") static function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float32, scale:Float32, tint:Color):Void;

	/**	Draw a part of a texture defined by a rectangle**/
	@:native("DrawTextureRec") static function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;

	/**	Draw texture quad with tiling and offset parameters**/
	@:native("DrawTextureQuad") static function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;

	/**	Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.**/
	@:native("DrawTextureTiled") static function DrawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float32,
		scale:Float32, tint:Color):Void;

	/**	Draw a part of a texture defined by a rectangle with 'pro' parameters**/
	@:native("DrawTexturePro") static function DrawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float32,
		tint:Color):Void;

	/**	Draws a texture (or part of it) that stretches or shrinks nicely**/
	@:native("DrawTextureNPatch") static function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2,
		rotation:Float32, tint:Color):Void;

	/**	Draw a textured polygon**/
	@:native("DrawTexturePoly") static function DrawTexturePoly(texture:Texture2D, center:Vector2, points:Star<Vector2>, texcoords:Star<Vector2>,
		pointCount:Int32, tint:Color):Void;

	/**	Get color with alpha applied, alpha goes from 0.0f to 1.0f**/
	@:native("Fade") static function Fade(color:Color, alpha:Float32):Color;

	/**	Get hexadecimal value for a Color**/
	@:native("ColorToInt") static function ColorToInt(color:Color):Int32;

	/**	Get Color normalized as float [0..1]**/
	@:native("ColorNormalize") static function ColorNormalize(color:Color):Vector4;

	/**	Get Color from normalized values [0..1]**/
	@:native("ColorFromNormalized") static function ColorFromNormalized(normalized:Vector4):Color;

	/**	Get HSV values for a Color, hue [0..360], saturation/value [0..1]**/
	@:native("ColorToHSV") static function ColorToHSV(color:Color):Vector3;

	/**	Get a Color from HSV values, hue [0..360], saturation/value [0..1]**/
	@:native("ColorFromHSV") static function ColorFromHSV(hue:Float32, saturation:Float32, value:Float32):Color;

	/**	Get color with alpha applied, alpha goes from 0.0f to 1.0f**/
	@:native("ColorAlpha") static function ColorAlpha(color:Color, alpha:Float32):Color;

	/**	Get src alpha-blended into dst color with tint**/
	@:native("ColorAlphaBlend") static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;

	/**	Get Color structure from hexadecimal value**/
	@:native("GetColor") static function GetColor(hexValue:UInt32):Color;

	/**	Get Color from a source pixel pointer of certain format**/
	@:native("GetPixelColor") static function GetPixelColor(srcPtr:Star<Void>, format:Int32):Color;

	/**	Set color formatted into destination pixel pointer**/
	@:native("SetPixelColor") static function SetPixelColor(dstPtr:Star<Void>, color:Color, format:Int32):Void;

	/**	Get pixel data size in bytes for certain format**/
	@:native("GetPixelDataSize") static function GetPixelDataSize(width:Int32, height:Int32, format:Int32):Int32;

	/**	Get the default Font**/
	@:native("GetFontDefault") static function GetFontDefault():Font;

	/**	Load font from file into GPU memory (VRAM)**/
	@:native("LoadFont") static function LoadFont(fileName:ConstCharStar):Font;

	/**	Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set**/
	@:native("LoadFontEx") static function LoadFontEx(fileName:ConstCharStar, fontSize:Int32, fontChars:Star<Int32>, glyphCount:Int32):Font;

	/**	Load font from Image (XNA style)**/
	@:native("LoadFontFromImage") static function LoadFontFromImage(image:Image, key:Color, firstChar:Int32):Font;

	/**	Load font from memory buffer, fileType refers to extension: i.e. '.ttf'**/
	@:native("LoadFontFromMemory") static function LoadFontFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int32, fontSize:Int32,
		fontChars:Star<Int32>, glyphCount:Int32):Font;

	/**	Load font data for further use**/
	@:native("LoadFontData") static function LoadFontData(fileData:Star<UInt8>, dataSize:Int32, fontSize:Int32, fontChars:Star<Int32>, glyphCount:Int32,
		type:Int32):Star<GlyphInfo>;

	/**	Generate image font atlas using chars info**/
	@:native("GenImageFontAtlas") static function GenImageFontAtlas(chars:ConstStar<GlyphInfo>, recs:Star<Star<Rectangle>>, glyphCount:Int32, fontSize:Int32,
		padding:Int32, packMethod:Int32):Image;

	/**	Unload font chars info data (RAM)**/
	@:native("UnloadFontData") static function UnloadFontData(chars:Star<GlyphInfo>, glyphCount:Int32):Void;

	/**	Unload font from GPU memory (VRAM)**/
	@:native("UnloadFont") static function UnloadFont(font:Font):Void;

	/**	Export font as code file, returns true on success**/
	@:native("ExportFontAsCode") static function ExportFontAsCode(font:Font, fileName:ConstCharStar):Bool;

	/**	Draw current FPS**/
	@:native("DrawFPS") static function DrawFPS(posX:Int32, posY:Int32):Void;

	/**	Draw text (using default font)**/
	@:native("DrawText") static function DrawText(text:ConstCharStar, posX:Int32, posY:Int32, fontSize:Int32, color:Color):Void;

	/**	Draw text using font and additional parameters**/
	@:native("DrawTextEx") static function DrawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Float32, spacing:Float32, tint:Color):Void;

	/**	Draw text using Font and pro parameters (rotation)**/
	@:native("DrawTextPro") static function DrawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, rotation:Float32, fontSize:Float32,
		spacing:Float32, tint:Color):Void;

	/**	Draw one character (codepoint)**/
	@:native("DrawTextCodepoint") static function DrawTextCodepoint(font:Font, codepoint:Int32, position:Vector2, fontSize:Float32, tint:Color):Void;

	/**	Draw multiple character (codepoint)**/
	@:native("DrawTextCodepoints") static function DrawTextCodepoints(font:Font, codepoints:ConstStar<Int32>, count:Int32, position:Vector2, fontSize:Float32,
		spacing:Float32, tint:Color):Void;

	/**	Measure string width for default font**/
	@:native("MeasureText") static function MeasureText(text:ConstCharStar, fontSize:Int32):Int32;

	/**	Measure string size for Font**/
	@:native("MeasureTextEx") static function MeasureTextEx(font:Font, text:ConstCharStar, fontSize:Float32, spacing:Float32):Vector2;

	/**	Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found**/
	@:native("GetGlyphIndex") static function GetGlyphIndex(font:Font, codepoint:Int32):Int32;

	/**	Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found**/
	@:native("GetGlyphInfo") static function GetGlyphInfo(font:Font, codepoint:Int32):GlyphInfo;

	/**	Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found**/
	@:native("GetGlyphAtlasRec") static function GetGlyphAtlasRec(font:Font, codepoint:Int32):Rectangle;

	/**	Load all codepoints from a UTF-8 text string, codepoints count returned by parameter**/
	@:native("LoadCodepoints") static function LoadCodepoints(text:ConstCharStar, count:Star<Int32>):Star<Int32>;

	/**	Unload codepoints data from memory**/
	@:native("UnloadCodepoints") static function UnloadCodepoints(codepoints:Star<Int32>):Void;

	/**	Get total number of codepoints in a UTF-8 encoded string**/
	@:native("GetCodepointCount") static function GetCodepointCount(text:ConstCharStar):Int32;

	/**	Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure**/
	@:native("GetCodepoint") static function GetCodepoint(text:ConstCharStar, bytesProcessed:Star<Int32>):Int32;

	/**	Encode one codepoint into UTF-8 byte array (array length returned as parameter)**/
	@:native("CodepointToUTF8") static function CodepointToUTF8(codepoint:Int32, byteSize:Star<Int32>):ConstCharStar;

	/**	Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)**/
	@:native("TextCodepointsToUTF8") static function TextCodepointsToUTF8(codepoints:ConstStar<Int32>, length:Int32):Star<Char>;

	/**	Copy one string to another, returns bytes copied**/
	@:native("TextCopy") static function TextCopy(dst:Star<Char>, src:ConstCharStar):Int32;

	/**	Check if two text string are equal**/
	@:native("TextIsEqual") static function TextIsEqual(text1:ConstCharStar, text2:ConstCharStar):Bool;

	/**	Get text length, checks for '\0' ending**/
	@:native("TextLength") static function TextLength(text:ConstCharStar):UInt32;

	/**	Text formatting with variables (sprintf() style)**/
	@:native("TextFormat") static function TextFormat(text:ConstCharStar, args:Rest<Any>):ConstCharStar;

	/**	Get a piece of a text string**/
	@:native("TextSubtext") static function TextSubtext(text:ConstCharStar, position:Int32, length:Int32):ConstCharStar;

	/**	Replace text string (WARNING: memory must be freed!)**/
	@:native("TextReplace") static function TextReplace(text:Star<Char>, replace:ConstCharStar, by:ConstCharStar):Star<Char>;

	/**	Insert text in a position (WARNING: memory must be freed!)**/
	@:native("TextInsert") static function TextInsert(text:ConstCharStar, insert:ConstCharStar, position:Int32):Star<Char>;

	/**	Join text strings with delimiter**/
	@:native("TextJoin") static function TextJoin(textList:Star<ConstCharStar>, count:Int32, delimiter:ConstCharStar):ConstCharStar;

	/**	Split text into multiple strings**/
	@:native("TextSplit") static function TextSplit(text:ConstCharStar, delimiter:Char, count:Star<Int32>):Star<ConstCharStar>;

	/**	Append text at specific position and move cursor!**/
	@:native("TextAppend") static function TextAppend(text:Star<Char>, append:ConstCharStar, position:Star<Int32>):Void;

	/**	Find first text occurrence within a string**/
	@:native("TextFindIndex") static function TextFindIndex(text:ConstCharStar, find:ConstCharStar):Int32;

	/**	Get upper case version of provided string**/
	@:native("TextToUpper") static function TextToUpper(text:ConstCharStar):ConstCharStar;

	/**	Get lower case version of provided string**/
	@:native("TextToLower") static function TextToLower(text:ConstCharStar):ConstCharStar;

	/**	Get Pascal case notation version of provided string**/
	@:native("TextToPascal") static function TextToPascal(text:ConstCharStar):ConstCharStar;

	/**	Get integer value from text (negative values not supported)**/
	@:native("TextToInteger") static function TextToInteger(text:ConstCharStar):Int32;

	/**	Draw a line in 3D world space**/
	@:native("DrawLine3D") static function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;

	/**	Draw a point in 3D space, actually a small line**/
	@:native("DrawPoint3D") static function DrawPoint3D(position:Vector3, color:Color):Void;

	/**	Draw a circle in 3D world space**/
	@:native("DrawCircle3D") static function DrawCircle3D(center:Vector3, radius:Float32, rotationAxis:Vector3, rotationAngle:Float32, color:Color):Void;

	/**	Draw a color-filled triangle (vertex in counter-clockwise order!)**/
	@:native("DrawTriangle3D") static function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;

	/**	Draw a triangle strip defined by points**/
	@:native("DrawTriangleStrip3D") static function DrawTriangleStrip3D(points:Star<Vector3>, pointCount:Int32, color:Color):Void;

	/**	Draw cube**/
	@:native("DrawCube") static function DrawCube(position:Vector3, width:Float32, height:Float32, length:Float32, color:Color):Void;

	/**	Draw cube (Vector version)**/
	@:native("DrawCubeV") static function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;

	/**	Draw cube wires**/
	@:native("DrawCubeWires") static function DrawCubeWires(position:Vector3, width:Float32, height:Float32, length:Float32, color:Color):Void;

	/**	Draw cube wires (Vector version)**/
	@:native("DrawCubeWiresV") static function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;

	/**	Draw cube textured**/
	@:native("DrawCubeTexture") static function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float32, height:Float32, length:Float32,
		color:Color):Void;

	/**	Draw cube with a region of a texture**/
	@:native("DrawCubeTextureRec") static function DrawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float32, height:Float32,
		length:Float32, color:Color):Void;

	/**	Draw sphere**/
	@:native("DrawSphere") static function DrawSphere(centerPos:Vector3, radius:Float32, color:Color):Void;

	/**	Draw sphere with extended parameters**/
	@:native("DrawSphereEx") static function DrawSphereEx(centerPos:Vector3, radius:Float32, rings:Int32, slices:Int32, color:Color):Void;

	/**	Draw sphere wires**/
	@:native("DrawSphereWires") static function DrawSphereWires(centerPos:Vector3, radius:Float32, rings:Int32, slices:Int32, color:Color):Void;

	/**	Draw a cylinder/cone**/
	@:native("DrawCylinder") static function DrawCylinder(position:Vector3, radiusTop:Float32, radiusBottom:Float32, height:Float32, slices:Int32,
		color:Color):Void;

	/**	Draw a cylinder with base at startPos and top at endPos**/
	@:native("DrawCylinderEx") static function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float32, endRadius:Float32, sides:Int32,
		color:Color):Void;

	/**	Draw a cylinder/cone wires**/
	@:native("DrawCylinderWires") static function DrawCylinderWires(position:Vector3, radiusTop:Float32, radiusBottom:Float32, height:Float32, slices:Int32,
		color:Color):Void;

	/**	Draw a cylinder wires with base at startPos and top at endPos**/
	@:native("DrawCylinderWiresEx") static function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float32, endRadius:Float32, sides:Int32,
		color:Color):Void;

	/**	Draw a plane XZ**/
	@:native("DrawPlane") static function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;

	/**	Draw a ray line**/
	@:native("DrawRay") static function DrawRay(ray:Ray, color:Color):Void;

	/**	Draw a grid (centered at (0, 0, 0))**/
	@:native("DrawGrid") static function DrawGrid(slices:Int32, spacing:Float32):Void;

	/**	Load model from files (meshes and materials)**/
	@:native("LoadModel") static function LoadModel(fileName:ConstCharStar):Model;

	/**	Load model from generated mesh (default material)**/
	@:native("LoadModelFromMesh") static function LoadModelFromMesh(mesh:Mesh):Model;

	/**	Unload model (including meshes) from memory (RAM and/or VRAM)**/
	@:native("UnloadModel") static function UnloadModel(model:Model):Void;

	/**	Unload model (but not meshes) from memory (RAM and/or VRAM)**/
	@:native("UnloadModelKeepMeshes") static function UnloadModelKeepMeshes(model:Model):Void;

	/**	Compute model bounding box limits (considers all meshes)**/
	@:native("GetModelBoundingBox") static function GetModelBoundingBox(model:Model):BoundingBox;

	/**	Draw a model (with texture if set)**/
	@:native("DrawModel") static function DrawModel(model:Model, position:Vector3, scale:Float32, tint:Color):Void;

	/**	Draw a model with extended parameters**/
	@:native("DrawModelEx") static function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float32, scale:Vector3,
		tint:Color):Void;

	/**	Draw a model wires (with texture if set)**/
	@:native("DrawModelWires") static function DrawModelWires(model:Model, position:Vector3, scale:Float32, tint:Color):Void;

	/**	Draw a model wires (with texture if set) with extended parameters**/
	@:native("DrawModelWiresEx") static function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float32, scale:Vector3,
		tint:Color):Void;

	/**	Draw bounding box (wires)**/
	@:native("DrawBoundingBox") static function DrawBoundingBox(box:BoundingBox, color:Color):Void;

	/**	Draw a billboard texture**/
	@:native("DrawBillboard") static function DrawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float32, tint:Color):Void;

	/**	Draw a billboard texture defined by source**/
	@:native("DrawBillboardRec") static function DrawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2,
		tint:Color):Void;

	/**	Draw a billboard texture defined by source and rotation**/
	@:native("DrawBillboardPro") static function DrawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3,
		size:Vector2, origin:Vector2, rotation:Float32, tint:Color):Void;

	/**	Upload mesh vertex data in GPU and provide VAO/VBO ids**/
	@:native("UploadMesh") static function UploadMesh(mesh:Star<Mesh>, dyn:Bool):Void;

	/**	Update mesh vertex data in GPU for a specific buffer index**/
	@:native("UpdateMeshBuffer") static function UpdateMeshBuffer(mesh:Mesh, index:Int32, data:ConstStar<Void>, dataSize:Int32, offset:Int32):Void;

	/**	Unload mesh data from CPU and GPU**/
	@:native("UnloadMesh") static function UnloadMesh(mesh:Mesh):Void;

	/**	Draw a 3d mesh with material and transform**/
	@:native("DrawMesh") static function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;

	/**	Draw multiple mesh instances with material and different transforms**/
	@:native("DrawMeshInstanced") static function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:ConstStar<Matrix>, instances:Int32):Void;

	/**	Export mesh data to file, returns true on success**/
	@:native("ExportMesh") static function ExportMesh(mesh:Mesh, fileName:ConstCharStar):Bool;

	/**	Compute mesh bounding box limits**/
	@:native("GetMeshBoundingBox") static function GetMeshBoundingBox(mesh:Mesh):BoundingBox;

	/**	Compute mesh tangents**/
	@:native("GenMeshTangents") static function GenMeshTangents(mesh:Star<Mesh>):Void;

	/**	Compute mesh binormals**/
	@:native("GenMeshBinormals") static function GenMeshBinormals(mesh:Star<Mesh>):Void;

	/**	Generate polygonal mesh**/
	@:native("GenMeshPoly") static function GenMeshPoly(sides:Int32, radius:Float32):Mesh;

	/**	Generate plane mesh (with subdivisions)**/
	@:native("GenMeshPlane") static function GenMeshPlane(width:Float32, length:Float32, resX:Int32, resZ:Int32):Mesh;

	/**	Generate cuboid mesh**/
	@:native("GenMeshCube") static function GenMeshCube(width:Float32, height:Float32, length:Float32):Mesh;

	/**	Generate sphere mesh (standard sphere)**/
	@:native("GenMeshSphere") static function GenMeshSphere(radius:Float32, rings:Int32, slices:Int32):Mesh;

	/**	Generate half-sphere mesh (no bottom cap)**/
	@:native("GenMeshHemiSphere") static function GenMeshHemiSphere(radius:Float32, rings:Int32, slices:Int32):Mesh;

	/**	Generate cylinder mesh**/
	@:native("GenMeshCylinder") static function GenMeshCylinder(radius:Float32, height:Float32, slices:Int32):Mesh;

	/**	Generate cone/pyramid mesh**/
	@:native("GenMeshCone") static function GenMeshCone(radius:Float32, height:Float32, slices:Int32):Mesh;

	/**	Generate torus mesh**/
	@:native("GenMeshTorus") static function GenMeshTorus(radius:Float32, size:Float32, radSeg:Int32, sides:Int32):Mesh;

	/**	Generate trefoil knot mesh**/
	@:native("GenMeshKnot") static function GenMeshKnot(radius:Float32, size:Float32, radSeg:Int32, sides:Int32):Mesh;

	/**	Generate heightmap mesh from image data**/
	@:native("GenMeshHeightmap") static function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh;

	/**	Generate cubes-based map mesh from image data**/
	@:native("GenMeshCubicmap") static function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh;

	/**	Load materials from model file**/
	@:native("LoadMaterials") static function LoadMaterials(fileName:ConstCharStar, materialCount:Star<Int32>):Star<Material>;

	/**	Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)**/
	@:native("LoadMaterialDefault") static function LoadMaterialDefault():Material;

	/**	Unload material from GPU memory (VRAM)**/
	@:native("UnloadMaterial") static function UnloadMaterial(material:Material):Void;

	/**	Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)**/
	@:native("SetMaterialTexture") static function SetMaterialTexture(material:Star<Material>, mapType:Int32, texture:Texture2D):Void;

	/**	Set material for a mesh**/
	@:native("SetModelMeshMaterial") static function SetModelMeshMaterial(model:Star<Model>, meshId:Int32, materialId:Int32):Void;

	/**	Load model animations from file**/
	@:native("LoadModelAnimations") static function LoadModelAnimations(fileName:ConstCharStar, animCount:Star<UInt32>):Star<ModelAnimation>;

	/**	Update model animation pose**/
	@:native("UpdateModelAnimation") static function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int32):Void;

	/**	Unload animation data**/
	@:native("UnloadModelAnimation") static function UnloadModelAnimation(anim:ModelAnimation):Void;

	/**	Unload animation array data**/
	@:native("UnloadModelAnimations") static function UnloadModelAnimations(animations:Star<ModelAnimation>, count:UInt32):Void;

	/**	Check model animation skeleton match**/
	@:native("IsModelAnimationValid") static function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

	/**	Check collision between two spheres**/
	@:native("CheckCollisionSpheres") static function CheckCollisionSpheres(center1:Vector3, radius1:Float32, center2:Vector3, radius2:Float32):Bool;

	/**	Check collision between two bounding boxes**/
	@:native("CheckCollisionBoxes") static function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;

	/**	Check collision between box and sphere**/
	@:native("CheckCollisionBoxSphere") static function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float32):Bool;

	/**	Get collision info between ray and sphere**/
	@:native("GetRayCollisionSphere") static function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Float32):RayCollision;

	/**	Get collision info between ray and box**/
	@:native("GetRayCollisionBox") static function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;

	/**	Get collision info between ray and model**/
	@:native("GetRayCollisionModel") static function GetRayCollisionModel(ray:Ray, model:Model):RayCollision;

	/**	Get collision info between ray and mesh**/
	@:native("GetRayCollisionMesh") static function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;

	/**	Get collision info between ray and triangle**/
	@:native("GetRayCollisionTriangle") static function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;

	/**	Get collision info between ray and quad**/
	@:native("GetRayCollisionQuad") static function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;

	/**	Initialize audio device and context**/
	@:native("InitAudioDevice") static function InitAudioDevice():Void;

	/**	Close the audio device and context**/
	@:native("CloseAudioDevice") static function CloseAudioDevice():Void;

	/**	Check if audio device has been initialized successfully**/
	@:native("IsAudioDeviceReady") static function IsAudioDeviceReady():Bool;

	/**	Set master volume (listener)**/
	@:native("SetMasterVolume") static function SetMasterVolume(volume:Float32):Void;

	/**	Load wave data from file**/
	@:native("LoadWave") static function LoadWave(fileName:ConstCharStar):Wave;

	/**	Load wave from memory buffer, fileType refers to extension: i.e. '.wav'**/
	@:native("LoadWaveFromMemory") static function LoadWaveFromMemory(fileType:ConstCharStar, fileData:Star<UInt8>, dataSize:Int32):Wave;

	/**	Load sound from file**/
	@:native("LoadSound") static function LoadSound(fileName:ConstCharStar):Sound;

	/**	Load sound from wave data**/
	@:native("LoadSoundFromWave") static function LoadSoundFromWave(wave:Wave):Sound;

	/**	Update sound buffer with new data**/
	@:native("UpdateSound") static function UpdateSound(sound:Sound, data:ConstStar<Void>, sampleCount:Int32):Void;

	/**	Unload wave data**/
	@:native("UnloadWave") static function UnloadWave(wave:Wave):Void;

	/**	Unload sound**/
	@:native("UnloadSound") static function UnloadSound(sound:Sound):Void;

	/**	Export wave data to file, returns true on success**/
	@:native("ExportWave") static function ExportWave(wave:Wave, fileName:ConstCharStar):Bool;

	/**	Export wave sample data to code (.h), returns true on success**/
	@:native("ExportWaveAsCode") static function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

	/**	Play a sound**/
	@:native("PlaySound") static function PlaySound(sound:Sound):Void;

	/**	Stop playing a sound**/
	@:native("StopSound") static function StopSound(sound:Sound):Void;

	/**	Pause a sound**/
	@:native("PauseSound") static function PauseSound(sound:Sound):Void;

	/**	Resume a paused sound**/
	@:native("ResumeSound") static function ResumeSound(sound:Sound):Void;

	/**	Play a sound (using multichannel buffer pool)**/
	@:native("PlaySoundMulti") static function PlaySoundMulti(sound:Sound):Void;

	/**	Stop any sound playing (using multichannel buffer pool)**/
	@:native("StopSoundMulti") static function StopSoundMulti():Void;

	/**	Get number of sounds playing in the multichannel**/
	@:native("GetSoundsPlaying") static function GetSoundsPlaying():Int32;

	/**	Check if a sound is currently playing**/
	@:native("IsSoundPlaying") static function IsSoundPlaying(sound:Sound):Bool;

	/**	Set volume for a sound (1.0 is max level)**/
	@:native("SetSoundVolume") static function SetSoundVolume(sound:Sound, volume:Float32):Void;

	/**	Set pitch for a sound (1.0 is base level)**/
	@:native("SetSoundPitch") static function SetSoundPitch(sound:Sound, pitch:Float32):Void;

	/**	Set pan for a sound (0.5 is center)**/
	@:native("SetSoundPan") static function SetSoundPan(sound:Sound, pan:Float32):Void;

	/**	Copy a wave to a new wave**/
	@:native("WaveCopy") static function WaveCopy(wave:Wave):Wave;

	/**	Crop a wave to defined samples range**/
	@:native("WaveCrop") static function WaveCrop(wave:Star<Wave>, initSample:Int32, finalSample:Int32):Void;

	/**	Convert wave data to desired format**/
	@:native("WaveFormat") static function WaveFormat(wave:Star<Wave>, sampleRate:Int32, sampleSize:Int32, channels:Int32):Void;

	/**	Load samples data from wave as a 32bit float data array**/
	@:native("LoadWaveSamples") static function LoadWaveSamples(wave:Wave):Star<Float32>;

	/**	Unload samples data loaded with LoadWaveSamples()**/
	@:native("UnloadWaveSamples") static function UnloadWaveSamples(samples:Star<Float32>):Void;

	/**	Load music stream from file**/
	@:native("LoadMusicStream") static function LoadMusicStream(fileName:ConstCharStar):Music;

	/**	Load music stream from data**/
	@:native("LoadMusicStreamFromMemory") static function LoadMusicStreamFromMemory(fileType:ConstCharStar, data:Star<UInt8>, dataSize:Int32):Music;

	/**	Unload music stream**/
	@:native("UnloadMusicStream") static function UnloadMusicStream(music:Music):Void;

	/**	Start music playing**/
	@:native("PlayMusicStream") static function PlayMusicStream(music:Music):Void;

	/**	Check if music is playing**/
	@:native("IsMusicStreamPlaying") static function IsMusicStreamPlaying(music:Music):Bool;

	/**	Updates buffers for music streaming**/
	@:native("UpdateMusicStream") static function UpdateMusicStream(music:Music):Void;

	/**	Stop music playing**/
	@:native("StopMusicStream") static function StopMusicStream(music:Music):Void;

	/**	Pause music playing**/
	@:native("PauseMusicStream") static function PauseMusicStream(music:Music):Void;

	/**	Resume playing paused music**/
	@:native("ResumeMusicStream") static function ResumeMusicStream(music:Music):Void;

	/**	Seek music to a position (in seconds)**/
	@:native("SeekMusicStream") static function SeekMusicStream(music:Music, position:Float32):Void;

	/**	Set volume for music (1.0 is max level)**/
	@:native("SetMusicVolume") static function SetMusicVolume(music:Music, volume:Float32):Void;

	/**	Set pitch for a music (1.0 is base level)**/
	@:native("SetMusicPitch") static function SetMusicPitch(music:Music, pitch:Float32):Void;

	/**	Set pan for a music (0.5 is center)**/
	@:native("SetMusicPan") static function SetMusicPan(music:Music, pan:Float32):Void;

	/**	Get music time length (in seconds)**/
	@:native("GetMusicTimeLength") static function GetMusicTimeLength(music:Music):Float32;

	/**	Get current music time played (in seconds)**/
	@:native("GetMusicTimePlayed") static function GetMusicTimePlayed(music:Music):Float32;

	/**	Load audio stream (to stream raw audio pcm data)**/
	@:native("LoadAudioStream") static function LoadAudioStream(sampleRate:UInt32, sampleSize:UInt32, channels:UInt32):AudioStream;

	/**	Unload audio stream and free memory**/
	@:native("UnloadAudioStream") static function UnloadAudioStream(stream:AudioStream):Void;

	/**	Update audio stream buffers with data**/
	@:native("UpdateAudioStream") static function UpdateAudioStream(stream:AudioStream, data:ConstStar<Void>, frameCount:Int32):Void;

	/**	Check if any audio stream buffers requires refill**/
	@:native("IsAudioStreamProcessed") static function IsAudioStreamProcessed(stream:AudioStream):Bool;

	/**	Play audio stream**/
	@:native("PlayAudioStream") static function PlayAudioStream(stream:AudioStream):Void;

	/**	Pause audio stream**/
	@:native("PauseAudioStream") static function PauseAudioStream(stream:AudioStream):Void;

	/**	Resume audio stream**/
	@:native("ResumeAudioStream") static function ResumeAudioStream(stream:AudioStream):Void;

	/**	Check if audio stream is playing**/
	@:native("IsAudioStreamPlaying") static function IsAudioStreamPlaying(stream:AudioStream):Bool;

	/**	Stop audio stream**/
	@:native("StopAudioStream") static function StopAudioStream(stream:AudioStream):Void;

	/**	Set volume for audio stream (1.0 is max level)**/
	@:native("SetAudioStreamVolume") static function SetAudioStreamVolume(stream:AudioStream, volume:Float32):Void;

	/**	Set pitch for audio stream (1.0 is base level)**/
	@:native("SetAudioStreamPitch") static function SetAudioStreamPitch(stream:AudioStream, pitch:Float32):Void;

	/**	Set pan for audio stream (0.5 is centered)**/
	@:native("SetAudioStreamPan") static function SetAudioStreamPan(stream:AudioStream, pan:Float32):Void;

	/**	Default size for new audio streams**/
	@:native("SetAudioStreamBufferSizeDefault") static function SetAudioStreamBufferSizeDefault(size:Int32):Void;

	/** Attach audio stream processor to stream**/
	@:native("AttachAudioStreamProcessor") static function AttachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;

	/** Detach audio stream processor from stream**/
	@:native("DetachAudioStreamProcessor") static function DetachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;
}
