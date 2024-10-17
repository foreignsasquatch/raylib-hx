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
    public static inline function fromInt(i:Int):RlTraceLogLevel
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlPixelFormat
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlTextureFilter
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlBlendMode
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlShaderLocationIndex
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlShaderUniformDataType
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
@:native('rlShaderUniformDataType')
private extern class RlShaderUniformDataTypeImpl {}

extern enum abstract RlShaderAttributeDataType(RlShaderAttributeDataTypeImpl)
{
    @:native('RL_SHADER_ATTRIB_FLOAT') var Rl_SHADER_ATTRIB_FLOAT;
    @:native('RL_SHADER_ATTRIB_VEC2') var Rl_SHADER_ATTRIB_VEC2;
    @:native('RL_SHADER_ATTRIB_VEC3') var Rl_SHADER_ATTRIB_VEC3;
    @:native('RL_SHADER_ATTRIB_VEC4') var Rl_SHADER_ATTRIB_VEC4;

    @:from
    public static inline function fromInt(i:Int):RlShaderAttributeDataType
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlFramebufferAttachType
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
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
    public static inline function fromInt(i:Int):RlFramebufferAttachTextureType
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
@:native('rlFramebufferAttachTextureType')
private extern class RlFramebufferAttachTextureTypeImpl {}

extern enum abstract RlCullMode(RlCullModeImpl)
{
    @:native('RL_CULL_FACE_FRONT') var Rl_CULL_FACE_FRONT;
    @:native('RL_CULL_FACE_BACK') var Rl_CULL_FACE_BACK;

    @:from
    public static inline function fromInt(i:Int):RlCullMode
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
@:native('rlCullMode')
private extern class RlCullModeImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rlgl-impl.h')
@:unreflective
extern class Rlgl {}
