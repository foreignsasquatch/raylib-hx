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

package raylib;

import cpp.RawConstPointer;
import cpp.Callable;
import cpp.ConstCharStar;
import cpp.RawPointer;
import cpp.UInt32;
import cpp.UInt8;

import raylib.Types;

typedef RLGLLoadProc = Callable<(name:ConstCharStar) -> RawPointer<cpp.Void>>;

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:structAccess
@:native('rlVertexBuffer')
extern class RlVertexBuffer
{
    var elementCount:Int;
    var vertices:RawPointer<Single>;
    var texcoords:RawPointer<Single>;
    var normals:RawPointer<Single>;
    var colors:RawPointer<UInt8>;
    #if (GRAPHICS_API_OPENGL_11 || GRAPHICS_API_OPENGL_33)
    var indices:RawPointer<UInt32>;
    #elseif GRAPHICS_API_OPENGL_ES2
    var indices:RawPointer<UInt16>;
    #end
    var vaoId:UInt32;
    var vboId:RawPointer<UInt32>;

    function new():Void;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:structAccess
@:native('rlDrawCall')
extern class RlDrawCall
{
    var mode:Int;
    var vertexCount:Int;
    var vertexAlignment:Int;
    var textureId:UInt32;

    function new():Void;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:structAccess
@:native('rlRenderBatch')
extern class RlRenderBatch
{
    var bufferCount:Int;
    var currentBuffer:Int;
    var vertexBuffer:RawPointer<RlVertexBuffer>;
    var draws:RawPointer<RlDrawCall>;
    var drawCounter:Int;
    var currentDepth:Single;

    function new():Void;
}

extern enum abstract RlGlVersion(RlGlVersionImpl)
{
    @:native('RL_OPENGL_11')
    var RL_OPENGL_11;

    @:native('RL_OPENGL_21')
    var RL_OPENGL_21;

    @:native('RL_OPENGL_33')
    var RL_OPENGL_33;

    @:native('RL_OPENGL_43')
    var RL_OPENGL_43;

    @:native('RL_OPENGL_ES_20')
    var RL_OPENGL_ES_20;

    @:native('RL_OPENGL_ES_30')
    var RL_OPENGL_ES_30;

    @:from
    static inline function fromInt(i:Int):RlGlVersion
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlGlVersion')
private extern class RlGlVersionImpl {}

extern enum abstract RlTraceLogLevel(RlTraceLogLevelImpl)
{
    @:native('RL_LOG_ALL')
    var RL_LOG_ALL;

    @:native('RL_LOG_TRACE')
    var RL_LOG_TRACE;

    @:native('RL_LOG_DEBUG')
    var RL_LOG_DEBUG;

    @:native('RL_LOG_INFO')
    var RL_LOG_INFO;

    @:native('RL_LOG_WARNING')
    var RL_LOG_WARNING;

    @:native('RL_LOG_ERROR')
    var RL_LOG_ERROR;

    @:native('RL_LOG_FATAL')
    var RL_LOG_FATAL;

    @:native('RL_LOG_NONE')
    var RL_LOG_NONE;

    @:from
    static inline function fromInt(i:Int):RlTraceLogLevel
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlTraceLogLevel')
private extern class RlTraceLogLevelImpl {}

extern enum abstract RlPixelFormat(RlPixelFormatImpl)
{
    @:native('RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE')
    var RL_PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA')
    var RL_PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5')
    var RL_PIXELFORMAT_UNCOMPRESSED_R5G6B5;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8')
    var RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1')
    var RL_PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4')
    var RL_PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8')
    var RL_PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32')
    var RL_PIXELFORMAT_UNCOMPRESSED_R32;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32')
    var RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32')
    var RL_PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16')
    var RL_PIXELFORMAT_UNCOMPRESSED_R16;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16')
    var RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16;

    @:native('RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16')
    var RL_PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;

    @:native('RL_PIXELFORMAT_COMPRESSED_DXT1_RGB')
    var RL_PIXELFORMAT_COMPRESSED_DXT1_RGB;

    @:native('RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_DXT1_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_DXT3_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_DXT5_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_ETC1_RGB')
    var RL_PIXELFORMAT_COMPRESSED_ETC1_RGB;

    @:native('RL_PIXELFORMAT_COMPRESSED_ETC2_RGB')
    var RL_PIXELFORMAT_COMPRESSED_ETC2_RGB;

    @:native('RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_PVRT_RGB')
    var RL_PIXELFORMAT_COMPRESSED_PVRT_RGB;

    @:native('RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_PVRT_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;

    @:native('RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA')
    var RL_PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

    @:from
    static inline function fromInt(i:Int):RlPixelFormat
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlPixelFormat')
private extern class RlPixelFormatImpl {}

extern enum abstract RlTextureFilter(RlTextureFilterImpl)
{
    @:native('RL_TEXTURE_FILTER_POINT')
    var RL_TEXTURE_FILTER_POINT;

    @:native('RL_TEXTURE_FILTER_BILINEAR')
    var RL_TEXTURE_FILTER_BILINEAR;

    @:native('RL_TEXTURE_FILTER_TRILINEAR')
    var RL_TEXTURE_FILTER_TRILINEAR;

    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_4X')
    var RL_TEXTURE_FILTER_ANISOTROPIC_4X;

    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_8X')
    var RL_TEXTURE_FILTER_ANISOTROPIC_8X;

    @:native('RL_TEXTURE_FILTER_ANISOTROPIC_16X')
    var RL_TEXTURE_FILTER_ANISOTROPIC_16X;

    @:from
    static inline function fromInt(i:Int):RlTextureFilter
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlTextureFilter')
private extern class RlTextureFilterImpl {}

extern enum abstract RlBlendMode(RlBlendModeImpl)
{
    @:native('RL_BLEND_ALPHA')
    var RL_BLEND_ALPHA;

    @:native('RL_BLEND_ADDITIVE')
    var RL_BLEND_ADDITIVE;

    @:native('RL_BLEND_MULTIPLIED')
    var RL_BLEND_MULTIPLIED;

    @:native('RL_BLEND_ADD_COLORS')
    var RL_BLEND_ADD_COLORS;

    @:native('RL_BLEND_SUBTRACT_COLORS')
    var RL_BLEND_SUBTRACT_COLORS;

    @:native('RL_BLEND_ALPHA_PREMULTIPLY')
    var RL_BLEND_ALPHA_PREMULTIPLY;

    @:native('RL_BLEND_CUSTOM')
    var RL_BLEND_CUSTOM;

    @:native('RL_BLEND_CUSTOM_SEPARATE')
    var RL_BLEND_CUSTOM_SEPARATE;

    @:from
    static inline function fromInt(i:Int):RlBlendMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlBlendMode')
private extern class RlBlendModeImpl {}

extern enum abstract RlShaderLocationIndex(RlShaderLocationIndexImpl)
{
    @:native('RL_SHADER_LOC_VERTEX_POSITION')
    var RL_SHADER_LOC_VERTEX_POSITION;

    @:native('RL_SHADER_LOC_VERTEX_TEXCOORD01')
    var RL_SHADER_LOC_VERTEX_TEXCOORD01;

    @:native('RL_SHADER_LOC_VERTEX_TEXCOORD02')
    var RL_SHADER_LOC_VERTEX_TEXCOORD02;

    @:native('RL_SHADER_LOC_VERTEX_NORMAL')
    var RL_SHADER_LOC_VERTEX_NORMAL;

    @:native('RL_SHADER_LOC_VERTEX_TANGENT')
    var RL_SHADER_LOC_VERTEX_TANGENT;

    @:native('RL_SHADER_LOC_VERTEX_COLOR')
    var RL_SHADER_LOC_VERTEX_COLOR;

    @:native('RL_SHADER_LOC_MATRIX_MVP')
    var RL_SHADER_LOC_MATRIX_MVP;

    @:native('RL_SHADER_LOC_MATRIX_VIEW')
    var RL_SHADER_LOC_MATRIX_VIEW;

    @:native('RL_SHADER_LOC_MATRIX_PROJECTION')
    var RL_SHADER_LOC_MATRIX_PROJECTION;

    @:native('RL_SHADER_LOC_MATRIX_MODEL')
    var RL_SHADER_LOC_MATRIX_MODEL;

    @:native('RL_SHADER_LOC_MATRIX_NORMAL')
    var RL_SHADER_LOC_MATRIX_NORMAL;

    @:native('RL_SHADER_LOC_VECTOR_VIEW')
    var RL_SHADER_LOC_VECTOR_VIEW;

    @:native('RL_SHADER_LOC_COLOR_DIFFUSE')
    var RL_SHADER_LOC_COLOR_DIFFUSE;

    @:native('RL_SHADER_LOC_COLOR_SPECULAR')
    var RL_SHADER_LOC_COLOR_SPECULAR;

    @:native('RL_SHADER_LOC_COLOR_AMBIENT')
    var RL_SHADER_LOC_COLOR_AMBIENT;

    @:native('RL_SHADER_LOC_MAP_ALBEDO')
    var RL_SHADER_LOC_MAP_ALBEDO;

    @:native('RL_SHADER_LOC_MAP_METALNESS')
    var RL_SHADER_LOC_MAP_METALNESS;

    @:native('RL_SHADER_LOC_MAP_NORMAL')
    var RL_SHADER_LOC_MAP_NORMAL;

    @:native('RL_SHADER_LOC_MAP_ROUGHNESS')
    var RL_SHADER_LOC_MAP_ROUGHNESS;

    @:native('RL_SHADER_LOC_MAP_OCCLUSION')
    var RL_SHADER_LOC_MAP_OCCLUSION;

    @:native('RL_SHADER_LOC_MAP_EMISSION')
    var RL_SHADER_LOC_MAP_EMISSION;

    @:native('RL_SHADER_LOC_MAP_HEIGHT')
    var RL_SHADER_LOC_MAP_HEIGHT;

    @:native('RL_SHADER_LOC_MAP_CUBEMAP')
    var RL_SHADER_LOC_MAP_CUBEMAP;

    @:native('RL_SHADER_LOC_MAP_IRRADIANCE')
    var RL_SHADER_LOC_MAP_IRRADIANCE;

    @:native('RL_SHADER_LOC_MAP_PREFILTER')
    var RL_SHADER_LOC_MAP_PREFILTER;

    @:native('RL_SHADER_LOC_MAP_BRDF')
    var RL_SHADER_LOC_MAP_BRDF;

    @:from
    static inline function fromInt(i:Int):RlShaderLocationIndex
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlShaderLocationIndex')
private extern class RlShaderLocationIndexImpl {}

extern enum abstract RlShaderUniformDataType(RlShaderUniformDataTypeImpl)
{
    @:native('RL_SHADER_UNIFORM_FLOAT')
    var RL_SHADER_UNIFORM_FLOAT;

    @:native('RL_SHADER_UNIFORM_VEC2')
    var RL_SHADER_UNIFORM_VEC2;

    @:native('RL_SHADER_UNIFORM_VEC3')
    var RL_SHADER_UNIFORM_VEC3;

    @:native('RL_SHADER_UNIFORM_VEC4')
    var RL_SHADER_UNIFORM_VEC4;

    @:native('RL_SHADER_UNIFORM_INT')
    var RL_SHADER_UNIFORM_INT;

    @:native('RL_SHADER_UNIFORM_IVEC2')
    var RL_SHADER_UNIFORM_IVEC2;

    @:native('RL_SHADER_UNIFORM_IVEC3')
    var RL_SHADER_UNIFORM_IVEC3;

    @:native('RL_SHADER_UNIFORM_IVEC4')
    var RL_SHADER_UNIFORM_IVEC4;

    @:native('RL_SHADER_UNIFORM_UINT')
    var RL_SHADER_UNIFORM_UINT;

    @:native('RL_SHADER_UNIFORM_UIVEC2')
    var RL_SHADER_UNIFORM_UIVEC2;

    @:native('RL_SHADER_UNIFORM_UIVEC3')
    var RL_SHADER_UNIFORM_UIVEC3;

    @:native('RL_SHADER_UNIFORM_UIVEC4')
    var RL_SHADER_UNIFORM_UIVEC4;

    @:native('RL_SHADER_UNIFORM_SAMPLER2D')
    var RL_SHADER_UNIFORM_SAMPLER2D;

    @:from
    static inline function fromInt(i:Int):RlShaderUniformDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlShaderUniformDataType')
private extern class RlShaderUniformDataTypeImpl {}

extern enum abstract RlShaderAttributeDataType(RlShaderAttributeDataTypeImpl)
{
    @:native('RL_SHADER_ATTRIB_FLOAT')
    var RL_SHADER_ATTRIB_FLOAT;

    @:native('RL_SHADER_ATTRIB_VEC2')
    var RL_SHADER_ATTRIB_VEC2;

    @:native('RL_SHADER_ATTRIB_VEC3')
    var RL_SHADER_ATTRIB_VEC3;

    @:native('RL_SHADER_ATTRIB_VEC4')
    var RL_SHADER_ATTRIB_VEC4;

    @:from
    static inline function fromInt(i:Int):RlShaderAttributeDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlShaderAttributeDataType')
private extern class RlShaderAttributeDataTypeImpl {}

extern enum abstract RlFramebufferAttachType(RlFramebufferAttachTypeImpl)
{
    @:native('RL_ATTACHMENT_COLOR_CHANNEL0')
    var RL_ATTACHMENT_COLOR_CHANNEL0;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL1')
    var RL_ATTACHMENT_COLOR_CHANNEL1;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL2')
    var RL_ATTACHMENT_COLOR_CHANNEL2;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL3')
    var RL_ATTACHMENT_COLOR_CHANNEL3;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL4')
    var RL_ATTACHMENT_COLOR_CHANNEL4;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL5')
    var RL_ATTACHMENT_COLOR_CHANNEL5;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL6')
    var RL_ATTACHMENT_COLOR_CHANNEL6;

    @:native('RL_ATTACHMENT_COLOR_CHANNEL7')
    var RL_ATTACHMENT_COLOR_CHANNEL7;

    @:native('RL_ATTACHMENT_DEPTH')
    var RL_ATTACHMENT_DEPTH;

    @:native('RL_ATTACHMENT_STENCIL')
    var RL_ATTACHMENT_STENCIL;

    @:from
    static inline function fromInt(i:Int):RlFramebufferAttachType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlFramebufferAttachType')
private extern class RlFramebufferAttachTypeImpl {}

extern enum abstract RlFramebufferAttachTextureType(RlFramebufferAttachTextureTypeImpl)
{
    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_X')
    var RL_ATTACHMENT_CUBEMAP_POSITIVE_X;

    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_X')
    var RL_ATTACHMENT_CUBEMAP_NEGATIVE_X;

    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_Y')
    var RL_ATTACHMENT_CUBEMAP_POSITIVE_Y;

    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y')
    var RL_ATTACHMENT_CUBEMAP_NEGATIVE_Y;

    @:native('RL_ATTACHMENT_CUBEMAP_POSITIVE_Z')
    var RL_ATTACHMENT_CUBEMAP_POSITIVE_Z;

    @:native('RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z')
    var RL_ATTACHMENT_CUBEMAP_NEGATIVE_Z;

    @:native('RL_ATTACHMENT_TEXTURE2D')
    var RL_ATTACHMENT_TEXTURE2D;

    @:native('RL_ATTACHMENT_RENDERBUFFER')
    var RL_ATTACHMENT_RENDERBUFFER;

    @:from
    static inline function fromInt(i:Int):RlFramebufferAttachTextureType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlFramebufferAttachTextureType')
private extern class RlFramebufferAttachTextureTypeImpl {}

extern enum abstract RlCullMode(RlCullModeImpl)
{
    @:native('RL_CULL_FACE_FRONT')
    var RL_CULL_FACE_FRONT;

    @:native('RL_CULL_FACE_BACK')
    var RL_CULL_FACE_BACK;

    @:from
    static inline function fromInt(i:Int):RlCullMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
@:native('rlCullMode')
private extern class RlCullModeImpl {}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rlgl.h')
extern class RLGL
{
    @:native('RLGL_VERSION')
    static var RL_VERSION:ConstCharStar;

    @:native('RL_DEFAULT_BATCH_BUFFER_ELEMENTS')
    static var RL_DEFAULT_BATCH_BUFFER_ELEMENTS:UInt32;

    @:native('RL_DEFAULT_BATCH_BUFFERS')
    static var RL_DEFAULT_BATCH_BUFFERS:UInt32;

    @:native('RL_DEFAULT_BATCH_DRAWCALLS')
    static var RL_DEFAULT_BATCH_DRAWCALLS:UInt32;

    @:native('RL_MAX_MATRIX_STACK_SIZE')
    static var RL_MAX_MATRIX_STACK_SIZE:UInt32;

    @:native('RL_MAX_SHADER_LOCATIONS')
    static var RL_MAX_SHADER_LOCATIONS:UInt32;

    @:native('RL_CULL_DISTANCE_NEAR')
    static var RL_CULL_DISTANCE_NEAR:Single;

    @:native('RL_CULL_DISTANCE_FAR')
    static var RL_CULL_DISTANCE_FAR:Single;

    @:native('RL_TEXTURE_WRAP_S')
    static var RL_TEXTURE_WRAP_S:UInt32;

    @:native('RL_TEXTURE_WRAP_T')
    static var RL_TEXTURE_WRAP_T:UInt32;

    @:native('RL_TEXTURE_MAG_FILTER')
    static var RL_TEXTURE_MAG_FILTER:UInt32;

    @:native('RL_TEXTURE_MIN_FILTER')
    static var RL_TEXTURE_MIN_FILTER:UInt32;

    @:native('RL_TEXTURE_FILTER_NEAREST')
    static var RL_TEXTURE_FILTER_NEAREST:UInt32;

    @:native('RL_TEXTURE_FILTER_LINEAR')
    static var RL_TEXTURE_FILTER_LINEAR:UInt32;

    @:native('RL_TEXTURE_FILTER_MIP_NEAREST')
    static var RL_TEXTURE_FILTER_MIP_NEAREST:UInt32;

    @:native('RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR')
    static var RL_TEXTURE_FILTER_NEAREST_MIP_LINEAR:UInt32;

    @:native('RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST')
    static var RL_TEXTURE_FILTER_LINEAR_MIP_NEAREST:UInt32;

    @:native('RL_TEXTURE_FILTER_MIP_LINEAR')
    static var RL_TEXTURE_FILTER_MIP_LINEAR:UInt32;

    @:native('RL_TEXTURE_FILTER_ANISOTROPIC')
    static var RL_TEXTURE_FILTER_ANISOTROPIC:UInt32;

    @:native('RL_TEXTURE_MIPMAP_BIAS_RATIO')
    static var RL_TEXTURE_MIPMAP_BIAS_RATIO:UInt32;

    @:native('RL_TEXTURE_WRAP_REPEAT')
    static var RL_TEXTURE_WRAP_REPEAT:UInt32;

    @:native('RL_TEXTURE_WRAP_CLAMP')
    static var RL_TEXTURE_WRAP_CLAMP:UInt32;

    @:native('RL_TEXTURE_WRAP_MIRROR_REPEAT')
    static var RL_TEXTURE_WRAP_MIRROR_REPEAT:UInt32;

    @:native('RL_TEXTURE_WRAP_MIRROR_CLAMP')
    static var RL_TEXTURE_WRAP_MIRROR_CLAMP:UInt32;

    @:native('RL_MODELVIEW')
    static var RL_MODELVIEW:UInt32;

    @:native('RL_PROJECTION')
    static var RL_PROJECTION:UInt32;

    @:native('RL_TEXTURE')
    static var RL_TEXTURE:UInt32;

    @:native('RL_LINES')
    static var RL_LINES:UInt32;

    @:native('RL_TRIANGLES')
    static var RL_TRIANGLES:UInt32;

    @:native('RL_QUADS')
    static var RL_QUADS:UInt32;

    @:native('RL_UNSIGNED_BYTE')
    static var RL_UNSIGNED_BYTE:UInt32;

    @:native('RL_FLOAT')
    static var RL_FLOAT:UInt32;

    @:native('RL_STREAM_DRAW')
    static var RL_STREAM_DRAW:UInt32;

    @:native('RL_STREAM_READ')
    static var RL_STREAM_READ:UInt32;

    @:native('RL_STREAM_COPY')
    static var RL_STREAM_COPY:UInt32;

    @:native('RL_STATIC_DRAW')
    static var RL_STATIC_DRAW:UInt32;

    @:native('RL_STATIC_READ')
    static var RL_STATIC_READ:UInt32;

    @:native('RL_STATIC_COPY')
    static var RL_STATIC_COPY:UInt32;

    @:native('RL_DYNAMIC_DRAW')
    static var RL_DYNAMIC_DRAW:UInt32;

    @:native('RL_DYNAMIC_READ')
    static var RL_DYNAMIC_READ:UInt32;

    @:native('RL_DYNAMIC_COPY')
    static var RL_DYNAMIC_COPY:UInt32;

    @:native('RL_FRAGMENT_SHADER')
    static var RL_FRAGMENT_SHADER:UInt32;

    @:native('RL_VERTEX_SHADER')
    static var RL_VERTEX_SHADER:UInt32;

    @:native('RL_COMPUTE_SHADER')
    static var RL_COMPUTE_SHADER:UInt32;

    @:native('RL_ZERO')
    static var RL_ZERO:UInt32;

    @:native('RL_ONE')
    static var RL_ONE:UInt32;

    @:native('RL_SRC_COLOR')
    static var RL_SRC_COLOR:UInt32;

    @:native('RL_ONE_MINUS_SRC_COLOR')
    static var RL_ONE_MINUS_SRC_COLOR:UInt32;

    @:native('RL_SRC_ALPHA')
    static var RL_SRC_ALPHA:UInt32;

    @:native('RL_ONE_MINUS_SRC_ALPHA')
    static var RL_ONE_MINUS_SRC_ALPHA:UInt32;

    @:native('RL_DST_ALPHA')
    static var RL_DST_ALPHA:UInt32;

    @:native('RL_ONE_MINUS_DST_ALPHA')
    static var RL_ONE_MINUS_DST_ALPHA:UInt32;

    @:native('RL_DST_COLOR')
    static var RL_DST_COLOR:UInt32;

    @:native('RL_ONE_MINUS_DST_COLOR')
    static var RL_ONE_MINUS_DST_COLOR:UInt32;

    @:native('RL_SRC_ALPHA_SATURATE')
    static var RL_SRC_ALPHA_SATURATE:UInt32;

    @:native('RL_CONSTANT_COLOR')
    static var RL_CONSTANT_COLOR:UInt32;

    @:native('RL_ONE_MINUS_CONSTANT_COLOR')
    static var RL_ONE_MINUS_CONSTANT_COLOR:UInt32;

    @:native('RL_CONSTANT_ALPHA')
    static var RL_CONSTANT_ALPHA:UInt32;

    @:native('RL_ONE_MINUS_CONSTANT_ALPHA')
    static var RL_ONE_MINUS_CONSTANT_ALPHA:UInt32;

    @:native('RL_FUNC_ADD')
    static var RL_FUNC_ADD:UInt32;

    @:native('RL_MIN')
    static var RL_MIN:UInt32;

    @:native('RL_MAX')
    static var RL_MAX:UInt32;

    @:native('RL_FUNC_SUBTRACT')
    static var RL_FUNC_SUBTRACT:UInt32;

    @:native('RL_FUNC_REVERSE_SUBTRACT')
    static var RL_FUNC_REVERSE_SUBTRACT:UInt32;

    @:native('RL_BLEND_EQUATION')
    static var RL_BLEND_EQUATION:UInt32;

    @:native('RL_BLEND_EQUATION_RGB')
    static var RL_BLEND_EQUATION_RGB:UInt32;

    @:native('RL_BLEND_EQUATION_ALPHA')
    static var RL_BLEND_EQUATION_ALPHA:UInt32;

    @:native('RL_BLEND_DST_RGB')
    static var RL_BLEND_DST_RGB:UInt32;

    @:native('RL_BLEND_SRC_RGB')
    static var RL_BLEND_SRC_RGB:UInt32;

    @:native('RL_BLEND_DST_ALPHA')
    static var RL_BLEND_DST_ALPHA:UInt32;

    @:native('RL_BLEND_SRC_ALPHA')
    static var RL_BLEND_SRC_ALPHA:UInt32;

    @:native('RL_BLEND_COLOR')
    static var RL_BLEND_COLOR:UInt32;

    @:native('RL_READ_FRAMEBUFFER')
    static var RL_READ_FRAMEBUFFER:UInt32;

    @:native('RL_DRAW_FRAMEBUFFER')
    static var RL_DRAW_FRAMEBUFFER:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_POSITION')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_POSITION:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_NORMAL')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_NORMAL:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_COLOR')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_COLOR:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_TANGENT')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_TANGENT:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD2')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_TEXCOORD2:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_INDICES')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_INDICES:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEIDS')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEIDS:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEWEIGHTS')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_BONEWEIGHTS:UInt32;

    @:native('RL_DEFAULT_SHADER_ATTRIB_LOCATION_INSTANCE_TX')
    static var RL_DEFAULT_SHADER_ATTRIB_LOCATION_INSTANCE_TX:UInt32;

    @:native('rlMatrixMode')
    static function rlMatrixMode(mode:Int):Void;

    @:native('rlPushMatrix')
    static function rlPushMatrix():Void;

    @:native('rlPopMatrix')
    static function rlPopMatrix():Void;

    @:native('rlLoadIdentity')
    static function rlLoadIdentity():Void;

    @:native('rlTranslatef')
    static function rlTranslatef(x:Single, y:Single, z:Single):Void;

    @:native('rlRotatef')
    static function rlRotatef(angle:Single, x:Single, y:Single, z:Single):Void;

    @:native('rlScalef')
    static function rlScalef(x:Single, y:Single, z:Single):Void;

    @:native('rlMultMatrixf')
    static function rlMultMatrixf(matf:RawConstPointer<Single>):Void;

    @:native('rlFrustum')
    static function rlFrustum(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float):Void;

    @:native('rlOrtho')
    static function rlOrtho(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float):Void;

    @:native('rlViewport')
    static function rlViewport(x:Int, y:Int, width:Int, height:Int):Void;

    @:native('rlSetClipPlanes')
    static function rlSetClipPlanes(nearPlane:Float, farPlane:Float):Void;

    @:native('rlGetCullDistanceNear')
    static function rlGetCullDistanceNear():Float;

    @:native('rlGetCullDistanceFar')
    static function rlGetCullDistanceFar():Float;

    @:native('rlBegin')
    static function rlBegin(mode:Int):Void;

    @:native('rlEnd')
    static function rlEnd():Void;

    @:native('rlVertex2i')
    static function rlVertex2i(x:Int, y:Int):Void;

    @:native('rlVertex2f')
    static function rlVertex2f(x:Single, y:Single):Void;

    @:native('rlVertex3f')
    static function rlVertex3f(x:Single, y:Single, z:Single):Void;

    @:native('rlTexCoord2f')
    static function rlTexCoord2f(x:Single, y:Single):Void;

    @:native('rlNormal3f')
    static function rlNormal3f(x:Single, y:Single, z:Single):Void;

    @:native('rlColor4ub')
    static function rlColor4ub(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Void;

    @:native('rlColor3f')
    static function rlColor3f(x:Single, y:Single, z:Single):Void;

    @:native('rlColor4f')
    static function rlColor4f(x:Single, y:Single, z:Single, w:Single):Void;

    @:native('rlEnableVertexArray')
    static function rlEnableVertexArray(vaoId:UInt32):Bool;

    @:native('rlDisableVertexArray')
    static function rlDisableVertexArray():Void;

    @:native('rlEnableVertexBuffer')
    static function rlEnableVertexBuffer(id:UInt32):Void;

    @:native('rlDisableVertexBuffer')
    static function rlDisableVertexBuffer():Void;

    @:native('rlEnableVertexBufferElement')
    static function rlEnableVertexBufferElement(id:UInt32):Void;

    @:native('rlDisableVertexBufferElement')
    static function rlDisableVertexBufferElement():Void;

    @:native('rlEnableVertexAttribute')
    static function rlEnableVertexAttribute(index:UInt32):Void;

    @:native('rlDisableVertexAttribute')
    static function rlDisableVertexAttribute(index:UInt32):Void;

    #if GRAPHICS_API_OPENGL_11
    @:native('rlEnableStatePointer')
    static function rlEnableStatePointer(vertexAttribType:Int, buffer:RawPointer<cpp.Void>):Void;

    @:native('rlDisableStatePointer')
    static function rlDisableStatePointer(vertexAttribType:Int):Void;
    #end

    @:native('rlActiveTextureSlot')
    static function rlActiveTextureSlot(slot:Int):Void;

    @:native('rlEnableTexture')
    static function rlEnableTexture(id:UInt32):Void;

    @:native('rlDisableTexture')
    static function rlDisableTexture():Void;

    @:native('rlEnableTextureCubemap')
    static function rlEnableTextureCubemap(id:UInt32):Void;

    @:native('rlDisableTextureCubemap')
    static function rlDisableTextureCubemap():Void;

    @:native('rlTextureParameters')
    static function rlTextureParameters(id:UInt32, param:Int, value:Int):Void;

    @:native('rlCubemapParameters')
    static function rlCubemapParameters(id:UInt32, param:Int, value:Int):Void;

    @:native('rlEnableShader')
    static function rlEnableShader(id:UInt32):Void;

    @:native('rlDisableShader')
    static function rlDisableShader():Void;

    @:native('rlEnableFramebuffer')
    static function rlEnableFramebuffer(id:UInt32):Void;

    @:native('rlDisableFramebuffer')
    static function rlDisableFramebuffer():Void;

    @:native('rlGetActiveFramebuffer')
    static function rlGetActiveFramebuffer():UInt32;

    @:native('rlActiveDrawBuffers')
    static function rlActiveDrawBuffers(count:Int):Void;

    @:native('rlBlitFramebuffer')
    static function rlBlitFramebuffer(srcX:Int, srcY:Int, srcWidth:Int, srcHeight:Int, dstX:Int, dstY:Int, dstWidth:Int, dstHeight:Int, bufferMask:Int):Void;

    @:native('rlBindFramebuffer')
    static function rlBindFramebuffer(target:UInt32, framebuffer:UInt32):Void;

    @:native('rlEnableColorBlend')
    static function rlEnableColorBlend():Void;

    @:native('rlDisableColorBlend')
    static function rlDisableColorBlend():Void;

    @:native('rlEnableDepthTest')
    static function rlEnableDepthTest():Void;

    @:native('rlDisableDepthTest')
    static function rlDisableDepthTest():Void;

    @:native('rlEnableDepthMask')
    static function rlEnableDepthMask():Void;

    @:native('rlDisableDepthMask')
    static function rlDisableDepthMask():Void;

    @:native('rlEnableBackfaceCulling')
    static function rlEnableBackfaceCulling():Void;

    @:native('rlDisableBackfaceCulling')
    static function rlDisableBackfaceCulling():Void;

    @:native('rlColorMask')
    static function rlColorMask(r:Bool, g:Bool, b:Bool, a:Bool):Void;

    @:native('rlSetCullFace')
    static function rlSetCullFace(mode:Int):Void;

    @:native('rlEnableScissorTest')
    static function rlEnableScissorTest():Void;

    @:native('rlDisableScissorTest')
    static function rlDisableScissorTest():Void;

    @:native('rlScissor')
    static function rlScissor(x:Int, y:Int, width:Int, height:Int):Void;

    @:native('rlEnablePointMode')
    static function rlEnablePointMode():Void;

    @:native('rlDisablePointMode')
    static function rlDisablePointMode():Void;

    @:native('rlEnableWireMode')
    static function rlEnableWireMode():Void;

    @:native('rlDisableWireMode')
    static function rlDisableWireMode():Void;

    @:native('rlSetLineWidth')
    static function rlSetLineWidth(width:Single):Void;

    @:native('rlGetLineWidth')
    static function rlGetLineWidth():Single;

    @:native('rlEnableSmoothLines')
    static function rlEnableSmoothLines():Void;

    @:native('rlDisableSmoothLines')
    static function rlDisableSmoothLines():Void;

    @:native('rlEnableStereoRender')
    static function rlEnableStereoRender():Void;

    @:native('rlDisableStereoRender')
    static function rlDisableStereoRender():Void;

    @:native('rlIsStereoRenderEnabled')
    static function rlIsStereoRenderEnabled():Bool;

    @:native('rlClearColor')
    static function rlClearColor(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Void;

    @:native('rlClearScreenBuffers')
    static function rlClearScreenBuffers():Void;

    @:native('rlCheckErrors')
    static function rlCheckErrors():Void;

    @:native('rlSetBlendMode')
    static function rlSetBlendMode(mode:Int):Void;

    @:native('rlSetBlendFactors')
    static function rlSetBlendFactors(glSrcFactor:Int, glDstFactor:Int, glEquation:Int):Void;

    @:native('rlSetBlendFactorsSeparate')
    static function rlSetBlendFactorsSeparate(glSrcRGB:Int, glDstRGB:Int, glSrcAlpha:Int, glDstAlpha:Int, glEqRGB:Int, glEqAlpha:Int):Void;

    @:native('rlglInit')
    static function rlglInit(width:Int, height:Int):Void;

    @:native('rlglClose')
    static function rlglClose():Void;

    @:native('rlLoadExtensions')
    static function rlLoadExtensions(loader:RawPointer<cpp.Void>):Void;

    @:native('rlGetProcAddress')
    static function rlGetProcAddress(procName:ConstCharStar):RawPointer<cpp.Void>;

    @:native('rlGetVersion')
    static function rlGetVersion():Int;

    @:native('rlSetFramebufferWidth')
    static function rlSetFramebufferWidth(width:Int):Void;

    @:native('rlGetFramebufferWidth')
    static function rlGetFramebufferWidth():Int;

    @:native('rlSetFramebufferHeight')
    static function rlSetFramebufferHeight(height:Int):Void;

    @:native('rlGetFramebufferHeight')
    static function rlGetFramebufferHeight():Int;

    @:native('rlGetTextureIdDefault')
    static function rlGetTextureIdDefault():UInt32;

    @:native('rlGetShaderIdDefault')
    static function rlGetShaderIdDefault():UInt32;

    @:native('rlGetShaderLocsDefault')
    static function rlGetShaderLocsDefault():RawPointer<Int>;

    @:native('rlLoadRenderBatch')
    static function rlLoadRenderBatch(numBuffers:Int, bufferElements:Int):RlRenderBatch;

    @:native('rlUnloadRenderBatch')
    static function rlUnloadRenderBatch(batch:RlRenderBatch):Void;

    @:native('rlDrawRenderBatch')
    static function rlDrawRenderBatch(batch:cpp.RawPointer<RlRenderBatch>):Void;

    @:native('rlSetRenderBatchActive')
    static function rlSetRenderBatchActive(batch:cpp.RawPointer<RlRenderBatch>):Void;

    @:native('rlDrawRenderBatchActive')
    static function rlDrawRenderBatchActive():Void;

    @:native('rlCheckRenderBatchLimit')
    static function rlCheckRenderBatchLimit(vCount:Int):Bool;

    @:native('rlSetTexture')
    static function rlSetTexture(id:UInt32):Void;

    @:native('rlLoadVertexArray')
    static function rlLoadVertexArray():UInt32;

    @:native('rlLoadVertexBuffer')
    static function rlLoadVertexBuffer(buffer:RawPointer<cpp.Void>, size:Int, dyn:Bool):UInt32;

    @:native('rlLoadVertexBufferElement')
    static function rlLoadVertexBufferElement(buffer:RawPointer<cpp.Void>, size:Int, dyn:Bool):UInt32;

    @:native('rlUpdateVertexBuffer')
    static function rlUpdateVertexBuffer(bufferId:UInt32, data:RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;

    @:native('rlUpdateVertexBufferElements')
    static function rlUpdateVertexBufferElements(id:UInt32, data:RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;

    @:native('rlUnloadVertexArray')
    static function rlUnloadVertexArray(vaoId:UInt32):Void;

    @:native('rlUnloadVertexBuffer')
    static function rlUnloadVertexBuffer(vboId:UInt32):Void;

    @:native('rlSetVertexAttribute')
    static function rlSetVertexAttribute(index:UInt32, compSize:Int, type:Int, normalized:Bool, stride:Int, offset:Int):Void;

    @:native('rlSetVertexAttributeDivisor')
    static function rlSetVertexAttributeDivisor(index:UInt32, divisor:Int):Void;

    @:native('rlSetVertexAttributeDefault')
    static function rlSetVertexAttributeDefault(locIndex:Int, value:RawPointer<cpp.Void>, attribType:Int, count:Int):Void;

    @:native('rlDrawVertexArray')
    static function rlDrawVertexArray(offset:Int, count:Int):Void;

    @:native('rlDrawVertexArrayElements')
    static function rlDrawVertexArrayElements(offset:Int, count:Int, buffer:RawPointer<cpp.Void>):Void;

    @:native('rlDrawVertexArrayInstanced')
    static function rlDrawVertexArrayInstanced(offset:Int, count:Int, instances:Int):Void;

    @:native('rlDrawVertexArrayElementsInstanced')
    static function rlDrawVertexArrayElementsInstanced(offset:Int, count:Int, buffer:RawPointer<cpp.Void>, instances:Int):Void;

    @:native('rlLoadTexture')
    static function rlLoadTexture(data:RawPointer<cpp.Void>, width:Int, height:Int, format:Int, mipmapCount:Int):UInt32;

    @:native('rlLoadTextureDepth')
    static function rlLoadTextureDepth(width:Int, height:Int, useRenderBuffer:Bool):UInt32;

    @:native('rlLoadTextureCubemap')
    static function rlLoadTextureCubemap(data:RawPointer<cpp.Void>, size:Int, format:Int, mipmapCount:Int):UInt32;

    @:native('rlUpdateTexture')
    static function rlUpdateTexture(id:UInt32, offsetX:Int, offsetY:Int, width:Int, height:Int, format:Int, data:RawPointer<cpp.Void>):Void;

    @:native('rlGetGlTextureFormats')
    static function rlGetGlTextureFormats(format:Int, glInternalFormat:RawPointer<UInt32>, glFormat:RawPointer<UInt32>, glType:RawPointer<UInt32>):Void;

    @:native('rlGetPixelFormatName')
    static function rlGetPixelFormatName(format:UInt32):ConstCharStar;

    @:native('rlUnloadTexture')
    static function rlUnloadTexture(id:UInt32):Void;

    @:native('rlGenTextureMipmaps')
    static function rlGenTextureMipmaps(id:UInt32, width:Int, height:Int, format:Int, mipmaps:RawPointer<Int>):Void;

    @:native('rlReadTexturePixels')
    static function rlReadTexturePixels(id:UInt32, width:Int, height:Int, format:Int):RawPointer<cpp.Void>;

    @:native('rlReadScreenPixels')
    static function rlReadScreenPixels(width:Int, height:Int):RawPointer<UInt8>;

    @:native('rlLoadFramebuffer')
    static function rlLoadFramebuffer():UInt32;

    @:native('rlFramebufferAttach')
    static function rlFramebufferAttach(fboId:UInt32, texId:UInt32, attachType:Int, texType:Int, mipLevel:Int):Void;

    @:native('rlFramebufferComplete')
    static function rlFramebufferComplete(id:UInt32):Bool;

    @:native('rlUnloadFramebuffer')
    static function rlUnloadFramebuffer(id:UInt32):Void;

    @:native('rlLoadShaderCode')
    static function rlLoadShaderCode(vsCode:ConstCharStar, fsCode:ConstCharStar):UInt32;

    @:native('rlCompileShader')
    static function rlCompileShader(shaderCode:ConstCharStar, type:Int):UInt32;

    @:native('rlLoadShaderProgram')
    static function rlLoadShaderProgram(vShaderId:UInt32, fShaderId:UInt32):UInt32;

    @:native('rlUnloadShaderProgram')
    static function rlUnloadShaderProgram(id:UInt32):Void;

    @:native('rlGetLocationUniform')
    static function rlGetLocationUniform(shaderId:UInt32, uniformName:ConstCharStar):Int;

    @:native('rlGetLocationAttrib')
    static function rlGetLocationAttrib(shaderId:UInt32, attribName:ConstCharStar):Int;

    @:native('rlSetUniform')
    static function rlSetUniform(locIndex:Int, value:RawPointer<cpp.Void>, uniformType:Int, count:Int):Void;

    @:native('rlSetUniformMatrix')
    static function rlSetUniformMatrix(locIndex:Int, mat:Matrix):Void;

    @:native('rlSetUniformMatrices')
    static function rlSetUniformMatrices(locIndex:Int, mat:cpp.ConstPointer<Matrix>, count:Int):Void;

    @:native('rlSetUniformSampler')
    static function rlSetUniformSampler(locIndex:Int, textureId:UInt32):Void;

    @:native('rlSetShader')
    static function rlSetShader(id:UInt32, locs:RawPointer<Int>):Void;

    @:native('rlLoadComputeShaderProgram')
    static function rlLoadComputeShaderProgram(shaderId:UInt32):UInt32;

    @:native('rlComputeShaderDispatch')
    static function rlComputeShaderDispatch(groupX:UInt32, groupY:UInt32, groupZ:UInt32):Void;

    @:native('rlLoadShaderBuffer')
    static function rlLoadShaderBuffer(size:UInt32, data:RawPointer<cpp.Void>, usageHint:Int):UInt32;

    @:native('rlUnloadShaderBuffer')
    static function rlUnloadShaderBuffer(ssboId:UInt32):Void;

    @:native('rlUpdateShaderBuffer')
    static function rlUpdateShaderBuffer(id:UInt32, data:RawPointer<cpp.Void>, dataSize:UInt32, offset:UInt32):Void;

    @:native('rlBindShaderBuffer')
    static function rlBindShaderBuffer(id:UInt32, index:UInt32):Void;

    @:native('rlReadShaderBuffer')
    static function rlReadShaderBuffer(id:UInt32, dest:RawPointer<cpp.Void>, count:UInt32, offset:UInt32):Void;

    @:native('rlCopyShaderBuffer')
    static function rlCopyShaderBuffer(destId:UInt32, srcId:UInt32, destOffset:UInt32, srcOffset:UInt32, count:UInt32):Void;

    @:native('rlGetShaderBufferSize')
    static function rlGetShaderBufferSize(id:UInt32):UInt32;

    @:native('rlBindImageTexture')
    static function rlBindImageTexture(id:UInt32, index:UInt32, format:Int, readonly:Bool):Void;

    @:native('rlGetMatrixModelview')
    static function rlGetMatrixModelview():Matrix;

    @:native('rlGetMatrixProjection')
    static function rlGetMatrixProjection():Matrix;

    @:native('rlGetMatrixTransform')
    static function rlGetMatrixTransform():Matrix;

    @:native('rlGetMatrixProjectionStereo')
    static function rlGetMatrixProjectionStereo(eye:Int):Matrix;

    @:native('rlGetMatrixViewOffsetStereo')
    static function rlGetMatrixViewOffsetStereo(eye:Int):Matrix;

    @:native('rlSetMatrixProjection')
    static function rlSetMatrixProjection(proj:Matrix):Void;

    @:native('rlSetMatrixModelview')
    static function rlSetMatrixModelview(view:Matrix):Void;

    @:native('rlSetMatrixProjectionStereo')
    static function rlSetMatrixProjectionStereo(right:Matrix, left:Matrix):Void;

    @:native('rlSetMatrixViewOffsetStereo')
    static function rlSetMatrixViewOffsetStereo(right:Matrix, left:Matrix):Void;

    @:native('rlLoadDrawCube')
    static function rlLoadDrawCube():Void;

    @:native('rlLoadDrawQuad')
    static function rlLoadDrawQuad():Void;
}
