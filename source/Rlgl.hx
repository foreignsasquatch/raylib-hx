/**
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   raylib-hx is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
 *   BSD-like license that allows static linking with closed source software:
 *
 *   Copyright (c) 2021-2022 Ratul Krisna (@ForeignSasquatch)
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
 */

package;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

/*
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:unreflective
@:structAccess
@:native('rlVertexBuffer')
extern class RayRlVertexBuffer
{
    @:native('rlVertexBuffer')
    static function alloc():RayRlVertexBuffer;

    var elementCount:Int;
    var vertices:utils.FloatArray;
    var texcoords:utils.FloatArray;
    
}

// Dynamic vertex buffers (position + texcoords + colors + indices arrays)
typedef struct rlVertexBuffer {
    int elementCount;           // Number of elements in the buffer (QUADS)

    float *vertices;            // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    float *texcoords;           // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    unsigned char *colors;      // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
#if defined(GRAPHICS_API_OPENGL_11) || defined(GRAPHICS_API_OPENGL_33)
    unsigned int *indices;      // Vertex indices (in case vertex data comes indexed) (6 indices per quad)
#endif
#if defined(GRAPHICS_API_OPENGL_ES2)
    unsigned short *indices;    // Vertex indices (in case vertex data comes indexed) (6 indices per quad)
#endif
    unsigned int vaoId;         // OpenGL Vertex Array Object id
    unsigned int vboId[4];      // OpenGL Vertex Buffer Objects id (4 types of vertex data)
} rlVertexBuffer;

@:forward
extern abstract Vector2(cpp.Struct<RayVector2>) to cpp.Struct<RayVector2>
{
    inline function new(x:Single, y:Single):Void
    {
        final vec2:RayVector2 = RayVector2.alloc();
        vec2.x = x;
        vec2.y = y;
        this = vec2;
    }

    @:from
    static inline function fromNative(value:RayVector2):Vector2
        return cast value;

    @:to
    inline function toPointer():cpp.RawPointer<RayVector2>
        return cast cpp.RawPointer.addressOf(this);
}

// Draw call type
// NOTE: Only texture changes register a new draw, other state-change-related elements are not
// used at this moment (vaoId, shaderId, matrices), raylib just forces a batch draw call if any
// of those state-change happens (this is done in core module)
typedef struct rlDrawCall {
    int mode;                   // Drawing mode: LINES, TRIANGLES, QUADS
    int vertexCount;            // Number of vertex of the draw
    int vertexAlignment;        // Number of vertex required for index alignment (LINES, TRIANGLES)
    //unsigned int vaoId;       // Vertex array id to be used on the draw -> Using RLGL.currentBatch->vertexBuffer.vaoId
    //unsigned int shaderId;    // Shader id to be used on the draw -> Using RLGL.currentShaderId
    unsigned int textureId;     // Texture id to be used on the draw -> Use to create new draw call if changes

    //Matrix projection;        // Projection matrix for this draw -> Using RLGL.projection by default
    //Matrix modelview;         // Modelview matrix for this draw -> Using RLGL.modelview by default
} rlDrawCall;

// rlRenderBatch type
typedef struct rlRenderBatch {
    int bufferCount;            // Number of vertex buffers (multi-buffering support)
    int currentBuffer;          // Current buffer tracking in case of multi-buffering
    rlVertexBuffer *vertexBuffer; // Dynamic buffer(s) for vertex data

    rlDrawCall *draws;          // Draw calls array, depends on textureId
    int drawCounter;            // Draw calls counter
    float currentDepth;         // Current depth value for next draw
} rlRenderBatch;

// OpenGL version
typedef enum {
    RL_OPENGL_11 = 1,           // OpenGL 1.1
    RL_OPENGL_21,               // OpenGL 2.1 (GLSL 120)
    RL_OPENGL_33,               // OpenGL 3.3 (GLSL 330)
    RL_OPENGL_43,               // OpenGL 4.3 (using GLSL 330)
    RL_OPENGL_ES_20,            // OpenGL ES 2.0 (GLSL 100)
    RL_OPENGL_ES_30             // OpenGL ES 3.0 (GLSL 300 es)
} rlGlVersion;*/

extern enum abstract RlTraceLogLevel(RlTraceLogLevelImpl)
{
    @:native('RL_LOG_ALL') var Rl_LOG_ALL;
    @:native('RL_LOG_TRACE') var Rl_LOG_TRACE;
    @:native('RL_LOG_DEBUG') var Rl_LOG_DEBUG;
    @:native('RL_LOG_INFO') var Rl_LOG_INFO;
    @:native('RL_LOG_WARNING') var Rl_LOG_WARNING;
    @:native('RL_LOG_ERROR') var Rl_LOG_ERROR;
    @:native('RL_LOG_FATAL') var Rl_LOG_FATAL;
    @:native('RL_LOG_NONE') var Rl_LOG_NONE;

    @:from
    static inline function fromInt(i:Int):RlTraceLogLevel
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlTraceLogLevel')
private extern class RlTraceLogLevelImpl {}

extern enum abstract RlPixelFormat(RlPixelFormatImpl)
{
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE') var Rl_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA') var Rl_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5') var Rl_PIXELFORMAT_UNCOMPRESSED_R5G6B5;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8') var Rl_PIXELFORMAT_UNCOMPRESSED_R8G8B8;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1') var Rl_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4') var Rl_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8') var Rl_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32') var Rl_PIXELFORMAT_UNCOMPRESSED_R32;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32') var Rl_PIXELFORMAT_UNCOMPRESSED_R32G32B32;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32') var Rl_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16') var Rl_PIXELFORMAT_UNCOMPRESSED_R16;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16') var Rl_PIXELFORMAT_UNCOMPRESSED_R16G16B16;
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16') var Rl_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;
    @:native('RL_PIXELFORMAT_COMPRESSED_DXT1_RGB') var Rl_PIXELFORMAT_COMPRESSED_DXT1_RGB;
    @:native('RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA') var Rl_PIXELFORMAT_COMPRESSED_DXT1_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA') var Rl_PIXELFORMAT_COMPRESSED_DXT3_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA') var Rl_PIXELFORMAT_COMPRESSED_DXT5_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_ETC1_RGB') var Rl_PIXELFORMAT_COMPRESSED_ETC1_RGB;
    @:native('RL_PIXELFORMAT_COMPRESSED_ETC2_RGB') var Rl_PIXELFORMAT_COMPRESSED_ETC2_RGB;
    @:native('RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA') var Rl_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_PVRT_RGB') var Rl_PIXELFORMAT_COMPRESSED_PVRT_RGB;
    @:native('RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA') var Rl_PIXELFORMAT_COMPRESSED_PVRT_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA') var Rl_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;
    @:native('RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA') var Rl_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

    @:from
    static inline function fromInt(i:Int):RlPixelFormat
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlPixelFormat')
private extern class RlPixelFormatImpl {}

extern enum abstract RlTextureFilter(RlTextureFilterImpl)
{
    @:native('RL_TEXTURE_FILTER_POINT') var Rl_TEXTURE_FILTER_POINT;
    @:native('RL_TEXTURE_FILTER_BILINEAR') var Rl_TEXTURE_FILTER_BILINEAR;
    @:native('RL_TEXTURE_FILTER_TRILINEAR') var Rl_TEXTURE_FILTER_TRILINEAR;
    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_4X') var Rl_TEXTURE_FILTER_ANISOTROPIC_4X;
    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_8X') var Rl_TEXTURE_FILTER_ANISOTROPIC_8X;
    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_16X') var Rl_TEXTURE_FILTER_ANISOTROPIC_16X;

    @:from
    static inline function fromInt(i:Int):RlTextureFilter
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlTextureFilter')
private extern class RlTextureFilterImpl {}

extern enum abstract RlBlendMode(RlBlendModeImpl)
{
    @:native('RL_BLEND_ALPHA') var Rl_BLEND_ALPHA;
    @:native('RL_BLEND_ADDITIVE') var Rl_BLEND_ADDITIVE;
    @:native('RL_BLEND_MULTIPLIED') var Rl_BLEND_MULTIPLIED;
    @:native('RL_BLEND_ADD_COLORS') var Rl_BLEND_ADD_COLORS;
    @:native('RL_BLEND_SUBTRACT_COLORS') var Rl_BLEND_SUBTRACT_COLORS;
    @:native('RL_BLEND_ALPHA_PREMULTIPLY') var Rl_BLEND_ALPHA_PREMULTIPLY;
    @:native('RL_BLEND_CUSTOM') var Rl_BLEND_CUSTOM;
    @:native('RL_BLEND_CUSTOM_SEPARATE') var Rl_BLEND_CUSTOM_SEPARATE;

    @:from
    static inline function fromInt(i:Int):RlBlendMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlBlendMode')
private extern class RlBlendModeImpl {}

extern enum abstract RlShaderLocationIndex(RlShaderLocationIndexImpl)
{
    @:native('RL_SHADER_LOC_VERTEX_POSITION') var Rl_SHADER_LOC_VERTEX_POSITION;
    @:native('RL_SHADER_LOC_VERTEX_TEXCOORD01') var Rl_SHADER_LOC_VERTEX_TEXCOORD01;
    @:native('RL_SHADER_LOC_VERTEX_TEXCOORD02') var Rl_SHADER_LOC_VERTEX_TEXCOORD02;
    @:native('RL_SHADER_LOC_VERTEX_NORMAL') var Rl_SHADER_LOC_VERTEX_NORMAL;
    @:native('RL_SHADER_LOC_VERTEX_TANGENT') var Rl_SHADER_LOC_VERTEX_TANGENT;
    @:native('RL_SHADER_LOC_VERTEX_COLOR') var Rl_SHADER_LOC_VERTEX_COLOR;
    @:native('RL_SHADER_LOC_MATRIX_MVP') var Rl_SHADER_LOC_MATRIX_MVP;
    @:native('RL_SHADER_LOC_MATRIX_VIEW') var Rl_SHADER_LOC_MATRIX_VIEW;
    @:native('RL_SHADER_LOC_MATRIX_PROJECTION') var Rl_SHADER_LOC_MATRIX_PROJECTION;
    @:native('RL_SHADER_LOC_MATRIX_MODEL') var Rl_SHADER_LOC_MATRIX_MODEL;
    @:native('RL_SHADER_LOC_MATRIX_NORMAL') var Rl_SHADER_LOC_MATRIX_NORMAL;
    @:native('RL_SHADER_LOC_VECTOR_VIEW') var Rl_SHADER_LOC_VECTOR_VIEW;
    @:native('RL_SHADER_LOC_COLOR_DIFFUSE') var Rl_SHADER_LOC_COLOR_DIFFUSE;
    @:native('RL_SHADER_LOC_COLOR_SPECULAR') var Rl_SHADER_LOC_COLOR_SPECULAR;
    @:native('RL_SHADER_LOC_COLOR_AMBIENT') var Rl_SHADER_LOC_COLOR_AMBIENT;
    @:native('RL_SHADER_LOC_MAP_ALBEDO') var Rl_SHADER_LOC_MAP_ALBEDO;
    @:native('RL_SHADER_LOC_MAP_METALNESS') var Rl_SHADER_LOC_MAP_METALNESS;
    @:native('RL_SHADER_LOC_MAP_NORMAL') var Rl_SHADER_LOC_MAP_NORMAL;
    @:native('RL_SHADER_LOC_MAP_ROUGHNESS') var Rl_SHADER_LOC_MAP_ROUGHNESS;
    @:native('RL_SHADER_LOC_MAP_OCCLUSION') var Rl_SHADER_LOC_MAP_OCCLUSION;
    @:native('RL_SHADER_LOC_MAP_EMISSION') var Rl_SHADER_LOC_MAP_EMISSION;
    @:native('RL_SHADER_LOC_MAP_HEIGHT') var Rl_SHADER_LOC_MAP_HEIGHT;
    @:native('RL_SHADER_LOC_MAP_CUBEMAP') var Rl_SHADER_LOC_MAP_CUBEMAP;
    @:native('RL_SHADER_LOC_MAP_IRRADIANCE') var Rl_SHADER_LOC_MAP_IRRADIANCE;
    @:native('RL_SHADER_LOC_MAP_PREFILTER') var Rl_SHADER_LOC_MAP_PREFILTER;
    @:native('RL_SHADER_LOC_MAP_BRDF') var Rl_SHADER_LOC_MAP_BRDF;

    @:from
    static inline function fromInt(i:Int):RlShaderLocationIndex
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlShaderLocationIndex')
private extern class RlShaderLocationIndexImpl {}

extern enum abstract RlShaderUniformDataType(RlShaderUniformDataTypeImpl)
{
    @:native('RL_SHADER_UNIFORM_FLOAT') var Rl_SHADER_UNIFORM_FLOAT;
    @:native('RL_SHADER_UNIFORM_VEC2') var Rl_SHADER_UNIFORM_VEC2;
    @:native('RL_SHADER_UNIFORM_VEC3') var Rl_SHADER_UNIFORM_VEC3;
    @:native('RL_SHADER_UNIFORM_VEC4') var Rl_SHADER_UNIFORM_VEC4;
    @:native('RL_SHADER_UNIFORM_INT') var Rl_SHADER_UNIFORM_INT;
    @:native('RL_SHADER_UNIFORM_IVEC2') var Rl_SHADER_UNIFORM_IVEC2;
    @:native('RL_SHADER_UNIFORM_IVEC3') var Rl_SHADER_UNIFORM_IVEC3;
    @:native('RL_SHADER_UNIFORM_IVEC4') var Rl_SHADER_UNIFORM_IVEC4;
    @:native('RL_SHADER_UNIFORM_SAMPLER2D') var Rl_SHADER_UNIFORM_SAMPLER2D;

    @:from
    static inline function fromInt(i:Int):RlShaderUniformDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlShaderUniformDataType')
private extern class RlShaderUniformDataTypeImpl {}

extern enum abstract RlShaderAttributeDataType(RlShaderAttributeDataTypeImpl)
{
    @:native('RL_SHADER_ATTRIB_FLOAT') var Rl_SHADER_ATTRIB_FLOAT;
    @:native('RL_SHADER_ATTRIB_VEC2') var Rl_SHADER_ATTRIB_VEC2;
    @:native('RL_SHADER_ATTRIB_VEC3') var Rl_SHADER_ATTRIB_VEC3;
    @:native('RL_SHADER_ATTRIB_VEC4') var Rl_SHADER_ATTRIB_VEC4;

    @:from
    static inline function fromInt(i:Int):RlShaderAttributeDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlShaderAttributeDataType')
private extern class RlShaderAttributeDataTypeImpl {}

extern enum abstract RlFramebufferAttachType(RlFramebufferAttachTypeImpl)
{
    @:native('RL_ATTACHMENT_COLOR_CHANNEL0') var Rl_ATTACHMENT_COLOR_CHANNEL0;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL1') var Rl_ATTACHMENT_COLOR_CHANNEL1;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL2') var Rl_ATTACHMENT_COLOR_CHANNEL2;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL3') var Rl_ATTACHMENT_COLOR_CHANNEL3;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL4') var Rl_ATTACHMENT_COLOR_CHANNEL4;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL5') var Rl_ATTACHMENT_COLOR_CHANNEL5;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL6') var Rl_ATTACHMENT_COLOR_CHANNEL6;
    @:native('RL_ATTACHMENT_COLOR_CHANNEL7') var Rl_ATTACHMENT_COLOR_CHANNEL7;
    @:native('RL_ATTACHMENT_DEPTH') var Rl_ATTACHMENT_DEPTH;
    @:native('RL_ATTACHMENT_STENCIL') var Rl_ATTACHMENT_STENCIL;

    @:from
    static inline function fromInt(i:Int):RlFramebufferAttachType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlFramebufferAttachType')
private extern class RlFramebufferAttachTypeImpl {}

extern enum abstract RlFramebufferAttachTextureType(RlFramebufferAttachTextureTypeImpl)
{
    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_X') var Rl_ATTACHMENT_CUBEMAP_POSITIVE_X;
    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_X') var Rl_ATTACHMENT_CUBEMAP_NEGATIVE_X;
    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_Y') var Rl_ATTACHMENT_CUBEMAP_POSITIVE_Y;
    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y') var Rl_ATTACHMENT_CUBEMAP_NEGATIVE_Y;
    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_Z') var Rl_ATTACHMENT_CUBEMAP_POSITIVE_Z;
    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z') var Rl_ATTACHMENT_CUBEMAP_NEGATIVE_Z;
    @:native('RL_ATTACHMENT_TEXTURE2D') var Rl_ATTACHMENT_TEXTURE2D;
    @:native('RL_ATTACHMENT_RENDERBUFFER') var Rl_ATTACHMENT_RENDERBUFFER;

    @:from
    static inline function fromInt(i:Int):RlFramebufferAttachTextureType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlFramebufferAttachTextureType')
private extern class RlFramebufferAttachTextureTypeImpl {}

extern enum abstract RlCullMode(RlCullModeImpl)
{
    @:native('RL_CULL_FACE_FRONT') var Rl_CULL_FACE_FRONT;
    @:native('RL_CULL_FACE_BACK') var Rl_CULL_FACE_BACK;

    @:from
    static inline function fromInt(i:Int):RlCullMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:native('rlCullMode')
private extern class RlCullModeImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlgl-impl.h')
@:unreflective
extern class Rlgl
{
    @:native('RL_TEXTURE_WRAP_S') static var TEXTURE_WRAP_S:Int;
    @:native('RL_TEXTURE_WRAP_T') static var TEXTURE_WRAP_T:Int;
    @:native('RL_TEXTURE_MAG_FILTER') static var TEXTURE_MAG_FILTER:Int;
    @:native('RL_TEXTURE_MIN_FILTER') static var TEXTURE_MIN_FILTER:Int;
    @:native('RL_TEXTURE_FILTER_NEAREST') static var TEXTURE_FILTER_NEAREST:Int;
    @:native('RL_TEXTURE_FILTER_LINEAR') static var TEXTURE_FILTER_LINEAR:Int;
    @:native('RL_TEXTURE_FILTER_MIP_NEAREST') static var TEXTURE_FILTER_MIP_NEAREST:Int;
    @:native('RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR') static var TEXTURE_FILTER_NEAREST_MIP_LINEAR:Int;
    @:native('RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST') static var TEXTURE_FILTER_LINEAR_MIP_NEAREST:Int;
    @:native('RL_TEXTURE_FILTER_MIP_LINEAR') static var TEXTURE_FILTER_MIP_LINEAR:Int;
    @:native('RL_TEXTURE_FILTER_ANISOTROPIC') static var TEXTURE_FILTER_ANISOTROPIC:Int;
    @:native('RL_TEXTURE_MIPMAP_BIAS_RATIO') static var TEXTURE_MIPMAP_BIAS_RATIO:Int;
    @:native('RL_TEXTURE_WRAP_REPEAT') static var TEXTURE_WRAP_REPEAT:Int;
    @:native('RL_TEXTURE_WRAP_CLAMP') static var TEXTURE_WRAP_CLAMP:Int;
    @:native('RL_TEXTURE_WRAP_MIRROR_REPEAT') static var TEXTURE_WRAP_MIRROR_REPEAT:Int;
    @:native('RL_TEXTURE_WRAP_MIRROR_CLAMP') static var TEXTURE_WRAP_MIRROR_CLAMP:Int;
    @:native('RL_MODELVIEW') static var MODELVIEW:Int;
    @:native('RL_PROJECTION') static var PROJECTION:Int;
    @:native('RL_TEXTURE') static var TEXTURE:Int;
    @:native('RL_LINES') static var LINES:Int;
    @:native('RL_TRIANGLES') static var TRIANGLES:Int;
    @:native('RL_QUADS') static var QUADS:Int;
    @:native('RL_UNSIGNED_BYTE') static var UNSIGNED_BYTE:Int;
    @:native('RL_FLOAT') static var FLOAT:Int;
    @:native('RL_STREAM_DRAW') static var STREAM_DRAW:Int;
    @:native('RL_STREAM_READ') static var STREAM_READ:Int;
    @:native('RL_STREAM_COPY') static var STREAM_COPY:Int;
    @:native('RL_STATIC_DRAW') static var STATIC_DRAW:Int;
    @:native('RL_STATIC_READ') static var STATIC_READ:Int;
    @:native('RL_STATIC_COPY') static var STATIC_COPY:Int;
    @:native('RL_DYNAMIC_DRAW') static var DYNAMIC_DRAW:Int;
    @:native('RL_DYNAMIC_READ') static var DYNAMIC_READ:Int;
    @:native('RL_DYNAMIC_COPY') static var DYNAMIC_COPY:Int;
    @:native('RL_FRAGMENT_SHADER') static var FRAGMENT_SHADER:Int;
    @:native('RL_VERTEX_SHADER') static var VERTEX_SHADER:Int;
    @:native('RL_COMPUTE_SHADER') static var COMPUTE_SHADER:Int;
    @:native('RL_ZERO') static var ZERO:Int;
    @:native('RL_ONE') static var ONE:Int;
    @:native('RL_SRC_COLOR') static var SRC_COLOR:Int;
    @:native('RL_ONE_MINUS_SRC_COLOR') static var ONE_MINUS_SRC_COLOR:Int;
    @:native('RL_SRC_ALPHA') static var SRC_ALPHA:Int;
    @:native('RL_ONE_MINUS_SRC_ALPHA') static var ONE_MINUS_SRC_ALPHA:Int;
    @:native('RL_DST_ALPHA') static var DST_ALPHA:Int;
    @:native('RL_ONE_MINUS_DST_ALPHA') static var ONE_MINUS_DST_ALPHA:Int;
    @:native('RL_DST_COLOR') static var DST_COLOR:Int;
    @:native('RL_ONE_MINUS_DST_COLOR') static var ONE_MINUS_DST_COLOR:Int;
    @:native('RL_SRC_ALPHA_SATURATE') static var SRC_ALPHA_SATURATE:Int;
    @:native('RL_CONSTANT_COLOR') static var CONSTANT_COLOR:Int;
    @:native('RL_ONE_MINUS_CONSTANT_COLOR') static var ONE_MINUS_CONSTANT_COLOR:Int;
    @:native('RL_CONSTANT_ALPHA') static var CONSTANT_ALPHA:Int;
    @:native('RL_ONE_MINUS_CONSTANT_ALPHA') static var ONE_MINUS_CONSTANT_ALPHA:Int;
    @:native('RL_FUNC_ADD') static var FUNC_ADD:Int;
    @:native('RL_MIN') static var MIN:Int;
    @:native('RL_MAX') static var MAX:Int;
    @:native('RL_FUNC_SUBTRACT') static var FUNC_SUBTRACT:Int;
    @:native('RL_FUNC_REVERSE_SUBTRACT') static var FUNC_REVERSE_SUBTRACT:Int;
    @:native('RL_BLEND_EQUATION') static var BLEND_EQUATION:Int;
    @:native('RL_BLEND_EQUATION_RGB') static var BLEND_EQUATION_RGB:Int;
    @:native('RL_BLEND_EQUATION_ALPHA') static var BLEND_EQUATION_ALPHA:Int;
    @:native('RL_BLEND_DST_RGB') static var BLEND_DST_RGB:Int;
    @:native('RL_BLEND_SRC_RGB') static var BLEND_SRC_RGB:Int;
    @:native('RL_BLEND_DST_ALPHA') static var BLEND_DST_ALPHA:Int;
    @:native('RL_BLEND_SRC_ALPHA') static var BLEND_SRC_ALPHA:Int;
    @:native('RL_BLEND_COLOR') static var BLEND_COLOR:Int;
    @:native('RL_READ_FRAMEBUFFER') static var READ_FRAMEBUFFER:Int;
    @:native('RL_DRAW_FRAMEBUFFER') static var DRAW_FRAMEBUFFER:Int;

@:native("rlMatrixMode") static function rlMatrixMode(mode:Int):Void;
@:native("rlPushMatrix") static function rlPushMatrix():Void;
@:native("rlPopMatrix") static function rlPopMatrix():Void;
@:native("rlLoadIdentity") static function rlLoadIdentity():Void;
@:native("rlTranslatef") static function rlTranslatef(x:Single, y:Single, z:Single):Void;
@:native("rlRotatef") static function rlRotatef(angle:Single, x:Single, y:Single, z:Single):Void;
@:native("rlScalef") static function rlScalef(x:Single, y:Single, z:Single):Void;
@:native("rlMultMatrixf") static function rlMultMatrixf(matf:utils.FloatConstPointer):Void;
@:native("rlFrustum") static function rlFrustum(left:Single, right:Single, bottom:Single, top:Single, znear:Single, zfar:Single):Void;
@:native("rlOrtho") static function rlOrtho(left:Single, right:Single, bottom:Single, top:Single, znear:Single, zfar:Single):Void;
@:native("rlViewport") static function rlViewport(x:Int, y:Int, width:Int, height:Int):Void;
@:native("rlBegin") static function rlBegin(mode:Int):Void;
@:native("rlEnd") static function rlEnd():Void;
@:native("rlVertex2i") static function rlVertex2i(x:Int, y:Int):Void;
@:native("rlVertex2f") static function rlVertex2f(x:Single, y:Single):Void;
@:native("rlVertex3f") static function rlVertex3f(x:Single, y:Single, z:Single):Void;
@:native("rlTexCoord2f") static function rlTexCoord2f(x:Single, y:Single):Void;
@:native("rlNormal3f") static function rlNormal3f(x:Single, y:Single, z:Single):Void;
@:native("rlColor4ub") static function rlColor4ub(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Void;
@:native("rlColor3f") static function rlColor3f(x:Single, y:Single, z:Single):Void;
@:native("rlColor4f") static function rlColor4f(x:Single, y:Single, z:Single, w:Single):Void;
@:native("rlEnableVertexArray") static function rlEnableVertexArray(vaoId:cpp.UInt32):Bool;
@:native("rlDisableVertexArray") static function rlDisableVertexArray():Void;
@:native("rlEnableVertexBuffer") static function rlEnableVertexBuffer(id:cpp.UInt32):Void;
@:native("rlDisableVertexBuffer") static function rlDisableVertexBuffer():Void;
@:native("rlEnableVertexBufferElement") static function rlEnableVertexBufferElement(id:cpp.UInt32):Void;
@:native("rlDisableVertexBufferElement") static function rlDisableVertexBufferElement():Void;
@:native("rlEnableVertexAttribute") static function rlEnableVertexAttribute(index:cpp.UInt32):Void;
@:native("rlDisableVertexAttribute") static function rlDisableVertexAttribute(index:cpp.UInt32):Void;
#if GRAPHICS_API_OPENGL_11
@:native("rlEnableStatePointer") static function rlEnableStatePointer(vertexAttribType:Int, buffer:cpp.RawPointer<cpp.Void>):Void;
@:native("rlDisableStatePointer") static function rlDisableStatePointer(vertexAttribType:Int):Void;
#end
@:native("rlActiveTextureSlot") static function rlActiveTextureSlot(slot:Int):Void;
@:native("rlEnableTexture") static function rlEnableTexture(id:cpp.UInt32):Void;
@:native("rlDisableTexture") static function rlDisableTexture():Void;
@:native("rlEnableTextureCubemap") static function rlEnableTextureCubemap(id:cpp.UInt32):Void;
@:native("rlDisableTextureCubemap") static function rlDisableTextureCubemap():Void;
@:native("rlTextureParameters") static function rlTextureParameters(id:cpp.UInt32, param:Int, value:Int):Void;
@:native("rlCubemapParameters") static function rlCubemapParameters(id:cpp.UInt32, param:Int, value:Int):Void;
@:native("rlEnableShader") static function rlEnableShader(id:cpp.UInt32):Void;
@:native("rlDisableShader") static function rlDisableShader():Void;
@:native("rlEnableFramebuffer") static function rlEnableFramebuffer(id:cpp.UInt32):Void;
@:native("rlDisableFramebuffer") static function rlDisableFramebuffer():Void;
@:native("rlActiveDrawBuffers") static function rlActiveDrawBuffers(count:Int):Void;
@:native("rlBlitFramebuffer") static function rlBlitFramebuffer(srcX:Int, srcY:Int, srcWidth:Int, srcHeight:Int, dstX:Int, dstY:Int, dstWidth:Int, dstHeight:Int, bufferMask:Int):Void;
@:native("rlBindFramebuffer") static function rlBindFramebuffer(target:cpp.UInt32, framebuffer:cpp.UInt32):Void;
@:native("rlEnableColorBlend") static function rlEnableColorBlend():Void;
@:native("rlDisableColorBlend") static function rlDisableColorBlend():Void;
@:native("rlEnableDepthTest") static function rlEnableDepthTest():Void;
@:native("rlDisableDepthTest") static function rlDisableDepthTest():Void;
@:native("rlEnableDepthMask") static function rlEnableDepthMask():Void;
@:native("rlDisableDepthMask") static function rlDisableDepthMask():Void;
@:native("rlEnableBackfaceCulling") static function rlEnableBackfaceCulling():Void;
@:native("rlDisableBackfaceCulling") static function rlDisableBackfaceCulling():Void;
@:native("rlColorMask") static function rlColorMask(r:Bool, g:Bool, b:Bool, a:Bool):Void;
@:native("rlSetCullFace") static function rlSetCullFace(mode:Int):Void;
@:native("rlEnableScissorTest") static function rlEnableScissorTest():Void;
@:native("rlDisableScissorTest") static function rlDisableScissorTest():Void;
@:native("rlScissor") static function rlScissor(x:Int, y:Int, width:Int, height:Int):Void;
@:native("rlEnableWireMode") static function rlEnableWireMode():Void;
@:native("rlEnablePointMode") static function rlEnablePointMode():Void;
@:native("rlDisableWireMode") static function rlDisableWireMode():Void;
@:native("rlSetLineWidth") static function rlSetLineWidth(width:Single):Void;
@:native("rlGetLineWidth") static function rlGetLineWidth():Single;
@:native("rlEnableSmoothLines") static function rlEnableSmoothLines():Void;
@:native("rlDisableSmoothLines") static function rlDisableSmoothLines():Void;
@:native("rlEnableStereoRender") static function rlEnableStereoRender():Void;
@:native("rlDisableStereoRender") static function rlDisableStereoRender():Void;
@:native("rlIsStereoRenderEnabled") static function rlIsStereoRenderEnabled():Bool;
@:native("rlClearColor") static function rlClearColor(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Void;
@:native("rlClearScreenBuffers") static function rlClearScreenBuffers():Void;
@:native("rlCheckErrors") static function rlCheckErrors():Void;
@:native("rlSetBlendMode") static function rlSetBlendMode(mode:Int):Void;
@:native("rlSetBlendFactors") static function rlSetBlendFactors(glSrcFactor:Int, glDstFactor:Int, glEquation:Int):Void;
@:native("rlSetBlendFactorsSeparate") static function rlSetBlendFactorsSeparate(glSrcRGB:Int, glDstRGB:Int, glSrcAlpha:Int, glDstAlpha:Int, glEqRGB:Int, glEqAlpha:Int):Void;
@:native("rlglInit") static function rlglInit(width:Int, height:Int):Void;
@:native("rlglClose") static function rlglClose():Void;
@:native("rlLoadExtensions") static function rlLoadExtensions(loader:cpp.RawPointer<cpp.Void>):Void;
@:native("rlGetVersion") static function rlGetVersion():Int;
@:native("rlSetFramebufferWidth") static function rlSetFramebufferWidth(width:Int):Void;
@:native("rlGetFramebufferWidth") static function rlGetFramebufferWidth():Int;
@:native("rlSetFramebufferHeight") static function rlSetFramebufferHeight(height:Int):Void;
@:native("rlGetFramebufferHeight") static function rlGetFramebufferHeight():Int;
@:native("rlGetTextureIdDefault") static function rlGetTextureIdDefault():cpp.UInt32;
@:native("rlGetShaderIdDefault") static function rlGetShaderIdDefault():cpp.UInt32;
@:native("rlGetShaderLocsDefault") static function rlGetShaderLocsDefault():utils.IntPointer;
@:native("rlLoadRenderBatch") static function rlLoadRenderBatch(numBuffers:Int, bufferElements:Int):RlRenderBatch;
@:native("rlUnloadRenderBatch") static function rlUnloadRenderBatch(batch:RlRenderBatch):Void;
@:native("rlDrawRenderBatch") static function rlDrawRenderBatch(batch:cpp.RawPointer<RlRenderBatch>):Void;
@:native("rlSetRenderBatchActive") static function rlSetRenderBatchActive(batch:cpp.RawPointer<RlRenderBatch>):Void;
@:native("rlDrawRenderBatchActive") static function rlDrawRenderBatchActive():Void;
@:native("rlCheckRenderBatchLimit") static function rlCheckRenderBatchLimit(vCount:Int):Bool;
@:native("rlSetTexture") static function rlSetTexture(id:cpp.UInt32):Void;
}
