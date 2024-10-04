package;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector2')
extern class RayVector2
{
	@:native('Vector2')
	static function create():RayVector2;

	var x:Single; // Vector x component
	var y:Single; // Vector y component
}

typedef Vector2 = cpp.Struct<RayVector2>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector3')
extern class RayVector3
{
	@:native('Vector3')
	static function create():RayVector3;

	var x:Single; // Vector x component
	var y:Single; // Vector y component
	var z:Single; // Vector z component
}

typedef Vector3 = cpp.Struct<RayVector3>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector4')
extern class RayVector4
{
	@:native('RayVector4')
	static function create():RayVector4;

	var x:Single; // Vector x component
	var y:Single; // Vector y component
	var z:Single; // Vector z component
	var w:Single; // Vector w component
}

typedef Vector4 = cpp.Struct<RayVector4>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Matrix')
extern class RayMatrix
{
	@:native('Matrix')
	static function create():RayMatrix;

	// Matrix first row (4 components)
	var m0:Single;
	var m4:Single;
	var m8:Single;
	var m12:Single;

	// Matrix second row (4 components)
	var m1:Single;
	var m5:Single;
	var m9:Single;
	var m13:Single;

	// Matrix third row (4 components)
	var m2:Single;
	var m6:Single;
	var m10:Single;
	var m14:Single;

	// Matrix fourth row (4 components)
	var m3:Single;
	var m7:Single;
	var m11:Single;
	var m15:Single;
}

typedef Matrix = cpp.Struct<RayMatrix>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Color')
extern class RayColor
{
	@:native('Color')
	static function create():RayColor;

	var r:cpp.UInt8; // Color red value
	var g:cpp.UInt8; // Color green value
	var b:cpp.UInt8; // Color blue value
	var a:cpp.UInt8; // Color alpha value
}

typedef Color = cpp.Struct<RayColor>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Rectangle')
extern class RayRectangle
{
	@:native('Rectangle')
	static function create():RayRectangle;

	var x:Single; // RayRectangle top-left corner position x
	var y:Single; // RayRectangle top-left corner position y
	var width:Single; // RayRectangle width
	var height:Single; // RayRectangle height
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Image')
extern class RayImage
{
	@:native('Image')
	static function create():RayImage;

	var data:cpp.RawPointer<cpp.Void>; // Image raw data
	var width:Int; // Image base width
	var height:Int; // Image base height
	var mipmaps:Int; // Mipmap levels, 1 by default
	var format:Int; // Data format (PixelFormat type)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Texture')
extern class RayTexture
{
	@:native('Texture')
	static function create():RayTexture;

	var id:cpp.UInt32; // OpenGL texture id
	var width:Int; // Texture base width
	var height:Int; // Texture base height
	var mipmaps:Int; // Mipmap levels, 1 by default
	var format:Int; // Data format (PixelFormat type)
}

typedef Texture = cpp.Struct<RayTexture>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('RenderTexture')
extern class RayRenderTexture
{
	@:native('RenderTexture')
	static function create():RayRenderTexture;

	var id:cpp.UInt32; // OpenGL framebuffer object id
	var texture:RayTexture; // Color buffer attachment texture
	var depth:RayTexture; // Depth buffer attachment texture
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('NPatchInfo')
extern class RayNPatchInfo
{
	@:native('NPatchInfo')
	static function create():RayNPatchInfo;

	var source:RayRectangle; // Texture source rectangle
	var left:Int; // Left border offset
	var top:Int; // Top border offset
	var right:Int; // Right border offset
	var bottom:Int; // Bottom border offset
	var layout:Int; // Layout of the n-patch: 3x3, 1x3 or 3x1
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('GlyphInfo')
extern class RayGlyphInfo
{
	@:native('GlyphInfo')
	static function create():RayGlyphInfo;

	var value:Int; // Character value (Unicode)
	var offsetX:Int; // Character offset X when drawing
	var offsetY:Int; // Character offset Y when drawing
	var advanceX:Int; // Character advance position X
	var image:RayImage; // Character image data
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Font')
extern class RayFont
{
	@:native('Font')
	static function create():RayFont;

	var baseSize:Int; // Base size (default chars height)
	var glyphCount:Int; // Number of glyph characters
	var glyphPadding:Int; // Padding around the glyph characters
	var texture:RayTexture; // Texture atlas containing the glyphs
	var recs:cpp.RawPointer<RayRectangle>; // RayRectangles in texture for the glyphs
	var glyphs:cpp.RawPointer<RayGlyphInfo>; // Glyphs info data
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Camera3D')
extern class RayCamera3D
{
	@:native('Camera3D')
	static function create():RayCamera3D;

	var position:RayVector3; // Camera position
	var target:RayVector3; // Camera target it looks-at
	var up:RayVector3; // Camera up vector (rotation over its axis)
	var fovy:Single; // Camera field-of-view aperture in Y (degrees) in perspective, used as near plane width in orthographic
	var projection:Int; // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Camera2D')
extern class RayCamera2D
{
	@:native('Camera2D')
	static function create():RayCamera2D;

	var offset:RayVector2; // Camera offset (displacement from target)
	var target:RayVector2; // Camera target (rotation and zoom origin)
	var rotation:Single; // Camera rotation in degrees
	var zoom:Single; // Camera zoom (scaling), should be 1.0f by default
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Mesh')
extern class RayMesh
{
	@:native('Mesh')
	static function create():RayMesh;

	var vertexCount:Int; // Number of vertices stored in arrays
	var triangleCount:Int; // Number of triangles stored (indexed or not)

	// Vertex attributes data
	var vertices:cpp.RawPointer<Single>; // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
	var texcoords:cpp.RawPointer<Single>; // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
	var texcoords2:cpp.RawPointer<Single>; // Vertex texture second coordinates (UV - 2 components per vertex) (shader-location = 5)
	var normals:cpp.RawPointer<Single>; // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
	var tangents:cpp.RawPointer<Single>; // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
	var colors:cpp.RawPointer<cpp.UInt8>; // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
	var indices:cpp.RawPointer<cpp.UInt16>; // Vertex indices (in case vertex data comes indexed)

	// Animation vertex data
	var animVertices:cpp.RawPointer<Single>; // Animated vertex positions (after bones transformations)
	var animNormals:cpp.RawPointer<Single>; // Animated normals (after bones transformations)
	var boneIds:cpp.RawPointer<cpp.UInt8>; // Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
	var boneWeights:cpp.RawPointer<Single>; // Vertex bone weight, up to 4 bones influence by vertex (skinning)

	// OpenGL identifiers
	var vaoId:cpp.UInt32; // OpenGL Vertex Array Object id
	var vboId:cpp.RawPointer<cpp.UInt32>; // OpenGL Vertex Buffer Objects id (default vertex data)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Shader')
extern class Shader
{
	@:native('Shader')
	static function create():Shader;

	var id:cpp.UInt32; // Shader program id
	var locs:cpp.RawPointer<Int>; // Shader locations array (RL_MAX_SHADER_LOCATIONS)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('MaterialMap')
extern class MaterialMap
{
	@:native('MaterialMap')
	static function create():MaterialMap;

	var texture:RayTexture; // Material map texture
	var color:RayColor; // Material map color
	var value:Single; // Material map value
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Material')
extern class Material
{
	@:native('Material')
	static function create():Material;

	var shader:Shader; // Material shader
	var maps:cpp.RawPointer<MaterialMap>; // Material maps cpp.RawPointer (MAX_MATERIAL_MAPS)
	var params:cpp.RawPointer<Single>; // Material generic parameters (if required)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Transform')
extern class Transform
{
	@:native('Transform')
	static function create():Transform;

	var translation:RayVector3; // Translation
	var rotation:RayVector4; // Rotation
	var scale:RayVector3; // Scale
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoneInfo')
extern class BoneInfo
{
	@:native('BoneInfo')
	static function create():BoneInfo;

	var name:cpp.CastCharStar; // Bone name
	var parent:Int; // Bone parent
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Model')
extern class Model
{
	@:native('Model')
	static function create():Model;

	var transform:RayMatrix; // Local transform matrix

	var meshCount:Int; // Number of meshes
	var materialCount:Int; // Number of materials
	var meshes:cpp.RawPointer<RayMesh>; // Meshes cpp.RawPointer
	var materials:cpp.RawPointer<Material>; // Materials cpp.RawPointer
	var meshMaterial:cpp.RawPointer<Int>; // Mesh material number

	// Animation data
	var boneCount:Int; // Number of bones
	var bones:cpp.RawPointer<BoneInfo>; // Bones information (skeleton)
	var bindPose:cpp.RawPointer<Transform>; // Bones base transformation (pose)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('ModelAnimation')
extern class ModelAnimation
{
	@:native('ModelAnimation')
	static function create():ModelAnimation;

	var boneCount:Int; // Number of bones
	var frameCount:Int; // Number of animation frames
	var bones:cpp.RawPointer<BoneInfo>; // Bones information (skeleton)
	var framePoses:cpp.RawPointer<cpp.RawPointer<Transform>>; // Poses cpp.RawPointer by frame
	var name:cpp.CastCharStar; // Animation name
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Ray')
extern class Ray
{
	@:native('Ray')
	static function create():Ray;

	var position:RayVector3; // Ray position (origin)
	var direction:RayVector3; // Ray direction
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('RayCollision')
extern class RayCollision
{
	@:native('RayCollision')
	static function create():RayCollision;

	var hit:Bool; // Did the ray hit something?
	var distance:Single; // Distance to the nearest hit
	var point:RayVector3; // Point of the nearest hit
	var normal:RayVector3; // Surface normal of hit
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoundingBox')
extern class BoundingBox
{
	@:native('BoundingBox')
	static function create():BoundingBox;

	var min:RayVector3; // Minimum vertex box-corner
	var max:RayVector3; // Maximum vertex box-corner
}

typedef AudioCallback = cpp.Callable<(bufferData:cpp.RawPointer<cpp.Void>, frames:cpp.UInt32) -> Void>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Wave')
extern class Wave
{
	@:native('Wave')
	static function create():Wave;

	var frameCount:cpp.UInt32; // Total number of frames (considering channels) var sampleRate:cpp.UInt32; // Frequency (samples per second) var sampleSize:cpp.UInt32; // Bit depth (bits per sample): 8, 16, 32 (24 not supported) var channels:cpp.UInt32; // Number of channels (1-mono, 2-stereo, ...) var data:cpp.RawPointer<cpp.Void>; // Buffer data pointer
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('rAudioBuffer')
extern class RAudioBuffer {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('rAudioProcessor')
extern class RAudioProcessor {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AudioStream')
extern class AudioStream
{
	@:native('AudioStream')
	static function create():AudioStream;

	var buffer:cpp.RawPointer<RAudioBuffer>; // Pointer to internal data used by the audio system
	var processor:cpp.RawPointer<RAudioProcessor>; // Pointer to internal data processor, useful for audio effects
	var sampleRate:cpp.UInt32; // Frequency (samples per second) var sampleSize:cpp.UInt32; // Bit depth (bits per sample): 8, 16, 32 (24 not supported) var channels:cpp.UInt32; // Number of channels (1-mono, 2-stereo, ...)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Sound')
extern class Sound
{
	@:native('Sound')
	static function create():Sound;

	var stream:AudioStream; // Audio stream
	var frameCount:cpp.UInt32; // Total number of frames (considering channels)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Music')
extern class Music
{
	@:native('Music')
	static function create():Music;

	var stream:AudioStream; // Audio stream
	var frameCount:cpp.UInt32; // Total number of frames (considering channels) var looping:Bool; // Music looping enable
	var ctxType:Int; // Type of music context (audio filetype) var ctxData:cpp.RawPointer<cpp.Void>; // Audio context data, depends on type
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('VrDeviceInfo')
extern class VrDeviceInfo
{
	@:native('VrDeviceInfo')
	static function create():VrDeviceInfo;

	var hResolution:Int; // Horizontal resolution in pixels
	var vResolution:Int; // Vertical resolution in pixels
	var hScreenSize:Single; // Horizontal size in meters
	var vScreenSize:Single; // Vertical size in meters
	var eyeToScreenDistance:Single; // Distance between eye and display in meters
	var lensSeparationDistance:Single; // Lens separation distance in meters
	var interpupillaryDistance:Single; // IPD (distance between pupils) in meters
	var lensDistortionValues:cpp.RawPointer<Single>; // Lens distortion constant parameters
	var chromaAbCorrection:cpp.RawPointer<Single>; // Chromatic aberration correction parameters
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('VrStereoConfig')
extern class VrStereoConfig
{
	@:native('VrStereoConfig')
	static function create():VrStereoConfig;

	var projection:cpp.RawPointer<RayMatrix>; // VR projection matrices (per eye) var viewOffset:cpp.RawPointer<RayMatrix>; // VR view offset matrices (per eye) var leftLensCenter:cpp.RawPointer<Single>; // VR left lens center
	var rightLensCenter:cpp.RawPointer<Single>; // VR right lens center
	var leftScreenCenter:cpp.RawPointer<Single>; // VR left screen center
	var rightScreenCenter:cpp.RawPointer<Single>; // VR right screen center
	var scale:cpp.RawPointer<Single>; // VR distortion scale
	var scaleIn:cpp.RawPointer<Single>; // VR distortion scale in
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('FilePathList')
extern class FilePathList
{
	@:native('FilePathList')
	static function create():FilePathList;

	var capacity:cpp.UInt32; // Filepaths max entries
	var count:cpp.UInt32; // Filepaths entries count
	var paths:cpp.RawPointer<cpp.CastCharStar>; // Filepaths entries
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEvent')
extern class AutomationEvent
{
	@:native('AutomationEvent')
	static function create():AutomationEvent;

	var frame:cpp.UInt32; // Event frame
	var type:cpp.UInt32; // Event type (AutomationEventType) var params:cpp.RawPointer<Int>; // Event parameters (if required)
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEventList')
extern class AutomationEventList
{
	@:native('AutomationEventList')
	static function create():AutomationEventList;

	var capacity:cpp.UInt32; // Events max entries (MAX_AUTOMATION_EVENTS) var count:cpp.UInt32; // Events entries count
	var events:cpp.RawPointer<AutomationEvent>; // Events entries
}

extern enum abstract ConfigFlags(ConfigFlagsImpl)
{
	@:native('FLAG_VSYNC_HINT') var FLAG_VSYNC_HINT; // Set to try enabling V-Sync on GPU

	@:native('FLAG_FULLSCREEN_MODE') var FLAG_FULLSCREEN_MODE; // Set to run program in fullscreen

	@:native('FLAG_WINDOW_RESIZABLE') var FLAG_WINDOW_RESIZABLE; // Set to allow resizable window

	@:native('FLAG_WINDOW_UNDECORATED') var FLAG_WINDOW_UNDECORATED; // Set to disable window decoration (frame and buttons)

	@:native('FLAG_WINDOW_HIDDEN') var FLAG_WINDOW_HIDDEN; // Set to hide window

	@:native('FLAG_WINDOW_MINIMIZED') var FLAG_WINDOW_MINIMIZED; // Set to minimize window (iconify)

	@:native('FLAG_WINDOW_MAXIMIZED') var FLAG_WINDOW_MAXIMIZED; // Set to maximize window (expanded to monitor)

	@:native('FLAG_WINDOW_UNFOCUSED') var FLAG_WINDOW_UNFOCUSED; // Set to window non focused

	@:native('FLAG_WINDOW_TOPMOST') var FLAG_WINDOW_TOPMOST; // Set to window always on top

	@:native('FLAG_WINDOW_ALWAYS_RUN') var FLAG_WINDOW_ALWAYS_RUN; // Set to allow windows running while minimized

	@:native('FLAG_WINDOW_TRANSPARENT') var FLAG_WINDOW_TRANSPARENT; // Set to allow transparent framebuffer

	@:native('FLAG_WINDOW_HIGHDPI') var FLAG_WINDOW_HIGHDPI; // Set to support HighDPI

	@:native('FLAG_WINDOW_MOUSE_PASSTHROUGH') var FLAG_WINDOW_MOUSE_PASSTHROUGH; // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED

	@:native('FLAG_BORDERLESS_WINDOWED_MODE') var FLAG_BORDERLESS_WINDOWED_MODE; // Set to run program in borderless windowed mode

	@:native('FLAG_MSAA_4X_HINT') var FLAG_MSAA_4X_HINT; // Set to try enabling MSAA 4X

	@:native('FLAG_INTERLACED_HINT') var FLAG_INTERLACED_HINT; // Set to try enabling interlaced video format (for V3D)

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ConfigFlags')
private extern class ConfigFlagsImpl {}

extern enum abstract TraceLogLevel(TraceLogLevelImpl)
{
	@:native('LOG_ALL') var LOG_ALL; // Display all logs

	@:native('LOG_TRACE') var LOG_TRACE; // Trace logging, intended for internal use only

	@:native('LOG_DEBUG') var LOG_DEBUG; // Debug logging, used for internal debugging, it should be disabled on release builds

	@:native('LOG_INFO') var LOG_INFO; // Info logging, used for program execution info

	@:native('LOG_WARNING') var LOG_WARNING; // Warning logging, used on recoverable failures

	@:native('LOG_ERROR') var LOG_ERROR; // Error logging, used on unrecoverable failures

	@:native('LOG_FATAL') var LOG_FATAL; // Fatal logging, used to abort program: exit(EXIT_FAILURE)

	@:native('LOG_NONE') var LOG_NONE; // Disable logging

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TraceLogLevel')
private extern class TraceLogLevelImpl {}

// Keyboard key codes
extern enum abstract KeyboardKey(KeyboardKeyImpl)
{
	@:native('KEY_NULL') var KEY_NULL; // Key: NULL, used for no key pressed

	// Alphanumeric keys

	@:native('KEY_APOSTROPHE') var KEY_APOSTROPHE; // Key: '

	@:native('KEY_COMMA') var KEY_COMMA; // Key: ,

	@:native('KEY_MINUS') var KEY_MINUS; // Key: -

	@:native('KEY_PERIOD') var KEY_PERIOD; // Key: .

	@:native('KEY_SLASH') var KEY_SLASH; // Key: /

	@:native('KEY_ZERO') var KEY_ZERO; // Key: 0

	@:native('KEY_ONE') var KEY_ONE; // Key: 1

	@:native('KEY_TWO') var KEY_TWO; // Key: 2

	@:native('KEY_THREE') var KEY_THREE; // Key: 3

	@:native('KEY_FOUR') var KEY_FOUR; // Key: 4

	@:native('KEY_FIVE') var KEY_FIVE; // Key: 5

	@:native('KEY_SIX') var KEY_SIX; // Key: 6

	@:native('KEY_SEVEN') var KEY_SEVEN; // Key: 7

	@:native('KEY_EIGHT') var KEY_EIGHT; // Key: 8

	@:native('KEY_NINE') var KEY_NINE; // Key: 9

	@:native('KEY_SEMICOLON') var KEY_SEMICOLON; // Key: ;

	@:native('KEY_EQUAL') var KEY_EQUAL; // Key: =

	@:native('KEY_A') var KEY_A; // Key: A | a

	@:native('KEY_B') var KEY_B; // Key: B | b

	@:native('KEY_C') var KEY_C; // Key: C | c

	@:native('KEY_D') var KEY_D; // Key: D | d

	@:native('KEY_E') var KEY_E; // Key: E | e

	@:native('KEY_F') var KEY_F; // Key: F | f

	@:native('KEY_G') var KEY_G; // Key: G | g

	@:native('KEY_H') var KEY_H; // Key: H | h

	@:native('KEY_I') var KEY_I; // Key: I | i

	@:native('KEY_J') var KEY_J; // Key: J | j

	@:native('KEY_K') var KEY_K; // Key: K | k

	@:native('KEY_L') var KEY_L; // Key: L | l

	@:native('KEY_M') var KEY_M; // Key: M | m

	@:native('KEY_N') var KEY_N; // Key: N | n

	@:native('KEY_O') var KEY_O; // Key: O | o

	@:native('KEY_P') var KEY_P; // Key: P | p

	@:native('KEY_Q') var KEY_Q; // Key: Q | q

	@:native('KEY_R') var KEY_R; // Key: R | r

	@:native('KEY_S') var KEY_S; // Key: S | s

	@:native('KEY_T') var KEY_T; // Key: T | t

	@:native('KEY_U') var KEY_U; // Key: U | u

	@:native('KEY_V') var KEY_V; // Key: V | v

	@:native('KEY_W') var KEY_W; // Key: W | w

	@:native('KEY_X') var KEY_X; // Key: X | x

	@:native('KEY_Y') var KEY_Y; // Key: Y | y

	@:native('KEY_Z') var KEY_Z; // Key: Z | z

	@:native('KEY_LEFT_BRACKET') var KEY_LEFT_BRACKET; // Key: [

	@:native('KEY_BACKSLASH') var KEY_BACKSLASH; // Key: '\'

	@:native('KEY_RIGHT_BRACKET') var KEY_RIGHT_BRACKET; // Key: ]

	@:native('KEY_GRAVE') var KEY_GRAVE; // Key: `

	// Function keys

	@:native('KEY_SPACE') var KEY_SPACE; // Key: Space

	@:native('KEY_ESCAPE') var KEY_ESCAPE; // Key: Esc

	@:native('KEY_ENTER') var KEY_ENTER; // Key: Enter

	@:native('KEY_TAB') var KEY_TAB; // Key: Tab

	@:native('KEY_BACKSPACE') var KEY_BACKSPACE; // Key: Backspace

	@:native('KEY_INSERT') var KEY_INSERT; // Key: Ins

	@:native('KEY_DELETE') var KEY_DELETE; // Key: Del

	@:native('KEY_RIGHT') var KEY_RIGHT; // Key: Cursor right

	@:native('KEY_LEFT') var KEY_LEFT; // Key: Cursor left

	@:native('KEY_DOWN') var KEY_DOWN; // Key: Cursor down

	@:native('KEY_UP') var KEY_UP; // Key: Cursor up

	@:native('KEY_PAGE_UP') var KEY_PAGE_UP; // Key: Page up

	@:native('KEY_PAGE_DOWN') var KEY_PAGE_DOWN; // Key: Page down

	@:native('KEY_HOME') var KEY_HOME; // Key: Home

	@:native('KEY_END') var KEY_END; // Key: End

	@:native('KEY_CAPS_LOCK') var KEY_CAPS_LOCK; // Key: Caps lock

	@:native('KEY_SCROLL_LOCK') var KEY_SCROLL_LOCK; // Key: Scroll down

	@:native('KEY_NUM_LOCK') var KEY_NUM_LOCK; // Key: Num lock

	@:native('KEY_PRINT_SCREEN') var KEY_PRINT_SCREEN; // Key: Print screen

	@:native('KEY_PAUSE') var KEY_PAUSE; // Key: Pause

	@:native('KEY_F1') var KEY_F1; // Key: F1

	@:native('KEY_F2') var KEY_F2; // Key: F2

	@:native('KEY_F3') var KEY_F3; // Key: F3

	@:native('KEY_F4') var KEY_F4; // Key: F4

	@:native('KEY_F5') var KEY_F5; // Key: F5

	@:native('KEY_F6') var KEY_F6; // Key: F6

	@:native('KEY_F7') var KEY_F7; // Key: F7

	@:native('KEY_F8') var KEY_F8; // Key: F8

	@:native('KEY_F9') var KEY_F9; // Key: F9

	@:native('KEY_F10') var KEY_F10; // Key: F10

	@:native('KEY_F11') var KEY_F11; // Key: F11

	@:native('KEY_F12') var KEY_F12; // Key: F12

	@:native('KEY_LEFT_SHIFT') var KEY_LEFT_SHIFT; // Key: Shift left

	@:native('KEY_LEFT_CONTROL') var KEY_LEFT_CONTROL; // Key: Control left

	@:native('KEY_LEFT_ALT') var KEY_LEFT_ALT; // Key: Alt left

	@:native('KEY_LEFT_SUPER') var KEY_LEFT_SUPER; // Key: Super left

	@:native('KEY_RIGHT_SHIFT') var KEY_RIGHT_SHIFT; // Key: Shift right

	@:native('KEY_RIGHT_CONTROL') var KEY_RIGHT_CONTROL; // Key: Control right

	@:native('KEY_RIGHT_ALT') var KEY_RIGHT_ALT; // Key: Alt right

	@:native('KEY_RIGHT_SUPER') var KEY_RIGHT_SUPER; // Key: Super right

	@:native('KEY_KB_MENU') var KEY_KB_MENU; // Key: KB menu

	// Keypad keys

	@:native('KEY_KP_0') var KEY_KP_0; // Key: Keypad 0

	@:native('KEY_KP_1') var KEY_KP_1; // Key: Keypad 1

	@:native('KEY_KP_2') var KEY_KP_2; // Key: Keypad 2

	@:native('KEY_KP_3') var KEY_KP_3; // Key: Keypad 3

	@:native('KEY_KP_4') var KEY_KP_4; // Key: Keypad 4

	@:native('KEY_KP_5') var KEY_KP_5; // Key: Keypad 5

	@:native('KEY_KP_6') var KEY_KP_6; // Key: Keypad 6

	@:native('KEY_KP_7') var KEY_KP_7; // Key: Keypad 7

	@:native('KEY_KP_8') var KEY_KP_8; // Key: Keypad 8

	@:native('KEY_KP_9') var KEY_KP_9; // Key: Keypad 9

	@:native('KEY_KP_DECIMAL') var KEY_KP_DECIMAL; // Key: Keypad .

	@:native('KEY_KP_DIVIDE') var KEY_KP_DIVIDE; // Key: Keypad /

	@:native('KEY_KP_MULTIPLY') var KEY_KP_MULTIPLY; // Key: Keypad *

	@:native('KEY_KP_SUBTRACT') var KEY_KP_SUBTRACT; // Key: Keypad -

	@:native('KEY_KP_ADD') var KEY_KP_ADD; // Key: Keypad +

	@:native('KEY_KP_ENTER') var KEY_KP_ENTER; // Key: Keypad Enter

	@:native('KEY_KP_EQUAL') var KEY_KP_EQUAL; // Key: Keypad =

	// Android key buttons

	@:native('KEY_BACK') var KEY_BACK; // Key: Android back button

	@:native('KEY_MENU') var KEY_MENU; // Key: Android menu button

	@:native('KEY_VOLUME_UP') var KEY_VOLUME_UP; // Key: Android volume up button

	@:native('KEY_VOLUME_DOWN') var KEY_VOLUME_DOWN; // Key: Android volume down button

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('KeyboardKey')
private extern class KeyboardKeyImpl {}

extern enum abstract MouseButton(MouseButtonImpl)
{
	@:native('MOUSE_BUTTON_LEFT') var MOUSE_BUTTON_LEFT; // Mouse button left

	@:native('MOUSE_BUTTON_RIGHT') var MOUSE_BUTTON_RIGHT; // Mouse button right

	@:native('MOUSE_BUTTON_MIDDLE') var MOUSE_BUTTON_MIDDLE; // Mouse button middle (pressed wheel)

	@:native('MOUSE_BUTTON_SIDE') var MOUSE_BUTTON_SIDE; // Mouse button side (advanced mouse device)

	@:native('MOUSE_BUTTON_EXTRA') var MOUSE_BUTTON_EXTRA; // Mouse button extra (advanced mouse device)

	@:native('MOUSE_BUTTON_FORWARD') var MOUSE_BUTTON_FORWARD; // Mouse button forward (advanced mouse device)

	@:native('MOUSE_BUTTON_BACK') var MOUSE_BUTTON_BACK; // Mouse button back (advanced mouse device)

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MouseButton')
private extern class MouseButtonImpl {}

extern enum abstract MouseCursor(MouseCursorImpl)
{
	@:native('MOUSE_CURSOR_DEFAULT') var MOUSE_CURSOR_DEFAULT; // Default pointer shape

	@:native('MOUSE_CURSOR_ARROW') var MOUSE_CURSOR_ARROW; // Arrow shape

	@:native('MOUSE_CURSOR_IBEAM') var MOUSE_CURSOR_IBEAM; // Text writing cursor shape

	@:native('MOUSE_CURSOR_CROSSHAIR') var MOUSE_CURSOR_CROSSHAIR; // Cross shape

	@:native('MOUSE_CURSOR_POINTING_HAND') var MOUSE_CURSOR_POINTING_HAND; // Pointing hand cursor

	@:native('MOUSE_CURSOR_RESIZE_EW') var MOUSE_CURSOR_RESIZE_EW; // Horizontal resize/move arrow shape

	@:native('MOUSE_CURSOR_RESIZE_NS') var MOUSE_CURSOR_RESIZE_NS; // Vertical resize/move arrow shape

	@:native('MOUSE_CURSOR_RESIZE_NWSE') var MOUSE_CURSOR_RESIZE_NWSE; // Top-left to bottom-right diagonal resize/move arrow shape

	@:native('MOUSE_CURSOR_RESIZE_NESW') var MOUSE_CURSOR_RESIZE_NESW; // Top-right to bottom-left diagonal resize/move arrow shape

	@:native('MOUSE_CURSOR_RESIZE_ALL') var MOUSE_CURSOR_RESIZE_ALL; // Omnidirectional resize/move cursor shape

	@:native('MOUSE_CURSOR_NOT_ALLOWED') var MOUSE_CURSOR_NOT_ALLOWED; // The operation-not-allowed shape

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MouseCursor')
private extern class MouseCursorImpl {}

extern enum abstract GamepadButton(GamepadButtonImpl)
{
	@:native('GAMEPAD_BUTTON_UNKNOWN') var GAMEPAD_BUTTON_UNKNOWN; // Unknown button, just for error checking

	@:native('GAMEPAD_BUTTON_LEFT_FACE_UP') var GAMEPAD_BUTTON_LEFT_FACE_UP; // Gamepad left DPAD up button

	@:native('GAMEPAD_BUTTON_LEFT_FACE_RIGHT') var GAMEPAD_BUTTON_LEFT_FACE_RIGHT; // Gamepad left DPAD right button

	@:native('GAMEPAD_BUTTON_LEFT_FACE_DOWN') var GAMEPAD_BUTTON_LEFT_FACE_DOWN; // Gamepad left DPAD down button

	@:native('GAMEPAD_BUTTON_LEFT_FACE_LEFT') var GAMEPAD_BUTTON_LEFT_FACE_LEFT; // Gamepad left DPAD left button

	@:native('GAMEPAD_BUTTON_RIGHT_FACE_UP') var GAMEPAD_BUTTON_RIGHT_FACE_UP; // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)

	@:native('GAMEPAD_BUTTON_RIGHT_FACE_RIGHT') var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT; // Gamepad right button right (i.e. PS3: Circle, Xbox: B)

	@:native('GAMEPAD_BUTTON_RIGHT_FACE_DOWN') var GAMEPAD_BUTTON_RIGHT_FACE_DOWN; // Gamepad right button down (i.e. PS3: Cross, Xbox: A)

	@:native('GAMEPAD_BUTTON_RIGHT_FACE_LEFT') var GAMEPAD_BUTTON_RIGHT_FACE_LEFT; // Gamepad right button left (i.e. PS3: Square, Xbox: X)

	@:native('GAMEPAD_BUTTON_LEFT_TRIGGER_1') var GAMEPAD_BUTTON_LEFT_TRIGGER_1; // Gamepad top/back trigger left (first), it could be a trailing button

	@:native('GAMEPAD_BUTTON_LEFT_TRIGGER_2') var GAMEPAD_BUTTON_LEFT_TRIGGER_2; // Gamepad top/back trigger left (second), it could be a trailing button

	@:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_1') var GAMEPAD_BUTTON_RIGHT_TRIGGER_1; // Gamepad top/back trigger right (first), it could be a trailing button

	@:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_2') var GAMEPAD_BUTTON_RIGHT_TRIGGER_2; // Gamepad top/back trigger right (second), it could be a trailing button

	@:native('GAMEPAD_BUTTON_MIDDLE_LEFT') var GAMEPAD_BUTTON_MIDDLE_LEFT; // Gamepad center buttons, left one (i.e. PS3: Select)

	@:native('GAMEPAD_BUTTON_MIDDLE') var GAMEPAD_BUTTON_MIDDLE; // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)

	@:native('GAMEPAD_BUTTON_MIDDLE_RIGHT') var GAMEPAD_BUTTON_MIDDLE_RIGHT; // Gamepad center buttons, right one (i.e. PS3: Start)

	@:native('GAMEPAD_BUTTON_LEFT_THUMB') var GAMEPAD_BUTTON_LEFT_THUMB; // Gamepad joystick pressed button left

	@:native('GAMEPAD_BUTTON_RIGHT_THUMB') var GAMEPAD_BUTTON_RIGHT_THUMB; // Gamepad joystick pressed button right

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('GamepadButton')
private extern class GamepadButtonImpl {}

extern enum abstract GamepadAxis(GamepadAxisImpl)
{
	@:native('GAMEPAD_AXIS_LEFT_X') var GAMEPAD_AXIS_LEFT_X; // Gamepad left stick X axis

	@:native('GAMEPAD_AXIS_LEFT_Y') var GAMEPAD_AXIS_LEFT_Y; // Gamepad left stick Y axis

	@:native('GAMEPAD_AXIS_RIGHT_X') var GAMEPAD_AXIS_RIGHT_X; // Gamepad right stick X axis

	@:native('GAMEPAD_AXIS_RIGHT_Y') var GAMEPAD_AXIS_RIGHT_Y; // Gamepad right stick Y axis

	@:native('GAMEPAD_AXIS_LEFT_TRIGGER') var GAMEPAD_AXIS_LEFT_TRIGGER; // Gamepad back trigger left, pressure level: [1..-1]

	@:native('GAMEPAD_AXIS_RIGHT_TRIGGER') var GAMEPAD_AXIS_RIGHT_TRIGGER; // Gamepad back trigger right, pressure level: [1..-1]

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('GamepadAxis')
private extern class GamepadAxisImpl {}

extern enum abstract MaterialMapIndex(MaterialMapIndexImpl)
{
	@:native('MATERIAL_MAP_ALBEDO') var MATERIAL_MAP_ALBEDO; // Albedo material (same as: MATERIAL_MAP_DIFFUSE)

	@:native('MATERIAL_MAP_METALNESS') var MATERIAL_MAP_METALNESS; // Metalness material (same as: MATERIAL_MAP_SPECULAR)

	@:native('MATERIAL_MAP_NORMAL') var MATERIAL_MAP_NORMAL; // Normal material

	@:native('MATERIAL_MAP_ROUGHNESS') var MATERIAL_MAP_ROUGHNESS; // Roughness material

	@:native('MATERIAL_MAP_OCCLUSION') var MATERIAL_MAP_OCCLUSION; // Ambient occlusion material

	@:native('MATERIAL_MAP_EMISSION') var MATERIAL_MAP_EMISSION; // Emission material

	@:native('MATERIAL_MAP_HEIGHT') var MATERIAL_MAP_HEIGHT; // Heightmap material

	@:native('MATERIAL_MAP_CUBEMAP') var MATERIAL_MAP_CUBEMAP; // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

	@:native('MATERIAL_MAP_IRRADIANCE') var MATERIAL_MAP_IRRADIANCE; // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

	@:native('MATERIAL_MAP_PREFILTER') var MATERIAL_MAP_PREFILTER; // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)

	@:native('MATERIAL_MAP_BRDF') var MATERIAL_MAP_BRDF; // Brdf material

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MaterialMapIndex')
private extern class MaterialMapIndexImpl {}

extern enum abstract ShaderLocationIndex(ShaderLocationIndexImpl)
{
	@:native('SHADER_LOC_VERTEX_POSITION') var SHADER_LOC_VERTEX_POSITION; // Shader location: vertex attribute: position

	@:native('SHADER_LOC_VERTEX_TEXCOORD01') var SHADER_LOC_VERTEX_TEXCOORD01; // Shader location: vertex attribute: texcoord01

	@:native('SHADER_LOC_VERTEX_TEXCOORD02') var SHADER_LOC_VERTEX_TEXCOORD02; // Shader location: vertex attribute: texcoord02

	@:native('SHADER_LOC_VERTEX_NORMAL') var SHADER_LOC_VERTEX_NORMAL; // Shader location: vertex attribute: normal

	@:native('SHADER_LOC_VERTEX_TANGENT') var SHADER_LOC_VERTEX_TANGENT; // Shader location: vertex attribute: tangent

	@:native('SHADER_LOC_VERTEX_COLOR') var SHADER_LOC_VERTEX_COLOR; // Shader location: vertex attribute: color

	@:native('SHADER_LOC_MATRIX_MVP') var SHADER_LOC_MATRIX_MVP; // Shader location: matrix uniform: model-view-projection

	@:native('SHADER_LOC_MATRIX_VIEW') var SHADER_LOC_MATRIX_VIEW; // Shader location: matrix uniform: view (camera transform)

	@:native('SHADER_LOC_MATRIX_PROJECTION') var SHADER_LOC_MATRIX_PROJECTION; // Shader location: matrix uniform: projection

	@:native('SHADER_LOC_MATRIX_MODEL') var SHADER_LOC_MATRIX_MODEL; // Shader location: matrix uniform: model (transform)

	@:native('SHADER_LOC_MATRIX_NORMAL') var SHADER_LOC_MATRIX_NORMAL; // Shader location: matrix uniform: normal

	@:native('SHADER_LOC_VECTOR_VIEW') var SHADER_LOC_VECTOR_VIEW; // Shader location: vector uniform: view

	@:native('SHADER_LOC_COLOR_DIFFUSE') var SHADER_LOC_COLOR_DIFFUSE; // Shader location: vector uniform: diffuse color

	@:native('SHADER_LOC_COLOR_SPECULAR') var SHADER_LOC_COLOR_SPECULAR; // Shader location: vector uniform: specular color

	@:native('SHADER_LOC_COLOR_AMBIENT') var SHADER_LOC_COLOR_AMBIENT; // Shader location: vector uniform: ambient color

	@:native('SHADER_LOC_MAP_ALBEDO') var SHADER_LOC_MAP_ALBEDO; // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)

	@:native('SHADER_LOC_MAP_METALNESS') var SHADER_LOC_MAP_METALNESS; // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)

	@:native('SHADER_LOC_MAP_NORMAL') var SHADER_LOC_MAP_NORMAL; // Shader location: sampler2d texture: normal

	@:native('SHADER_LOC_MAP_ROUGHNESS') var SHADER_LOC_MAP_ROUGHNESS; // Shader location: sampler2d texture: roughness

	@:native('SHADER_LOC_MAP_OCCLUSION') var SHADER_LOC_MAP_OCCLUSION; // Shader location: sampler2d texture: occlusion

	@:native('SHADER_LOC_MAP_EMISSION') var SHADER_LOC_MAP_EMISSION; // Shader location: sampler2d texture: emission

	@:native('SHADER_LOC_MAP_HEIGHT') var SHADER_LOC_MAP_HEIGHT; // Shader location: sampler2d texture: height

	@:native('SHADER_LOC_MAP_CUBEMAP') var SHADER_LOC_MAP_CUBEMAP; // Shader location: samplerCube texture: cubemap

	@:native('SHADER_LOC_MAP_IRRADIANCE') var SHADER_LOC_MAP_IRRADIANCE; // Shader location: samplerCube texture: irradiance

	@:native('SHADER_LOC_MAP_PREFILTER') var SHADER_LOC_MAP_PREFILTER; // Shader location: samplerCube texture: prefilter

	@:native('SHADER_LOC_MAP_BRDF') var SHADER_LOC_MAP_BRDF; // Shader location: sampler2d texture: brdf

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderLocationIndex')
private extern class ShaderLocationIndexImpl {}

extern enum abstract ShaderUniformDataType(ShaderUniformDataTypeImpl)
{
	@:native('SHADER_UNIFORM_FLOAT') var SHADER_UNIFORM_FLOAT; // Shader uniform type: float

	@:native('SHADER_UNIFORM_VEC2') var SHADER_UNIFORM_VEC2; // Shader uniform type: vec2 (2 float)

	@:native('SHADER_UNIFORM_VEC3') var SHADER_UNIFORM_VEC3; // Shader uniform type: vec3 (3 float)

	@:native('SHADER_UNIFORM_VEC4') var SHADER_UNIFORM_VEC4; // Shader uniform type: vec4 (4 float)

	@:native('SHADER_UNIFORM_INT') var SHADER_UNIFORM_INT; // Shader uniform type: int

	@:native('SHADER_UNIFORM_IVEC2') var SHADER_UNIFORM_IVEC2; // Shader uniform type: ivec2 (2 int)

	@:native('SHADER_UNIFORM_IVEC3') var SHADER_UNIFORM_IVEC3; // Shader uniform type: ivec3 (3 int)

	@:native('SHADER_UNIFORM_IVEC4') var SHADER_UNIFORM_IVEC4; // Shader uniform type: ivec4 (4 int)

	@:native('SHADER_UNIFORM_SAMPLER2D') var SHADER_UNIFORM_SAMPLER2D; // Shader uniform type: sampler2d

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderUniformDataType')
private extern class ShaderUniformDataTypeImpl {}

extern enum abstract ShaderAttributeDataType(ShaderAttributeDataTypeImpl)
{
	@:native('SHADER_ATTRIB_FLOAT') var SHADER_ATTRIB_FLOAT; // Shader attribute type: float

	@:native('SHADER_ATTRIB_VEC2') var SHADER_ATTRIB_VEC2; // Shader attribute type: vec2 (2 float)

	@:native('SHADER_ATTRIB_VEC3') var SHADER_ATTRIB_VEC3; // Shader attribute type: vec3 (3 float)

	@:native('SHADER_ATTRIB_VEC4') var SHADER_ATTRIB_VEC4; // Shader attribute type: vec4 (4 float)

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderAttributeDataType')
private extern class ShaderAttributeDataTypeImpl {}

extern enum abstract PixelFormat(PixelFormatImpl)
{
	@:native('PIXELFORMAT_UNCOMPRESSED_GRAYSCALE') var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE; // 8 bit per pixel (no alpha)

	@:native('PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA') var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA; // 8*2 bpp (2 channels)

	@:native('PIXELFORMAT_UNCOMPRESSED_R5G6B5') var PIXELFORMAT_UNCOMPRESSED_R5G6B5; // 16 bpp

	@:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8') var PIXELFORMAT_UNCOMPRESSED_R8G8B8; // 24 bpp
	
	@:native('PIXELFORMAT_UNCOMPRESSED_R5G5B5A1') var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1; // 16 bpp (1 bit alpha)

	@:native('PIXELFORMAT_UNCOMPRESSED_R4G4B4A4') var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4; // 16 bpp (4 bit alpha)

	@:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8A8') var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8; // 32 bpp

	@:native('PIXELFORMAT_UNCOMPRESSED_R32') var PIXELFORMAT_UNCOMPRESSED_R32; // 32 bpp (1 channel - float)

	@:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32') var PIXELFORMAT_UNCOMPRESSED_R32G32B32; // 32*3 bpp (3 channels - float)

	@:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32A32') var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32; // 32*4 bpp (4 channels - float)

	@:native('PIXELFORMAT_UNCOMPRESSED_R16') var PIXELFORMAT_UNCOMPRESSED_R16; // 16 bpp (1 channel - half float)

	@:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16') var PIXELFORMAT_UNCOMPRESSED_R16G16B16; // 16*3 bpp (3 channels - half float)

	@:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16A16') var PIXELFORMAT_UNCOMPRESSED_R16G16B16A16; // 16*4 bpp (4 channels - half float)

	@:native('PIXELFORMAT_COMPRESSED_DXT1_RGB') var PIXELFORMAT_COMPRESSED_DXT1_RGB; // 4 bpp (no alpha)

	@:native('PIXELFORMAT_COMPRESSED_DXT1_RGBA') var PIXELFORMAT_COMPRESSED_DXT1_RGBA; // 4 bpp (1 bit alpha)

	@:native('PIXELFORMAT_COMPRESSED_DXT3_RGBA') var PIXELFORMAT_COMPRESSED_DXT3_RGBA; // 8 bpp

	@:native('PIXELFORMAT_COMPRESSED_DXT5_RGBA') var PIXELFORMAT_COMPRESSED_DXT5_RGBA; // 8 bpp

	@:native('PIXELFORMAT_COMPRESSED_ETC1_RGB') var PIXELFORMAT_COMPRESSED_ETC1_RGB; // 4 bpp

	@:native('PIXELFORMAT_COMPRESSED_ETC2_RGB') var PIXELFORMAT_COMPRESSED_ETC2_RGB; // 4 bpp

	@:native('PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA') var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA; // 8 bpp

	@:native('PIXELFORMAT_COMPRESSED_PVRT_RGB') var PIXELFORMAT_COMPRESSED_PVRT_RGB; // 4 bpp

	@:native('PIXELFORMAT_COMPRESSED_PVRT_RGBA') var PIXELFORMAT_COMPRESSED_PVRT_RGBA; // 4 bpp

	@:native('PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA') var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA; // 8 bpp

	@:native('PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA') var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA; // 2 bpp

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('PixelFormat')
private extern class PixelFormatImpl {}

extern enum abstract TextureFilter(TextureFilterImpl)
{
	@:native('TEXTURE_FILTER_POINT') var TEXTURE_FILTER_POINT; // No filter, just pixel approximation

	@:native('TEXTURE_FILTER_BILINEAR') var TEXTURE_FILTER_BILINEAR; // Linear filtering

	@:native('TEXTURE_FILTER_TRILINEAR') var TEXTURE_FILTER_TRILINEAR; // Trilinear filtering (linear with mipmaps)

	@:native('TEXTURE_FILTER_ANISOTROPIC_4X') var TEXTURE_FILTER_ANISOTROPIC_4X; // Anisotropic filtering 4x

	@:native('TEXTURE_FILTER_ANISOTROPIC_8X') var TEXTURE_FILTER_ANISOTROPIC_8X; // Anisotropic filtering 8x

	@:native('TEXTURE_FILTER_ANISOTROPIC_16X') var TEXTURE_FILTER_ANISOTROPIC_16X; // Anisotropic filtering 16x

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TextureFilter')
private extern class TextureFilterImpl {}

extern enum abstract TextureWrap(TextureWrapImpl)
{
	@:native('TEXTURE_WRAP_REPEAT') var TEXTURE_WRAP_REPEAT; // Repeats texture in tiled mode

	@:native('TEXTURE_WRAP_CLAMP') var TEXTURE_WRAP_CLAMP; // Clamps texture to edge pixel in tiled mode

	@:native('TEXTURE_WRAP_MIRROR_REPEAT') var TEXTURE_WRAP_MIRROR_REPEAT; // Mirrors and repeats the texture in tiled mode

	@:native('TEXTURE_WRAP_MIRROR_CLAMP') var TEXTURE_WRAP_MIRROR_CLAMP; // Mirrors and clamps to border the texture in tiled mode

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TextureWrap')
private extern class TextureWrapImpl {}

extern enum abstract CubemapLayout(CubemapLayoutImpl)
{
	@:native('CUBEMAP_LAYOUT_AUTO_DETECT') var CUBEMAP_LAYOUT_AUTO_DETECT; // Automatically detect layout type

	@:native('CUBEMAP_LAYOUT_LINE_VERTICAL') var CUBEMAP_LAYOUT_LINE_VERTICAL; // Layout is defined by a vertical line with faces

	@:native('CUBEMAP_LAYOUT_LINE_HORIZONTAL') var CUBEMAP_LAYOUT_LINE_HORIZONTAL; // Layout is defined by a horizontal line with faces

	@:native('CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR') var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR; // Layout is defined by a 3x4 cross with cubemap faces

	@:native('CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE') var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE; // Layout is defined by a 4x3 cross with cubemap faces

	@:native('CUBEMAP_LAYOUT_PANORAMA') var CUBEMAP_LAYOUT_PANORAMA; // Layout is defined by a panorama image (equirrectangular map)

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CubemapLayout')
private extern class CubemapLayoutImpl {}

extern enum abstract FontType(FontTypeImpl)
{
	@:native('FONT_DEFAULT') var FONT_DEFAULT; // Default font generation, anti-aliased

	@:native('FONT_BITMAP') var FONT_BITMAP; // Bitmap font generation, no anti-aliasing

	@:native('FONT_SDF') var FONT_SDF; // SDF font generation, requires external shader

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('FontType')
private extern class FontTypeImpl {}

extern enum abstract BlendMode(BlendModeImpl)
{
	@:native('BLEND_ALPHA') var BLEND_ALPHA; // Blend textures considering alpha (default)

	@:native('BLEND_ADDITIVE') var BLEND_ADDITIVE; // Blend textures adding colors

	@:native('BLEND_MULTIPLIED') var BLEND_MULTIPLIED; // Blend textures multiplying colors

	@:native('BLEND_ADD_COLORS') var BLEND_ADD_COLORS; // Blend textures adding colors (alternative)

	@:native('BLEND_SUBTRACT_COLORS') var BLEND_SUBTRACT_COLORS; // Blend textures subtracting colors (alternative)

	@:native('BLEND_ALPHA_PREMULTIPLY') var BLEND_ALPHA_PREMULTIPLY; // Blend premultiplied textures considering alpha

	@:native('BLEND_CUSTOM') var BLEND_CUSTOM; // Blend textures using custom src/dst factors (use rlSetBlendFactors())

	@:native('BLEND_CUSTOM_SEPARATE') var BLEND_CUSTOM_SEPARATE; // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('BlendMode')
private extern class BlendModeImpl {}

extern enum abstract Gesture(GestureImpl)
{
	@:native('GESTURE_NONE') var GESTURE_NONE; // No gesture

	@:native('GESTURE_TAP') var GESTURE_TAP; // Tap gesture

	@:native('GESTURE_DOUBLETAP') var GESTURE_DOUBLETAP; // Double tap gesture

	@:native('GESTURE_HOLD') var GESTURE_HOLD; // Hold gesture

	@:native('GESTURE_DRAG') var GESTURE_DRAG; // Drag gesture

	@:native('GESTURE_SWIPE_RIGHT') var GESTURE_SWIPE_RIGHT; // Swipe right gesture

	@:native('GESTURE_SWIPE_LEFT') var GESTURE_SWIPE_LEFT; // Swipe left gesture

	@:native('GESTURE_SWIPE_UP') var GESTURE_SWIPE_UP; // Swipe up gesture

	@:native('GESTURE_SWIPE_DOWN') var GESTURE_SWIPE_DOWN; // Swipe down gesture

	@:native('GESTURE_PINCH_IN') var GESTURE_PINCH_IN; // Pinch in gesture

	@:native('GESTURE_PINCH_OUT') var GESTURE_PINCH_OUT; // Pinch out gesture

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('Gesture')
private extern class GestureImpl {}

extern enum abstract CameraMode(CameraModeImpl)
{
	@:native('CAMERA_CUSTOM') var CAMERA_CUSTOM; // Camera custom, controlled by user (UpdateCamera() does nothing)

	@:native('CAMERA_FREE') var CAMERA_FREE; // Camera free mode

	@:native('CAMERA_ORBITAL') var CAMERA_ORBITAL; // Camera orbital, around target, zoom supported

	@:native('CAMERA_FIRST_PERSON') var CAMERA_FIRST_PERSON; // Camera first person

	@:native('CAMERA_THIRD_PERSON') var CAMERA_THIRD_PERSON; // Camera third person

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CameraMode')
private extern class CameraModeImpl {}

extern enum abstract CameraProjection(CameraProjectionImpl)
{
	@:native('CAMERA_PERSPECTIVE') var CAMERA_PERSPECTIVE; // Perspective projection

	@:native('CAMERA_ORTHOGRAPHIC') var CAMERA_ORTHOGRAPHIC; // Orthographic projection

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CameraProjection')
private extern class CameraProjectionImpl {}

extern enum abstract NPatchLayout(NPatchLayoutImpl)
{
	@:native('NPATCH_NINE_PATCH') var NPATCH_NINE_PATCH; // Npatch layout: 3x3 tiles

	@:native('NPATCH_THREE_PATCH_VERTICAL') var NPATCH_THREE_PATCH_VERTICAL; // Npatch layout: 1x3 tiles

	@:native('NPATCH_THREE_PATCH_HORIZONTAL') var NPATCH_THREE_PATCH_HORIZONTAL; // Npatch layout: 3x1 tiles

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('NPatchLayout')
private extern class NPatchLayoutImpl {}

typedef TraceLogCallback = cpp.Callable<(logLevel:Int, text:cpp.ConstCharStar, args:cpp.VarList) -> Void>; // Logging: Redirect trace log messages
typedef LoadFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, dataSize:cpp.RawPointer<Int>) -> cpp.RawPointer<cpp.UInt8>>; // FileIO: Load binary data
typedef SaveFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int) -> Bool>; // FileIO: Save binary data
typedef LoadFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar) -> cpp.CastCharStar>; // FileIO: Load text data
typedef SaveFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar, text:cpp.CastCharStar) -> Bool>; // FileIO: Save text data

extern enum abstract TouchAction(TouchActionImpl)
{
	@:native('TOUCH_ACTION_UP') var TOUCH_ACTION_UP;

	@:native('TOUCH_ACTION_DOWN') var TOUCH_ACTION_DOWN;

	@:native('TOUCH_ACTION_MOVE') var TOUCH_ACTION_MOVE;

	@:native('TOUCH_ACTION_CANCEL') var TOUCH_ACTION_CANCEL;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rgestures.h')
@:native('TouchAction')
private extern class TouchActionImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rgestures.h')
@:unreflective
@:structAccess
@:native('GestureEvent')
extern class GestureEvent
{
	@:native('GestureEvent')
	static function create():GestureEvent;

	var touchAction:Int;
	var pointCount:Int;
	var pointId:cpp.RawPointer<Int>;
	var position:cpp.RawPointer<RayVector2>;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
extern class Raylib
{
	@:native('RAYLIB_VERSION_MAJOR') static var VERSION_MAJOR:Int;
	@:native('RAYLIB_VERSION_MINOR') static var VERSION_MINOR:Int;
	@:native('RAYLIB_VERSION_PATCH') static var VERSION_PATCH:Int;
	@:native('::String(RAYLIB_VERSION)') static var VERSION:String;

	// Some Basic Colors

	@:native('LIGHTGRAY') static var LIGHTGRAY:RayColor;
	@:native('GRAY') static var GRAY:RayColor;
	@:native('DARKGRAY') static var DARKGRAY:RayColor;
	@:native('YELLOW') static var YELLOW:RayColor;
	@:native('GOLD') static var GOLD:RayColor;
	@:native('ORANGE') static var ORANGE:RayColor;
	@:native('PINK') static var PINK:RayColor;
	@:native('RED') static var RED:RayColor;
	@:native('MAROON') static var MAROON:RayColor;
	@:native('GREEN') static var GREEN:RayColor;
	@:native('LIME') static var LIME:RayColor;
	@:native('DARKGREEN') static var DARKGREEN:RayColor;
	@:native('SKYBLUE') static var SKYBLUE:RayColor;
	@:native('BLUE') static var BLUE:RayColor;
	@:native('DARKBLUE') static var DARKBLUE:RayColor;
	@:native('PURPLE') static var PURPLE:RayColor;
	@:native('VIOLET') static var VIOLET:RayColor;
	@:native('DARKPURPLE') static var DARKPURPLE:RayColor;
	@:native('BEIGE') static var BEIGE:RayColor;
	@:native('BROWN') static var BROWN:RayColor;
	@:native('DARKBROWN') static var DARKBROWN:RayColor;
	@:native('WHITE') static var WHITE:RayColor;
	@:native('BLACK') static var BLACK:RayColor;
	@:native('BLANK') static var BLANK:RayColor;
	@:native('MAGENTA') static var MAGENTA:RayColor;
	@:native('RAYWHITE') static var RAYWHITE:RayColor;

	// Window-related functions

	@:native('InitWindow') static function initWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void;
	@:native('CloseWindow') static function closeWindow():Void;
	@:native('WindowShouldClose') static function windowShouldClose():Bool;
	@:native('IsWindowReady') static function isWindowReady():Bool;
	@:native('IsWindowFullscreen') static function isWindowFullscreen():Bool;
	@:native('IsWindowHidden') static function isWindowHidden():Bool;
	@:native('IsWindowMinimized') static function isWindowMinimized():Bool;
	@:native('IsWindowMaximized') static function isWindowMaximized():Bool;
	@:native('IsWindowFocused') static function isWindowFocused():Bool;
	@:native('IsWindowResized') static function isWindowResized():Bool;
	@:native('IsWindowState') static function isWindowState(flag:cpp.UInt32):Bool;
	@:native('SetWindowState') static function setWindowState(flags:cpp.UInt32):Void;
	@:native('ClearWindowState') static function clearWindowState(flags:cpp.UInt32):Void;
	@:native('ToggleFullscreen') static function toggleFullscreen():Void;
	@:native('ToggleBorderlessWindowed') static function toggleBorderlessWindowed():Void;
	@:native('MaximizeWindow') static function maximizeWindow():Void;
	@:native('MinimizeWindow') static function minimizeWindow():Void;
	@:native('RestoreWindow') static function restoreWindow():Void;
	@:native('SetWindowIcon') static function setWindowIcon(image:RayImage):Void;
	@:native('SetWindowIcons') static function setWindowIcons(images:cpp.RawPointer<RayImage>, count:Int):Void;
	@:native('SetWindowTitle') static function setWindowTitle(title:cpp.ConstCharStar):Void;
	@:native('SetWindowPosition') static function setWindowPosition(x:Int, y:Int):Void;
	@:native('SetWindowMonitor') static function setWindowMonitor(monitor:Int):Void;
	@:native('SetWindowMinSize') static function setWindowMinSize(width:Int, height:Int):Void;
	@:native('SetWindowMaxSize') static function setWindowMaxSize(width:Int, height:Int):Void;
	@:native('SetWindowSize') static function setWindowSize(width:Int, height:Int):Void;
	@:native('SetWindowOpacity') static function setWindowOpacity(opacity:Single):Void;
	@:native('SetWindowFocused') static function setWindowFocused():Void;
	@:native('GetWindowHandle') static function getWindowHandle():cpp.RawPointer<cpp.Void>;
	@:native('GetScreenWidth') static function getScreenWidth():Int;
	@:native('GetScreenHeight') static function getScreenHeight():Int;
	@:native('GetRenderWidth') static function getRenderWidth():Int;
	@:native('GetRenderHeight') static function getRenderHeight():Int;
	@:native('GetMonitorCount') static function getMonitorCount():cpp.UInt32;
	@:native('GetCurrentMonitor') static function getCurrentMonitor():cpp.UInt32;
	@:native('GetMonitorPosition') static function getMonitorPosition(monitor:Int):RayVector2;
	@:native('GetMonitorWidth') static function getMonitorWidth(monitor:Int):Int;
	@:native('GetMonitorHeight') static function getMonitorHeight(monitor:Int):Int;
	@:native('GetMonitorPhysicalWidth') static function getMonitorPhysicalWidth(monitor:Int):Int;
	@:native('GetMonitorPhysicalHeight') static function getMonitorPhysicalHeight(monitor:Int):Int;
	@:native('GetMonitorRefreshRate') static function getMonitorRefreshRate(monitor:Int):Int;
	@:native('GetWindowPosition') static function getWindowPosition():RayVector2;
	@:native('GetWindowScaleDPI') static function getWindowScaleDPI():RayVector2;
	@:native('GetMonitorName') static function getMonitorName(monitor:Int):cpp.ConstCharStar;
	@:native('SetClipboardText') static function setClipboardText(text:cpp.ConstCharStar):Void;
	@:native('GetClipboardText') static function getClipboardText():cpp.ConstCharStar;
	@:native('EnableEventWaiting') static function enableEventWaiting():Void;
	@:native('DisableEventWaiting') static function disableEventWaiting():Void;

	// Cursor-related functions

	@:native('ShowCursor') static function showCursor():Void;
	@:native('HideCursor') static function hideCursor():Void;
	@:native('IsCursorHidden') static function isCursorHidden():Bool;
	@:native('EnableCursor') static function enableCursor():Void;
	@:native('DisableCursor') static function disableCursor():Void;
	@:native('IsCursorOnScreen') static function isCursorOnScreen():Bool;

	// Drawing-related functions

	@:native('ClearBackground') static function clearBackground(color:RayColor):Void;
	@:native('BeginDrawing') static function beginDrawing():Void;
	@:native('EndDrawing') static function endDrawing():Void;
	@:native('BeginMode2D') static function beginMode2D(camera:RayCamera2D):Void;
	@:native('EndMode2D') static function endMode2D():Void;
	@:native('BeginMode3D') static function beginMode3D(camera:RayCamera3D):Void;
	@:native('EndMode3D') static function endMode3D():Void;
	@:native('BeginTextureMode') static function beginTextureMode(target:RayRenderTexture):Void;
	@:native('EndTextureMode') static function endTextureMode():Void;
	@:native('BeginShaderMode') static function beginShaderMode(shader:Shader):Void;
	@:native('EndShaderMode') static function endShaderMode():Void;
	@:native('BeginBlendMode') static function beginBlendMode(mode:Int):Void;
	@:native('EndBlendMode') static function endBlendMode():Void;
	@:native('BeginScissorMode') static function beginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
	@:native('EndScissorMode') static function endScissorMode():Void;
	@:native('BeginVrStereoMode') static function beginVrStereoMode(config:VrStereoConfig):Void;
	@:native('EndVrStereoMode') static function endVrStereoMode():Void;

	// Load VR stereo config for VR simulator device parameters

	@:native('LoadVrStereoConfig') static function loadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;
	@:native('UnloadVrStereoConfig') static function unloadVrStereoConfig(config:VrStereoConfig):Void;

	// Shader management functions

	@:native('LoadShader') static function loadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):Shader;
	@:native('LoadShaderFromMemory') static function loadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):Shader;
	@:native('IsShaderReady') static function isShaderReady(shader:Shader):Bool;
	@:native('GetShaderLocation') static function getShaderLocation(shader:Shader, uniformName:cpp.ConstCharStar):Int;
	@:native('GetShaderLocationAttrib') static function getShaderLocationAttrib(shader:Shader, attribName:cpp.ConstCharStar):Int;
	@:native('SetShaderValue') static function setShaderValue(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void;
	@:native('SetShaderValueV') static function setShaderValueV(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int, count:Int):Void;
	@:native('SetShaderValueRayMatrix') static function setShaderValueRayMatrix(shader:Shader, locIndex:Int, mat:RayMatrix):Void;
	@:native('SetShaderValueTexture') static function setShaderValueTexture(shader:Shader, locIndex:Int, texture:RayTexture):Void;
	@:native('UnloadShader') static function unloadShader(shader:Shader):Void;

	// Screen-space-related functions

	@:native('GetMouseRay') static function getMouseRay(mousePosition:RayVector2, camera:RayCamera3D):Ray;
	@:native('GetScreenToWorldRay') static function getScreenToWorldRay(mousePosition:RayVector2, camera:RayCamera3D):Ray;
	@:native('GetScreenToWorldRayEx') static function getScreenToWorldRayEx(mousePosition:RayVector2, camera:RayCamera3D, width:Int, height:Int):Ray;
	@:native('GetWorldToScreen') static function getWorldToScreen(position:RayVector3, camera:RayCamera3D):RayVector2;
	@:native('GetWorldToScreenEx') static function getWorldToScreenEx(position:RayVector3, camera:RayCamera3D, width:Int, height:Int):RayVector2;
	@:native('GetWorldToScreen2D') static function getWorldToScreen2D(position:RayVector2, camera:RayCamera2D):RayVector2;
	@:native('GetScreenToWorld2D') static function getScreenToWorld2D(position:RayVector2, camera:RayCamera2D):RayVector2;
	@:native('GetCameraRayMatrix') static function getCameraRayMatrix(camera:RayCamera3D):RayMatrix;
	@:native('GetCameraRayMatrix2D') static function getCameraRayMatrix2D(camera:RayCamera2D):RayMatrix;

	// Timing-related functions

	@:native('SetTargetFPS') static function setTargetFPS(fps:Int):Void;
	@:native('GetFrameTime') static function getFrameTime():Single;
	@:native('GetTime') static function getTime():Float;
	@:native('GetFPS') static function getFPS():Int;

	// Custom frame control functions

	@:native('SwapScreenBuffer') static function swapScreenBuffer():Void;
	@:native('PollInputEvents') static function pollInputEvents():Void;
	@:native('WaitTime') static function WaitTime(seconds:Float):Void;

	// Random values generation functions

	@:native('SetRandomSeed') static function setRandomSeed(seed:cpp.UInt32):Void;
	@:native('GetRandomValue') static function getRandomValue(min:Int, max:Int):Int;
	@:native('LoadRandomSequence') static function loadRandomSequence(count:cpp.UInt32, min:Int, max:Int):cpp.RawPointer<Int>;
	@:native('UnloadRandomSequence') static function unloadRandomSequence(sequence:cpp.RawPointer<Int>):Void;

	// Misc. functions

	@:native('TakeScreenshot') static function takeScreenshot(fileName:cpp.ConstCharStar):Void;
	@:native('SetConfigFlags') static function setConfigFlags(flags:cpp.UInt32):Void;
	@:native('OpenURL') static function openURL(url:cpp.ConstCharStar):Void;
	@:native('TraceLog') static function traceLog(logLevel:Int, text:cpp.ConstCharStar, params:cpp.Rest<cpp.VarArg>):Void;
	@:native('SetTraceLogLevel') static function setTraceLogLevel(logLevel:Int):Void;
	@:native('MemAlloc') static function memAlloc(size:cpp.UInt32):cpp.RawPointer<cpp.Void>;
	@:native('MemRealloc') static function memRealloc(ptr:cpp.RawPointer<cpp.Void>, size:cpp.UInt32):cpp.RawPointer<cpp.Void>;
	@:native('MemFree') static function memFree(ptr:cpp.RawPointer<cpp.Void>):Void;

	// Set custom callbacks

	@:native('SetTraceLogCallback') static function setTraceLogCallback(callback:TraceLogCallback):Void;
	@:native('SetLoadFileDataCallback') static function setLoadFileDataCallback(callback:LoadFileDataCallback):Void;
	@:native('SetSaveFileDataCallback') static function setSaveFileDataCallback(callback:SaveFileDataCallback):Void;
	@:native('SetLoadFileTextCallback') static function setLoadFileTextCallback(callback:LoadFileTextCallback):Void;
	@:native('SetSaveFileTextCallback') static function setSaveFileTextCallback(callback:SaveFileTextCallback):Void;

	// Files management functions

	@:native('LoadFileData') static function loadFileData(fileName:cpp.ConstCharStar, dataSize:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;
	@:native('UnloadFileData') static function unloadFileData(data:cpp.RawPointer<cpp.UInt8>):Void;
	@:native('SaveFileData') static function saveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int):Bool;
	@:native('ExportDataAsCode') static function exportDataAsCode(data:cpp.RawPointer<cpp.UInt8>, dataSize:Int, fileName:cpp.ConstCharStar):Bool;
	@:native('LoadFileText') static function loadFileText(fileName:cpp.ConstCharStar):cpp.CastCharStar;
	@:native('UnloadFileText') static function unloadFileText(text:cpp.CastCharStar):Void;
	@:native('SaveFileText') static function saveFileText(fileName:cpp.ConstCharStar, text:cpp.CastCharStar):Bool;

	// File system functions

	@:native('FileExists') static function fileExists(fileName:cpp.ConstCharStar):Bool;
	@:native('DirectoryExists') static function directoryExists(dirPath:cpp.ConstCharStar):Bool;
	@:native('IsFileExtension') static function isFileExtension(fileName:cpp.ConstCharStar, ext:cpp.ConstCharStar):Bool;
	@:native('GetFileLength') static function getFileLength(fileName:cpp.ConstCharStar):Int;
	@:native('GetFileExtension') static function getFileExtension(fileName:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('GetFileName') static function getFileName(filePath:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('GetFileNameWithoutExt') static function getFileNameWithoutExt(filePath:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('GetDirectoryPath') static function getDirectoryPath(filePath:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('GetPrevDirectoryPath') static function getPrevDirectoryPath(dirPath:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('GetWorkingDirectory') static function getWorkingDirectory():cpp.ConstCharStar;
	@:native('GetApplicationDirectory') static function getApplicationDirectory():cpp.ConstCharStar;
	@:native('ChangeDirectory') static function changeDirectory(dir:cpp.ConstCharStar):Bool;
	@:native('IsPathFile') static function isPathFile(path:cpp.ConstCharStar):Bool;
	@:native('IsFileNameValid') static function isFileNameValid(fileName:cpp.ConstCharStar):Bool;
	@:native('LoadDirectoryFiles') static function loadDirectoryFiles(dirPath:cpp.ConstCharStar):FilePathList;
	@:native('LoadDirectoryFilesEx') static function loadDirectoryFilesEx(basePath:cpp.ConstCharStar, filter:cpp.ConstCharStar, scanSubdirs:Bool):FilePathList;
	@:native('UnloadDirectoryFiles') static function unloadDirectoryFiles(files:FilePathList):Void;
	@:native('IsFileDropped') static function isFileDropped():Bool;
	@:native('LoadDroppedFiles') static function loadDroppedFiles():FilePathList;
	@:native('UnloadDroppedFiles') static function unloadDroppedFiles(files:FilePathList):Void;
	@:native('GetFileModTime') static function getFileModTime(fileName:cpp.ConstCharStar):cpp.Long;

	// Compression/Encoding functionality

	@:native('CompressData') static function compressData(data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, compDataSize:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;
	@:native('DecompressData') static function decompressData(compData:cpp.RawConstPointer<cpp.UInt8>, compDataSize:Int, dataSize:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;
	@:native('EncodeDataBase64') static function encodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, outputSize:cpp.RawPointer<Int>):cpp.CastCharStar;
	@:native('DecodeDataBase64') static function decodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, outputSize:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;

	// Automation events functionality

	@:native('LoadAutomationEventList') static function loadAutomationEventList(fileName:cpp.ConstCharStar):AutomationEventList;
	@:native('UnloadAutomationEventList') static function unloadAutomationEventList(list:AutomationEventList):Void;
	@:native('ExportAutomationEventList') static function exportAutomationEventList(list:AutomationEventList, fileName:cpp.ConstCharStar):Bool;
	@:native('SetAutomationEventList') static function setAutomationEventList(list:cpp.RawPointer<AutomationEventList>):Void;
	@:native('SetAutomationEventBaseFrame') static function setAutomationEventBaseFrame(frame:Int):Void;
	@:native('StartAutomationEventRecording') static function startAutomationEventRecording():Void;
	@:native('StopAutomationEventRecording') static function stopAutomationEventRecording():Void;
	@:native('PlayAutomationEvent') static function playAutomationEvent(event:AutomationEvent):Void;

	// Input-related functions: keyboard

	@:native('IsKeyPressed') static function isKeyPressed(key:Int):Bool;
	@:native('IsKeyPressedRepeat') static function isKeyPressedRepeat(key:Int):Bool;
	@:native('IsKeyDown') static function isKeyDown(key:Int):Bool;
	@:native('IsKeyReleased') static function isKeyReleased(key:Int):Bool;
	@:native('IsKeyUp') static function isKeyUp(key:Int):Bool;
	@:native('GetKeyPressed') static function getKeyPressed():Int;
	@:native('GetCharPressed') static function getCharPressed():Int;
	@:native('SetExitKey') static function setExitKey(key:Int):Void;

	// Input-related functions: gamepads

	@:native('IsGamepadAvailable') static function isGamepadAvailable(gamepad:Int):Bool;
	@:native('GetGamepadName') static function getGamepadName(gamepad:Int):cpp.ConstCharStar;
	@:native('IsGamepadButtonPressed') static function isGamepadButtonPressed(gamepad:Int, button:Int):Bool;
	@:native('IsGamepadButtonDown') static function isGamepadButtonDown(gamepad:Int, button:Int):Bool;
	@:native('IsGamepadButtonReleased') static function isGamepadButtonReleased(gamepad:Int, button:Int):Bool;
	@:native('IsGamepadButtonUp') static function isGamepadButtonUp(gamepad:Int, button:Int):Bool;
	@:native('GetGamepadButtonPressed') static function getGamepadButtonPressed():Int;
	@:native('GetGamepadAxisCount') static function getGamepadAxisCount(gamepad:Int):Int;
	@:native('GetGamepadAxisMovement') static function getGamepadAxisMovement(gamepad:Int, axis:Int):Single;
	@:native('SetGamepadMappings') static function setGamepadMappings(mappings:cpp.ConstCharStar):Int;
	@:native('SetGamepadVibration') static function setGamepadVibration(gamepad:Int, leftMotor:Single, rightMotor:Single):Void;

	// Input-related functions: mouse

	@:native('IsMouseButtonPressed') static function isMouseButtonPressed(button:Int):Bool;
	@:native('IsMouseButtonDown') static function isMouseButtonDown(button:Int):Bool;
	@:native('IsMouseButtonReleased') static function isMouseButtonReleased(button:Int):Bool;
	@:native('IsMouseButtonUp') static function isMouseButtonUp(button:Int):Bool;
	@:native('GetMouseX') static function getMouseX():Int;
	@:native('GetMouseY') static function getMouseY():Int;
	@:native('GetMousePosition') static function getMousePosition():RayVector2;
	@:native('GetMouseDelta') static function getMouseDelta():RayVector2;
	@:native('SetMousePosition') static function setMousePosition(x:Int, y:Int):Void;
	@:native('SetMouseOffset') static function setMouseOffset(offsetX:Int, offsetY:Int):Void;
	@:native('SetMouseScale') static function setMouseScale(scaleX:Single, scaleY:Single):Void;
	@:native('GetMouseWheelMove') static function getMouseWheelMove():Single;
	@:native('GetMouseWheelMoveV') static function getMouseWheelMoveV():RayVector2;
	@:native('SetMouseCursor') static function setMouseCursor(cursor:Int):Void;

	// Input-related functions: touch

	@:native('GetTouchX') static function getTouchX():Int;
	@:native('GetTouchY') static function getTouchY():Int;
	@:native('GetTouchPosition') static function getTouchPosition(index:Int):RayVector2;
	@:native('GetTouchPointId') static function getTouchPointId(index:Int):Int;
	@:native('GetTouchPointCount') static function getTouchPointCount():Int;

	//------------------------------------------------------------------------------------
	// Gestures and Touch Handling Functions (Module: rgestures)
	//------------------------------------------------------------------------------------

	@:native('SetGesturesEnabled') static function setGesturesEnabled(flags:cpp.UInt32):Void;
	@:native('IsGestureDetected') static function isGestureDetected(gesture:cpp.UInt32):Bool;
	@:native('GetGestureDetected') static function getGestureDetected():Int;
	@:native('GetGestureHoldDuration') static function getGestureHoldDuration():Single;
	@:native('GetGestureDragVector') static function getGestureDragVector():RayVector2;
	@:native('GetGestureDragAngle') static function getGestureDragAngle():Single;
	@:native('GetGesturePinchVector') static function getGesturePinchVector():RayVector2;
	@:native('GetGesturePinchAngle') static function getGesturePinchAngle():Single;

	//------------------------------------------------------------------------------------
	// Camera System Functions (Module: rcamera)
	//------------------------------------------------------------------------------------

	@:native('UpdateCamera') static function updateCamera(camera:cpp.RawPointer<RayCamera3D>, mode:Int):Void;
	@:native('UpdateCameraPro') static function updateCameraPro(camera:cpp.RawPointer<RayCamera3D>, movement:RayVector3, rotation:RayVector3, zoom:Single):Void;

	//------------------------------------------------------------------------------------
	// Basic Shapes Drawing Functions (Module: shapes)
	//------------------------------------------------------------------------------------

	@:native('SetShapesTexture') static function setShapesTexture(texture:RayTexture, source:RayRectangle):Void;
	@:native('GetShapesTexture') static function getShapesTexture():RayTexture;
	@:native('GetShapesTextureRayRectangle') static function getShapesTextureRayRectangle():RayRectangle;
	@:native('DrawPixel') static function drawPixel(posX:Int, posY:Int, color:RayColor):Void;
	@:native('DrawPixelV') static function drawPixelV(position:RayVector2, color:RayColor):Void;
	@:native('DrawLine') static function drawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:RayColor):Void;
	@:native('DrawLineV') static function drawLineV(startPos:RayVector2, endPos:RayVector2, color:RayColor):Void;
	@:native('DrawLineEx') static function drawLineEx(startPos:RayVector2, endPos:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawLineStrip') static function drawLineStrip(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;
	@:native('DrawLineBezier') static function drawLineBezier(startPos:RayVector2, endPos:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawCircle') static function drawCircle(centerX:Int, centerY:Int, radius:Single, color:RayColor):Void;
	@:native('DrawCircleSector') static function drawCircleSector(center:RayVector2, radius:Single, startAngle:Single, endAngle:Single, segments:Int, color:RayColor):Void;
	@:native('DrawCircleSectorLines') static function drawCircleSectorLines(center:RayVector2, radius:Single, startAngle:Single, endAngle:Single, segments:Int, color:RayColor):Void;
	@:native('DrawCircleGradient') static function drawCircleGradient(centerX:Int, centerY:Int, radius:Single, color1:RayColor, color2:RayColor):Void;
	@:native('DrawCircleV') static function drawCircleV(center:RayVector2, radius:Single, color:RayColor):Void;
	@:native('DrawCircleLines') static function drawCircleLines(centerX:Int, centerY:Int, radius:Single, color:RayColor):Void;
	@:native('DrawCircleLinesV') static function drawCircleLinesV(center:RayVector2, radius:Single, color:RayColor):Void;
	@:native('DrawEllipse') static function drawEllipse(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:RayColor):Void;
	@:native('DrawEllipseLines') static function drawEllipseLines(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:RayColor):Void;
	@:native('DrawRing') static function drawRing(center:RayVector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRingLines') static function drawRingLines(center:RayVector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRayRectangle') static function drawRayRectangle(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;
	@:native('DrawRayRectangleV') static function drawRayRectangleV(position:RayVector2, size:RayVector2, color:RayColor):Void;
	@:native('DrawRayRectangleRec') static function drawRayRectangleRec(rec:RayRectangle, color:RayColor):Void;
	@:native('DrawRayRectanglePro') static function drawRayRectanglePro(rec:RayRectangle, origin:RayVector2, rotation:Single, color:RayColor):Void;
	@:native('DrawRayRectangleGradientV') static function drawRayRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor, color2:RayColor):Void;
	@:native('DrawRayRectangleGradientH') static function drawRayRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor, color2:RayColor):Void;
	@:native('DrawRayRectangleGradientEx') static function drawRayRectangleGradientEx(rec:RayRectangle, col1:RayColor, col2:RayColor, col3:RayColor, col4:RayColor):Void;
	@:native('DrawRayRectangleLines') static function drawRayRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;
	@:native('DrawRayRectangleLinesEx') static function drawRayRectangleLinesEx(rec:RayRectangle, lineThick:Single, color:RayColor):Void;
	@:native('DrawRayRectangleRounded') static function drawRayRectangleRounded(rec:RayRectangle, roundness:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRayRectangleRoundedLines') static function drawRayRectangleRoundedLines(rec:RayRectangle, roundness:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRayRectangleRoundedLinesEx') static function drawRayRectangleRoundedLinesEx(rec:RayRectangle, roundness:Single, segments:Int, lineThick:Single, color:RayColor):Void;
	@:native('DrawTriangle') static function drawTriangle(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;
	@:native('DrawTriangleLines') static function drawTriangleLines(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;
	@:native('DrawTriangleFan') static function drawTriangleFan(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;
	@:native('DrawTriangleStrip') static function drawTriangleStrip(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;
	@:native('DrawPoly') static function drawPoly(center:RayVector2, sides:Int, radius:Single, rotation:Single, color:RayColor):Void;
	@:native('DrawPolyLines') static function drawPolyLines(center:RayVector2, sides:Int, radius:Single, rotation:Single, color:RayColor):Void;
	@:native('DrawPolyLinesEx') static function drawPolyLinesEx(center:RayVector2, sides:Int, radius:Single, rotation:Single, lineThick:Single, color:RayColor):Void;

	// Splines drawing functions

	@:native('DrawSplineLinear') static function drawSplineLinear(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineBasis') static function drawSplineBasis(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineCatmullRom') static function drawSplineCatmullRom(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineBezierQuadratic') static function drawSplineBezierQuadratic(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineBezierCubic') static function drawSplineBezierCubic(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentLinear') static function drawSplineSegmentLinear(p1:RayVector2, p2:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentBasis') static function drawSplineSegmentBasis(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentCatmullRom') static function drawSplineSegmentCatmullRom(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentBezierQuadratic') static function drawSplineSegmentBezierQuadratic(p1:RayVector2, c2:RayVector2, p3:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentBezierCubic') static function drawSplineSegmentBezierCubic(p1:RayVector2, c2:RayVector2, c3:RayVector2, p4:RayVector2, thick:Single, color:RayColor):Void;

	// Spline segment point evaluation functions, for a given t [0.0f .. 1.0f]

	@:native('GetSplinePointLinear') static function getSplinePointLinear(startPos:RayVector2, endPos:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointBasis') static function getSplinePointBasis(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointCatmullRom') static function getSplinePointCatmullRom(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointBezierQuad') static function getSplinePointBezierQuad(p1:RayVector2, c2:RayVector2, p3:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointBezierCubic') static function getSplinePointBezierCubic(p1:RayVector2, c2:RayVector2, c3:RayVector2, p4:RayVector2, t:Single):RayVector2;

	// Basic shapes collision detection functions

	@:native('CheckCollisionRecs') static function checkCollisionRecs(rec1:RayRectangle, rec2:RayRectangle):Bool;
	@:native('CheckCollisionCircles') static function checkCollisionCircles(center1:RayVector2, radius1:Single, center2:RayVector2, radius2:Single):Bool;
	@:native('CheckCollisionCircleRec') static function checkCollisionCircleRec(center:RayVector2, radius:Single, rec:RayRectangle):Bool;
	@:native('CheckCollisionPointRec') static function checkCollisionPointRec(point:RayVector2, rec:RayRectangle):Bool;
	@:native('CheckCollisionPointCircle') static function checkCollisionPointCircle(point:RayVector2, center:RayVector2, radius:Single):Bool;
	@:native('CheckCollisionPointTriangle') static function checkCollisionPointTriangle(point:RayVector2, p1:RayVector2, p2:RayVector2, p3:RayVector2):Bool;
	@:native('CheckCollisionPointPoly') static function checkCollisionPointPoly(point:RayVector2, points:cpp.RawPointer<RayVector2>, pointCount:Int):Bool;
	@:native('CheckCollisionLines') static function checkCollisionLines(startPos1:RayVector2, endPos1:RayVector2, startPos2:RayVector2, endPos2:RayVector2, collisionPoint:cpp.RawPointer<RayVector2>):Bool;
	@:native('CheckCollisionPointLine') static function checkCollisionPointLine(point:RayVector2, p1:RayVector2, p2:RayVector2, threshold:Int):Bool;
	@:native('GetCollisionRec') static function getCollisionRec(rec1:RayRectangle, rec2:RayRectangle):RayRectangle;

	//------------------------------------------------------------------------------------
	// Texture Loading and Drawing Functions (Module: textures)
	//------------------------------------------------------------------------------------

	// Image loading functions

	@:native('LoadImage') static function loadImage(fileName:cpp.ConstCharStar):RayImage;
	@:native('LoadImageRaw') static function loadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):RayImage;
	@:native('LoadImageSvg') static function loadImageSvg(fileNameOrString:cpp.ConstCharStar, width:Int, height:Int):RayImage;
	@:native('LoadImageAnim') static function loadImageAnim(fileName:cpp.ConstCharStar, frames:cpp.RawPointer<Int>):RayImage;
	@:native('LoadImageAnimFromMemory') static function loadImageAnimFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, frames:cpp.RawPointer<Int>):RayImage;
	@:native('LoadImageFromMemory') static function loadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):RayImage;
	@:native('LoadImageFromTexture') static function loadImageFromTexture(texture:RayTexture):RayImage;
	@:native('LoadImageFromScreen') static function loadImageFromScreen():RayImage;
	@:native('IsImageReady') static function isImageReady(image:RayImage):Bool;
	@:native('UnloadImage') static function unloadImage(image:RayImage):Void;
	@:native('ExportImage') static function exportImage(image:RayImage, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportImageToMemory') static function exportImageToMemory(image:RayImage, fileType:cpp.ConstCharStar, fileSize:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;
	@:native('ExportImageAsCode') static function exportImageAsCode(image:RayImage, fileName:cpp.ConstCharStar):Bool;

	// Image generation functions

	@:native('GenImageColor') static function genImageColor(width:Int, height:Int, color:RayColor):RayImage;
	@:native('GenImageGradientLinear') static function genImageGradientLinear(width:Int, height:Int, direction:Int, start:RayColor, end:RayColor):RayImage;
	@:native('GenImageGradientRadial') static function genImageGradientRadial(width:Int, height:Int, density:Single, inner:RayColor, outer:RayColor):RayImage;
	@:native('GenImageGradientSquare') static function genImageGradientSquare(width:Int, height:Int, density:Single, inner:RayColor, outer:RayColor):RayImage;
	@:native('GenImageChecked') static function genImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:RayColor, col2:RayColor):RayImage;
	@:native('GenImageWhiteNoise') static function genImageWhiteNoise(width:Int, height:Int, factor:Single):RayImage;
	@:native('GenImagePerlinNoise') static function genImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Single):RayImage;
	@:native('GenImageCellular') static function genImageCellular(width:Int, height:Int, tileSize:Int):RayImage;
	@:native('GenImageText') static function genImageText(width:Int, height:Int, text:cpp.ConstCharStar):RayImage;

	// Image manipulation functions

	@:native('ImageCopy') static function imageCopy(image:cpp.RawPointer<RayImage>):RayImage;
	@:native('ImageFromImage') static function imageFromImage(image:cpp.RawPointer<RayImage>, rec:RayRectangle):RayImage;
	@:native('ImageText') static function imageText(text:cpp.ConstCharStar, fontSize:Int, color:RayColor):RayImage;
	@:native('ImageTextEx') static function imageTextEx(font:RayFont, text:cpp.ConstCharStar, fontSize:Single, spacing:Single, tint:RayColor):RayImage;
	@:native('ImageFormat') static function imageFormat(image:cpp.RawPointer<RayImage>, newFormat:Int):Void;
	@:native('ImageToPOT') static function imageToPOT(image:cpp.RawPointer<RayImage>, fill:RayColor):Void;
	@:native('ImageCrop') static function imageCrop(image:cpp.RawPointer<RayImage>, crop:RayRectangle):Void;
	@:native('ImageAlphaCrop') static function imageAlphaCrop(image:cpp.RawPointer<RayImage>, threshold:Single):Void;
	@:native('ImageAlphaClear') static function imageAlphaClear(image:cpp.RawPointer<RayImage>, color:RayColor, threshold:Single):Void;
	@:native('ImageAlphaMask') static function imageAlphaMask(image:cpp.RawPointer<RayImage>, alphaMask:RayImage):Void;
	@:native('ImageAlphaPremultiply') static function imageAlphaPremultiply(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageBlurGaussian') static function imageBlurGaussian(image:cpp.RawPointer<RayImage>, blurSize:Int):Void;
	@:native('ImageKernelConvolution') static function imageKernelConvolution(image:cpp.RawPointer<RayImage>, kernel:cpp.RawPointer<Single>, kernelSize:Int):Void;
	@:native('ImageResize') static function imageResize(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;
	@:native('ImageResizeNN') static function imageResizeNN(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;
	@:native('ImageResizeCanvas') static function imageResizeCanvas(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:RayColor):Void;
	@:native('ImageMipmaps') static function imageMipmaps(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageDither') static function imageDither(image:cpp.RawPointer<RayImage>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;
	@:native('ImageFlipVertical') static function imageFlipVertical(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageFlipHorizontal') static function imageFlipHorizontal(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageRotate') static function imageRotate(image:cpp.RawPointer<RayImage>, degrees:Int):Void;
	@:native('ImageRotateCW') static function imageRotateCW(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageRotateCCW') static function imageRotateCCW(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageColorTint') static function imageColorTint(image:cpp.RawPointer<RayImage>, color:RayColor):Void;
	@:native('ImageColorInvert') static function imageColorInvert(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageColorGrayscale') static function imageColorGrayscale(image:cpp.RawPointer<RayImage>):Void;
	@:native('ImageColorContrast') static function imageColorContrast(image:cpp.RawPointer<RayImage>, contrast:Single):Void;
	@:native('ImageColorBrightness') static function imageColorBrightness(image:cpp.RawPointer<RayImage>, brightness:Int):Void;
	@:native('ImageColorReplace') static function imageColorReplace(image:cpp.RawPointer<RayImage>, color:RayColor, replace:RayColor):Void;
	@:native('LoadImageRayColors') static function loadImageRayColors(image:RayImage):cpp.RawPointer<RayColor>;
	@:native('LoadImagePalette') static function loadImagePalette(image:RayImage, maxPaletteSize:Int, colorCount:cpp.RawPointer<Int>):cpp.RawPointer<RayColor>;
	@:native('UnloadImageRayColors') static function unloadImageRayColors(colors:cpp.RawPointer<RayColor>):Void;
	@:native('UnloadImagePalette') static function unloadImagePalette(colors:cpp.RawPointer<RayColor>):Void;
	@:native('GetImageAlphaBorder') static function getImageAlphaBorder(image:RayImage, threshold:Single):RayRectangle;
	@:native('GetImageColor') static function getImageColor(image:RayImage, x:Int, y:Int):RayColor;

	// Image drawing functions

	@:native('ImageClearBackground') static function imageClearBackground(dst:cpp.RawPointer<RayImage>, color:RayColor):Void;
	@:native('ImageDrawPixel') static function imageDrawPixel(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, color:RayColor):Void;
	@:native('ImageDrawPixelV') static function imageDrawPixelV(dst:cpp.RawPointer<RayImage>, position:RayVector2, color:RayColor):Void;
	@:native('ImageDrawLine') static function imageDrawLine(dst:cpp.RawPointer<RayImage>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:RayColor):Void;
	@:native('ImageDrawLineV') static function imageDrawLineV(dst:cpp.RawPointer<RayImage>, start:RayVector2, end:RayVector2, color:RayColor):Void;
	@:native('ImageDrawCircle') static function imageDrawCircle(dst:cpp.RawPointer<RayImage>, centerX:Int, centerY:Int, radius:Int, color:RayColor):Void;
	@:native('ImageDrawCircleV') static function imageDrawCircleV(dst:cpp.RawPointer<RayImage>, center:RayVector2, radius:Int, color:RayColor):Void;
	@:native('ImageDrawCircleLines') static function imageDrawCircleLines(dst:cpp.RawPointer<RayImage>, centerX:Int, centerY:Int, radius:Int, color:RayColor):Void;
	@:native('ImageDrawCircleLinesV') static function imageDrawCircleLinesV(dst:cpp.RawPointer<RayImage>, center:RayVector2, radius:Int, color:RayColor):Void;
	@:native('ImageDrawRayRectangle') static function imageDrawRayRectangle(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;
	@:native('ImageDrawRayRectangleV') static function imageDrawRayRectangleV(dst:cpp.RawPointer<RayImage>, position:RayVector2, size:RayVector2, color:RayColor):Void;
	@:native('ImageDrawRayRectangleRec') static function imageDrawRayRectangleRec(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, color:RayColor):Void;
	@:native('ImageDrawRayRectangleLines') static function imageDrawRayRectangleLines(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, thick:Int, color:RayColor):Void;
	@:native('ImageDraw') static function imageDraw(dst:cpp.RawPointer<RayImage>, src:RayImage, srcRec:RayRectangle, dstRec:RayRectangle, tint:RayColor):Void;
	@:native('ImageDrawText') static function imageDrawText(dst:cpp.RawPointer<RayImage>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:RayColor):Void;
	@:native('ImageDrawTextEx') static function imageDrawTextEx(dst:cpp.RawPointer<RayImage>, font:RayFont, text:cpp.ConstCharStar, position:RayVector2, fontSize:Single, spacing:Single, tint:RayColor):Void;

	// Texture loading functions

	@:native('LoadTexture') static function loadTexture(fileName:cpp.ConstCharStar):RayTexture;
	@:native('LoadTextureFromImage') static function loadTextureFromImage(image:RayImage):RayTexture;
	@:native('LoadTextureCubemap') static function loadTextureCubemap(image:RayImage, layout:Int):RayTexture;
	@:native('LoadRenderTexture') static function loadRenderTexture(width:Int, height:Int):RayRenderTexture;
	@:native('IsTextureReady') static function isTextureReady(texture:RayTexture):Bool;
	@:native('UnloadTexture') static function unloadTexture(texture:RayTexture):Void;
	@:native('IsRenderTextureReady') static function isRenderTextureReady(target:RayRenderTexture):Bool;
	@:native('UnloadRenderTexture') static function unloadRenderTexture(target:RayRenderTexture):Void;
	@:native('UpdateTexture') static function updateTexture(texture:RayTexture, pixels:cpp.RawConstPointer<cpp.Void>):Void;
	@:native('UpdateTextureRec') static function updateTextureRec(texture:RayTexture, rec:RayRectangle, pixels:cpp.RawConstPointer<cpp.Void>):Void;

	// Texture configuration functions

	@:native('GenTextureMipmaps') static function genTextureMipmaps(texture:cpp.RawPointer<RayTexture>):Void;
	@:native('SetTextureFilter') static function setTextureFilter(texture:RayTexture, filter:Int):Void;
	@:native('SetTextureWrap') static function setTextureWrap(texture:RayTexture, wrap:Int):Void;

	// Texture drawing functions

	@:native('DrawTexture') static function drawTexture(texture:RayTexture, posX:Int, posY:Int, tint:RayColor):Void;
	@:native('DrawTextureV') static function drawTextureV(texture:RayTexture, position:RayVector2, tint:RayColor):Void;
	@:native('DrawTextureEx') static function drawTextureEx(texture:RayTexture, position:RayVector2, rotation:Single, scale:Single, tint:RayColor):Void;
	@:native('DrawTextureRec') static function drawTextureRec(texture:RayTexture, source:RayRectangle, position:RayVector2, tint:RayColor):Void;
	@:native('DrawTexturePro') static function drawTexturePro(texture:RayTexture, source:RayRectangle, dest:RayRectangle, origin:RayVector2, rotation:Single, tint:RayColor):Void;
	@:native('DrawTextureNPatch') static function drawTextureNPatch(texture:RayTexture, nPatchInfo:RayNPatchInfo, dest:RayRectangle, origin:RayVector2, rotation:Single, tint:RayColor):Void;

	// Color/pixel related functions                            

	@:native('ColorIsEqual') static function colorIsEqual(col1:RayColor, col2:RayColor):Bool;
	@:native('Fade') static function fade(color:RayColor, alpha:Single):RayColor;
	@:native('ColorToInt') static function colorToInt(color:RayColor):Int;
	@:native('ColorNormalize') static function colorNormalize(color:RayColor):RayVector4;
	@:native('ColorFromNormalized') static function colorFromNormalized(normalized:RayVector4):RayColor;
	@:native('ColorToHSV') static function colorToHSV(color:RayColor):RayVector3;
	@:native('ColorFromHSV') static function colorFromHSV(hue:Single, saturation:Single, value:Single):RayColor;
	@:native('ColorTint') static function colorTint(color:RayColor, tint:RayColor):RayColor;
	@:native('ColorBrightness') static function colorBrightness(color:RayColor, factor:Single):RayColor;
	@:native('ColorContrast') static function colorContrast(color:RayColor, contrast:Single):RayColor;
	@:native('ColorAlpha') static function colorAlpha(color:RayColor, alpha:Single):RayColor;
	@:native('ColorAlphaBlend') static function colorAlphaBlend(dst:RayColor, src:RayColor, tint:RayColor):RayColor;
	@:native('GetColor') static function getColor(hexValue:UInt):RayColor;
	@:native('GetPixelColor') static function getPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):RayColor;
	@:native('SetPixelColor') static function setPixelColor(dstPtr:cpp.RawPointer<cpp.Void>, color:RayColor, format:Int):Void;
	@:native('GetPixelDataSize') static function getPixelDataSize(width:Int, height:Int, format:Int):Int;

	// Font loading/unloading functions

	@:native('GetFontDefault') static function getFontDefault():RayFont;
	@:native('LoadFont') static function loadFont(fileName:cpp.ConstCharStar):RayFont;
	@:native('LoadFontEx') static function loadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, codepoints:cpp.RawPointer<Int>, codepointCount:Int):RayFont;
	@:native('LoadFontFromImage') static function loadFontFromImage(image:RayImage, key:RayColor, firstChar:Int):RayFont;
	@:native('LoadFontFromMemory') static function loadFontFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, codepoints:cpp.RawPointer<Int>, codepointCount:Int):RayFont;
	@:native('IsFontReady') static function isFontReady(font:RayFont):Bool;
	@:native('LoadFontData') static function loadFontData(fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, codepoints:cpp.RawPointer<Int>, codepointCount:Int, type:Int):cpp.RawPointer<RayGlyphInfo>;
	@:native('GenImageFontAtlas') static function genImageFontAtlas(glyphs:cpp.RawPointer<RayGlyphInfo>, glyphRecs:cpp.RawPointer<cpp.RawPointer<RayRectangle>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):RayImage;
	@:native('UnloadFontData') static function unloadFontData(glyphs:cpp.RawPointer<RayGlyphInfo>, glyphCount:Int):Void;
	@:native('UnloadFont') static function unloadFont(font:RayFont):Void;
	@:native('ExportFontAsCode') static function exportFontAsCode(font:RayFont, fileName:cpp.ConstCharStar):Bool;

	// Text drawing functions

	@:native('DrawFPS') static function drawFPS(posX:Int, posY:Int):Void;
	@:native('DrawText') static function drawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:RayColor):Void;
	@:native('DrawTextEx') static function drawTextEx(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, fontSize:Single, spacing:Single, tint:RayColor):Void;
	@:native('DrawTextPro') static function drawTextPro(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, origin:RayVector2, rotation:Single, fontSize:Single, spacing:Single, tint:RayColor):Void;
	@:native('DrawTextCodepoint') static function drawTextCodepoint(font:RayFont, codepoint:Int, position:RayVector2, fontSize:Single, tint:RayColor):Void;
	@:native('DrawTextCodepoints') static function drawTextCodepoints(font:RayFont, codepoints:cpp.RawPointer<Int>, codepointCount:Int, position:RayVector2, fontSize:Single, spacing:Single, tint:RayColor):Void;

	// Text font info functions

	@:native('SetTextLineSpacing') static function setTextLineSpacing(spacing:Int):Void;
	@:native('MeasureText') static function measureText(text:cpp.ConstCharStar, fontSize:Int):Int;
	@:native('MeasureTextEx') static function measureTextEx(font:RayFont, text:cpp.ConstCharStar, fontSize:Single, spacing:Single):RayVector2;
	@:native('GetGlyphIndex') static function getGlyphIndex(font:RayFont, codepoint:Int):Int;
	@:native('GetGlyphInfo') static function getGlyphInfo(font:RayFont, codepoint:Int):RayGlyphInfo;
	@:native('GetGlyphAtlasRec') static function getGlyphAtlasRec(font:RayFont, codepoint:Int):RayRectangle;

	// Text codepoints management functions (unicode characters)

	@:native('LoadUTF8') static function loadUTF8(codepoints:cpp.RawPointer<Int>, length:Int):cpp.ConstCharStar;
	@:native('UnloadUTF8') static function unloadUTF8(text:cpp.ConstCharStar):Void;
	@:native('LoadCodepoints') static function loadCodepoints(text:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<Int>;
	@:native('UnloadCodepoints') static function unloadCodepoints(codepoints:cpp.RawPointer<Int>):Void;
	@:native('GetCodepointCount') static function getCodepointCount(text:cpp.ConstCharStar):Int;
	@:native('GetCodepoint') static function getCodepoint(text:cpp.ConstCharStar, codepointSize:cpp.RawPointer<Int>):Int;
	@:native('GetCodepointNext') static function getCodepointNext(text:cpp.ConstCharStar, codepointSize:cpp.RawPointer<Int>):Int;
	@:native('GetCodepointPrevious') static function getCodepointPrevious(text:cpp.ConstCharStar, codepointSize:cpp.RawPointer<Int>):Int;
	@:native('CodepointToUTF8') static function codepointToUTF8(codepoint:Int, utf8Size:cpp.RawPointer<Int>):cpp.ConstCharStar;

	// Text strings management functions (no UTF-8 strings, only byte chars)

	@:native('TextCopy') static function textCopy(dst:cpp.RawPointer<cpp.UInt8>, src:cpp.ConstCharStar):Int;
	@:native('TextIsEqual') static function textIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool;
	@:native('TextLength') static function textLength(text:cpp.ConstCharStar):UInt;
	@:native('TextFormat') static function textFormat(text:cpp.ConstCharStar, args:cpp.Rest<cpp.VarArg>):cpp.ConstCharStar;
	@:native('TextSubtext') static function textSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar;
	@:native('TextReplace') static function textReplace(text:cpp.ConstCharStar, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextInsert') static function textInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.ConstCharStar;
	@:native('TextJoin') static function textJoin(textList:cpp.RawPointer<cpp.ConstCharStar>, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextSplit') static function textSplit(text:cpp.ConstCharStar, delimiter:cpp.Char, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.ConstCharStar>;
	@:native('TextAppend') static function textAppend(text:cpp.RawPointer<cpp.UInt8>, append:cpp.ConstCharStar, position:cpp.RawPointer<Int>):Void;
	@:native('TextFindIndex') static function textFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int;
	@:native('TextToUpper') static function textToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToLower') static function textToLower(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToPascal') static function textToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToInteger') static function textToInteger(text:cpp.ConstCharStar):Int;
	@:native('TextToFloat') static function textToFloat(text:cpp.ConstCharStar):Single;

	// Basic 3D Shapes Drawing Functions (Module: models)

	@:native('DrawLine3D') static function drawLine3D(startPos:RayVector3, endPos:RayVector3, color:RayColor):Void;
	@:native('DrawPoint3D') static function drawPoint3D(position:RayVector3, color:RayColor):Void;
	@:native('DrawCircle3D') static function drawCircle3D(center:RayVector3, radius:Single, rotationAxis:RayVector3, rotationAngle:Single, color:RayColor):Void;
	@:native('DrawTriangle3D') static function drawTriangle3D(v1:RayVector3, v2:RayVector3, v3:RayVector3, color:RayColor):Void;
	@:native('DrawTriangleStrip3D') static function drawTriangleStrip3D(points:cpp.RawPointer<RayVector3>, pointCount:Int, color:RayColor):Void;
	@:native('DrawCube') static function drawCube(position:RayVector3, width:Single, height:Single, length:Single, color:RayColor):Void;
	@:native('DrawCubeV') static function drawCubeV(position:RayVector3, size:RayVector3, color:RayColor):Void;
	@:native('DrawCubeWires') static function drawCubeWires(position:RayVector3, width:Single, height:Single, length:Single, color:RayColor):Void;
	@:native('DrawCubeWiresV') static function drawCubeWiresV(position:RayVector3, size:RayVector3, color:RayColor):Void;
	@:native('DrawSphere') static function drawSphere(centerPos:RayVector3, radius:Single, color:RayColor):Void;
	@:native('DrawSphereEx') static function drawSphereEx(centerPos:RayVector3, radius:Single, rings:Int, slices:Int, color:RayColor):Void;
	@:native('DrawSphereWires') static function drawSphereWires(centerPos:RayVector3, radius:Single, rings:Int, slices:Int, color:RayColor):Void;
	@:native('DrawCylinder') static function drawCylinder(position:RayVector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int, color:RayColor):Void;
	@:native('DrawCylinderEx') static function drawCylinderEx(startPos:RayVector3, endPos:RayVector3, startRadius:Single, endRadius:Single, sides:Int, color:RayColor):Void;
	@:native('DrawCylinderWires') static function drawCylinderWires(position:RayVector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int, color:RayColor):Void;
	@:native('DrawCylinderWiresEx') static function drawCylinderWiresEx(startPos:RayVector3, endPos:RayVector3, startRadius:Single, endRadius:Single, sides:Int, color:RayColor):Void;
	@:native('DrawCapsule') static function drawCapsule(startPos:RayVector3, endPos:RayVector3, radius:Single, slices:Int, rings:Int, color:RayColor):Void;
	@:native('DrawCapsuleWires') static function drawCapsuleWires(startPos:RayVector3, endPos:RayVector3, radius:Single, slices:Int, rings:Int, color:RayColor):Void;
	@:native('DrawPlane') static function drawPlane(centerPos:RayVector3, size:RayVector2, color:RayColor):Void;
	@:native('DrawRay') static function drawRay(ray:Ray, color:RayColor):Void;
	@:native('DrawGrid') static function drawGrid(slices:Int, spacing:Single):Void;

	// Model management functions

	@:native('LoadModel') static function loadModel(fileName:cpp.ConstCharStar):Model;
	@:native('LoadModelFromMesh') static function loadModelFromMesh(mesh:RayMesh):Model;
	@:native('IsModelReady') static function isModelReady(model:Model):Bool;
	@:native('UnloadModel') static function unloadModel(model:Model):Void;
	@:native('GetModelBoundingBox') static function getModelBoundingBox(model:Model):BoundingBox;

	// Model drawing functions

	@:native('DrawModel') static function drawModel(model:Model, position:RayVector3, scale:Single, tint:RayColor):Void;
	@:native('DrawModelEx') static function drawModelEx(model:Model, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Single, scale:RayVector3, tint:RayColor):Void;
	@:native('DrawModelWires') static function drawModelWires(model:Model, position:RayVector3, scale:Single, tint:RayColor):Void;
	@:native('DrawModelWiresEx') static function drawModelWiresEx(model:Model, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Single, scale:RayVector3, tint:RayColor):Void;
	@:native('DrawBoundingBox') static function drawBoundingBox(box:BoundingBox, color:RayColor):Void;
	@:native('DrawBillboard') static function drawBillboard(camera:RayCamera3D, texture:RayTexture, position:RayVector3, size:Single, tint:RayColor):Void;
	@:native('DrawBillboardRec') static function drawBillboardRec(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3, size:RayVector2, tint:RayColor):Void;
	@:native('DrawBillboardPro') static function drawBillboardPro(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3, up:RayVector3, size:RayVector2, origin:RayVector2,
		rotation:Single, tint:RayColor):Void;

	// Mesh management functions

	@:native('UploadMesh') static function uploadMesh(mesh:RayMesh, dynamicBuffer:Bool):Void;
	@:native('UpdateMeshBuffer') static function updateMeshBuffer(mesh:RayMesh, index:Int, data:cpp.RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;
	@:native('UnloadMesh') static function unloadMesh(mesh:RayMesh):Void;
	@:native('DrawMesh') static function drawMesh(mesh:RayMesh, material:Material, transform:RayMatrix):Void;
	@:native('DrawMeshInstanced') static function drawMeshInstanced(mesh:RayMesh, material:Material, transforms:cpp.RawPointer<RayMatrix>, instances:Int):Void;
	@:native('GetMeshBoundingBox') static function getMeshBoundingBox(mesh:RayMesh):BoundingBox;
	@:native('GenMeshTangents') static function genMeshTangents(mesh:RayMesh):Void;
	@:native('ExportMesh') static function exportMesh(mesh:RayMesh, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportMeshAsCode') static function exportMeshAsCode(mesh:RayMesh, fileName:cpp.ConstCharStar):Bool;

	// Mesh generation functions

	@:native('GenMeshPoly') static function genMeshPoly(sides:Int, radius:Single):RayMesh;
	@:native('GenMeshPlane') static function genMeshPlane(width:Single, length:Single, resX:Int, resZ:Int):RayMesh;
	@:native('GenMeshCube') static function genMeshCube(width:Single, height:Single, length:Single):RayMesh;
	@:native('GenMeshSphere') static function genMeshSphere(radius:Single, rings:Int, slices:Int):RayMesh;
	@:native('GenMeshHemiSphere') static function genMeshHemiSphere(radius:Single, rings:Int, slices:Int):RayMesh;
	@:native('GenMeshCylinder') static function genMeshCylinder(radius:Single, height:Single, slices:Int):RayMesh;
	@:native('GenMeshCone') static function genMeshCone(radius:Single, height:Single, slices:Int):RayMesh;
	@:native('GenMeshTorus') static function genMeshTorus(radius:Single, size:Single, radSeg:Int, sides:Int):RayMesh;
	@:native('GenMeshKnot') static function genMeshKnot(radius:Single, size:Single, radSeg:Int, sides:Int):RayMesh;
	@:native('GenMeshHeightmap') static function genMeshHeightmap(heightmap:RayImage, size:RayVector3):RayMesh;
	@:native('GenMeshCubicmap') static function genMeshCubicmap(cubicmap:RayImage, cubeSize:RayVector3):RayMesh;

	// Material loading/unloading functions

	@:native('LoadMaterials') static function loadMaterials(fileName:cpp.ConstCharStar, materialCount:cpp.RawPointer<Int>):cpp.RawPointer<Material>;
	@:native('LoadMaterialDefault') static function loadMaterialDefault():Material;
	@:native('IsMaterialReady') static function isMaterialReady(material:Material):Bool;
	@:native('UnloadMaterial') static function unloadMaterial(material:Material):Void;
	@:native('SetMaterialTexture') static function setMaterialTexture(material:cpp.RawPointer<Material>, mapType:Int, texture:RayTexture):Void;
	@:native('SetModelMeshMaterial') static function setModelMeshMaterial(model:cpp.RawPointer<Model>, meshId:Int, materialId:Int):Void;

	// Model animations loading/unloading functions

	@:native('LoadModelAnimations') static function loadModelAnimations(fileName:cpp.ConstCharStar, animCount:cpp.RawPointer<Int>):cpp.RawPointer<ModelAnimation>;
	@:native('UpdateModelAnimation') static function updateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;
	@:native('UnloadModelAnimation') static function unloadModelAnimation(anim:ModelAnimation):Void;
	@:native('UnloadModelAnimations') static function unloadModelAnimations(animations:cpp.RawPointer<ModelAnimation>, animCount:Int):Void;
	@:native('IsModelAnimationValid') static function isModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

	// Collision detection functions

	@:native('CheckCollisionSpheres') static function checkCollisionSpheres(center1:RayVector3, radius1:Single, center2:RayVector3, radius2:Single):Bool;
	@:native('CheckCollisionBoxes') static function checkCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;
	@:native('CheckCollisionBoxSphere') static function checkCollisionBoxSphere(box:BoundingBox, center:RayVector3, radius:Single):Bool;
	@:native('GetRayCollisionSphere') static function getRayCollisionSphere(ray:Ray, center:RayVector3, radius:Single):RayCollision;
	@:native('GetRayCollisionBox') static function getRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;
	@:native('GetRayCollisionMesh') static function getRayCollisionMesh(ray:Ray, mesh:RayMesh, transform:RayMatrix):RayCollision;
	@:native('GetRayCollisionTriangle') static function getRayCollisionTriangle(ray:Ray, p1:RayVector3, p2:RayVector3, p3:RayVector3):RayCollision;
	@:native('GetRayCollisionQuad') static function getRayCollisionQuad(ray:Ray, p1:RayVector3, p2:RayVector3, p3:RayVector3, p4:RayVector3):RayCollision;

	// Audio device management functions

	@:native('InitAudioDevice') static function initAudioDevice():Void;
	@:native('CloseAudioDevice') static function closeAudioDevice():Void;
	@:native('IsAudioDeviceReady') static function isAudioDeviceReady():Bool;
	@:native('SetMasterVolume') static function setMasterVolume(volume:Single):Void;
	@:native('GetMasterVolume') static function getMasterVolume():Single;

	// Wave/Sound loading/unloading functions

	@:native('LoadWave') static function loadWave(fileName:cpp.ConstCharStar):Wave;
	@:native('LoadWaveFromMemory') static function loadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Wave;
	@:native('IsWaveReady') static function isWaveReady(wave:Wave):Bool;
	@:native('LoadSound') static function loadSound(fileName:cpp.ConstCharStar):Sound;
	@:native('LoadSoundFromWave') static function loadSoundFromWave(wave:Wave):Sound;
	@:native('LoadSoundAlias') static function loadSoundAlias(source:Sound):Sound;
	@:native('IsSoundReady') static function isSoundReady(sound:Sound):Bool;
	@:native('UpdateSound') static function updateSound(sound:Sound, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void;
	@:native('UnloadWave') static function unloadWave(wave:Wave):Void;
	@:native('UnloadSound') static function unloadSound(sound:Sound):Void;
	@:native('UnloadSoundAlias') static function unloadSoundAlias(alias:Sound):Void;
	@:native('ExportWave') static function exportWave(wave:Wave, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportWaveAsCode') static function exportWaveAsCode(wave:Wave, fileName:cpp.ConstCharStar):Bool;

	// Wave/Sound management functions

	@:native('PlaySound') static function playSound(sound:Sound):Void;
	@:native('StopSound') static function stopSound(sound:Sound):Void;
	@:native('PauseSound') static function pauseSound(sound:Sound):Void;
	@:native('ResumeSound') static function resumeSound(sound:Sound):Void;
	@:native('IsSoundPlaying') static function isSoundPlaying(sound:Sound):Bool;
	@:native('SetSoundVolume') static function setSoundVolume(sound:Sound, volume:Single):Void;
	@:native('SetSoundPitch') static function setSoundPitch(sound:Sound, pitch:Single):Void;
	@:native('SetSoundPan') static function setSoundPan(sound:Sound, pan:Single):Void;
	@:native('WaveCopy') static function WaveCopy(wave:Wave):Wave;
	@:native('WaveCrop') static function WaveCrop(wave:cpp.RawPointer<Wave>, initFrame:Int, finalFrame:Int):Void;
	@:native('WaveFormat') static function WaveFormat(wave:cpp.RawPointer<Wave>, initSample:Int, finalSample:Int, channels:Int):Void;
	@:native('LoadWaveSamples') static function loadWaveSamples(wave:Wave):cpp.RawPointer<Single>;
	@:native('UnloadWaveSamples') static function unloadWaveSamples(samples:cpp.RawPointer<Single>):Void;

	// Music management functions

	@:native('LoadMusicStream') static function loadMusicStream(fileName:cpp.ConstCharStar):Music;
	@:native('LoadMusicStreamFromMemory') static function loadMusicStreamFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Music;
	@:native('IsMusicReady') static function isMusicReady(music:Music):Bool;
	@:native('UnloadMusicStream') static function unloadMusicStream(music:Music):Void;
	@:native('PlayMusicStream') static function playMusicStream(music:Music):Void;
	@:native('IsMusicStreamPlaying') static function isMusicStreamPlaying(music:Music):Bool;
	@:native('UpdateMusicStream') static function updateMusicStream(music:Music):Void;
	@:native('StopMusicStream') static function stopMusicStream(music:Music):Void;
	@:native('PauseMusicStream') static function pauseMusicStream(music:Music):Void;
	@:native('ResumeMusicStream') static function resumeMusicStream(music:Music):Void;
	@:native('SeekMusicStream') static function seekMusicStream(music:Music, position:Single):Void;
	@:native('SetMusicVolume') static function setMusicVolume(music:Music, volume:Single):Void;
	@:native('SetMusicPitch') static function setMusicPitch(music:Music, pitch:Single):Void;
	@:native('SetMusicPan') static function setMusicPan(music:Music, pan:Single):Void;
	@:native('GetMusicTimeLength') static function getMusicTimeLength(music:Music):Single;
	@:native('GetMusicTimePlayed') static function getMusicTimePlayed(music:Music):Single;

	// AudioStream management functions

	@:native('LoadAudioStream') static function loadAudioStream(sampleRate:cpp.UInt32, sampleSize:cpp.UInt32, channels:cpp.UInt32):AudioStream;
	@:native('IsAudioStreamReady') static function isAudioStreamReady(stream:AudioStream):Bool;
	@:native('UnloadAudioStream') static function unloadAudioStream(stream:AudioStream):Void;
	@:native('UpdateAudioStream') static function updateAudioStream(stream:AudioStream, data:cpp.RawConstPointer<cpp.Void>, samplesCount:Int):Void;
	@:native('IsAudioStreamProcessed') static function isAudioStreamProcessed(stream:AudioStream):Bool;
	@:native('PlayAudioStream') static function playAudioStream(stream:AudioStream):Void;
	@:native('PauseAudioStream') static function pauseAudioStream(stream:AudioStream):Void;
	@:native('ResumeAudioStream') static function resumeAudioStream(stream:AudioStream):Void;
	@:native('IsAudioStreamPlaying') static function isAudioStreamPlaying(stream:AudioStream):Bool;
	@:native('StopAudioStream') static function stopAudioStream(stream:AudioStream):Void;
	@:native('SetAudioStreamVolume') static function setAudioStreamVolume(stream:AudioStream, volume:Single):Void;
	@:native('SetAudioStreamPitch') static function setAudioStreamPitch(stream:AudioStream, pitch:Single):Void;
	@:native('SetAudioStreamPan') static function setAudioStreamPan(stream:AudioStream, pan:Single):Void;
	@:native('SetAudioStreamBufferSizeDefault') static function setAudioStreamBufferSizeDefault(size:Int):Void;
	@:native('SetAudioStreamCallback') static function setAudioStreamCallback(stream:AudioStream, callback:AudioCallback):Void;
	@:native('AttachAudioStreamProcessor') static function attachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;
	@:native('DetachAudioStreamProcessor') static function detachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;
	@:native('AttachAudioMixedProcessor') static function attachAudioMixedProcessor(processor:AudioCallback):Void;
	@:native('DetachAudioMixedProcessor') static function detachAudioMixedProcessor(processor:AudioCallback):Void;
}
