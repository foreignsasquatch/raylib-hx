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

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import cpp.Callable;
import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.Struct;
import cpp.UInt32;
import cpp.UInt8;
import cpp.VarList;
import cpp.Void;

import raylib.utils.CastCharStarPointer;
import raylib.utils.IntPointer;
import raylib.utils.SinglePointer;
import raylib.utils.UInt16Pointer;
import raylib.utils.UInt32Pointer;
import raylib.utils.UInt8Pointer;
import raylib.utils.VoidPointer;

extern class Types {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Vector2')
extern class Vector2Impl
{
    var x:Single;
    var y:Single;

    function new():Void;
}

@:forward
extern abstract Vector2(Struct<Vector2Impl>) to Struct<Vector2Impl>
{
    inline function new(x:Single, y:Single):Void
    {
        final vec2:Vector2Impl = new Vector2Impl();
        vec2.x = x;
        vec2.y = y;
        this = vec2;
    }

    @:from
    static inline function fromNative(value:Vector2Impl):Vector2
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<Vector2Impl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<Vector2Impl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Vector3')
extern class Vector3Impl
{
    var x:Single;
    var y:Single;
    var z:Single;

    function new():Void;
}

@:forward
extern abstract Vector3(Struct<Vector3Impl>) to Struct<Vector3Impl>
{
    inline function new(x:Single, y:Single, z:Single):Void
    {
        final vec3:Vector3Impl = new Vector3Impl();
        vec3.x = x;
        vec3.y = y;
        vec3.z = z;
        this = vec3;
    }

    @:from
    static inline function fromNative(value:Vector3Impl):Vector3
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<Vector3Impl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<Vector3Impl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Vector4')
extern class Vector4Impl
{
    var x:Single;
    var y:Single;
    var z:Single;
    var w:Single;

    function new():Void;
}

@:forward
extern abstract Vector4(Struct<Vector4Impl>) to Struct<Vector4Impl>
{
    inline function new(x:Single, y:Single, z:Single, w:Single):Void
    {
        final vec4:Vector4Impl = new Vector4Impl();
        vec4.x = x;
        vec4.y = y;
        vec4.z = z;
        vec4.w = w;
        this = vec4;
    }

    @:from
    static inline function fromNative(value:Vector4Impl):Vector4
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<Vector4Impl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<Vector4Impl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Matrix')
extern class MatrixImpl
{
    var m0:Single;
    var m4:Single;
    var m8:Single;
    var m12:Single;

    var m1:Single;
    var m5:Single;
    var m9:Single;
    var m13:Single;

    var m2:Single;
    var m6:Single;
    var m10:Single;
    var m14:Single;

    var m3:Single;
    var m7:Single;
    var m11:Single;
    var m15:Single;

    function new():Void;
}

@:forward
extern abstract Matrix(Struct<MatrixImpl>) to Struct<MatrixImpl>
{
    inline function new():Void
    {
        this = new MatrixImpl();
    }

    @:from
    static inline function fromNative(value:MatrixImpl):Matrix
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<MatrixImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<MatrixImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Color')
extern class ColorImpl
{
    var r:UInt8;
    var g:UInt8;
    var b:UInt8;
    var a:UInt8;

    function new():Void;
}

@:forward
extern abstract Color(Struct<ColorImpl>) to Struct<ColorImpl>
{
    inline function new(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Void
    {
        final color:ColorImpl = new ColorImpl();
        color.r = r;
        color.g = g;
        color.b = b;
        color.a = a;
        this = color;
    }

    @:from
    static inline function fromNative(value:ColorImpl):Color
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<ColorImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<ColorImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Rectangle')
extern class RectangleImpl
{
    var x:Single;
    var y:Single;
    var width:Single;
    var height:Single;

    function new():Void;
}

@:forward
extern abstract Rectangle(Struct<RectangleImpl>) to Struct<RectangleImpl>
{
    inline function new(x:Single, y:Single, width:Single, height:Single):Void
    {
        final rect:RectangleImpl = new RectangleImpl();
        rect.x = x;
        rect.y = y;
        rect.width = width;
        rect.height = height;
        this = rect;
    }

    @:from
    static inline function fromNative(value:RectangleImpl):Rectangle
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<RectangleImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<RectangleImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Image')
extern class ImageImpl
{
    var data:VoidPointer;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var format:Int;

    function new():Void;
}

@:forward
extern abstract Image(Struct<ImageImpl>) to Struct<ImageImpl>
{
    inline function new():Void
    {
        this = new ImageImpl();
    }

    @:from
    static inline function fromNative(value:ImageImpl):Image
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<ImageImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<ImageImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Texture')
extern class TextureImpl
{
    var id:UInt32;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var format:Int;

    function new():Void;
}

@:forward
extern abstract Texture(Struct<TextureImpl>) to Struct<TextureImpl>
{
    inline function new():Void
    {
        this = new TextureImpl();
    }

    @:from
    static inline function fromNative(value:TextureImpl):Texture
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<TextureImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<TextureImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('RenderTexture')
extern class RenderTextureImpl
{
    var id:UInt32;
    var texture:TextureImpl;
    var depth:TextureImpl;

    function new():Void;
}

@:forward
extern abstract RenderTexture(Struct<RenderTextureImpl>) to Struct<RenderTextureImpl>
{
    inline function new():Void
    {
        this = new RenderTextureImpl();
    }

    @:from
    static inline function fromNative(value:RenderTextureImpl):RenderTexture
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<RenderTextureImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<RenderTextureImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('NPatchInfo')
extern class NPatchInfoImpl
{
    var source:RectangleImpl;
    var left:Int;
    var top:Int;
    var right:Int;
    var bottom:Int;
    var layout:Int;

    function new():Void;
}

@:forward
extern abstract NPatchInfo(Struct<NPatchInfoImpl>) to Struct<NPatchInfoImpl>
{
    inline function new():Void
    {
        this = new NPatchInfoImpl();
    }

    @:from
    static inline function fromNative(value:NPatchInfoImpl):NPatchInfo
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<NPatchInfoImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<NPatchInfoImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('GlyphInfo')
extern class GlyphInfoImpl
{
    var value:Int;
    var offsetX:Int;
    var offsetY:Int;
    var advanceX:Int;
    var image:ImageImpl;

    function new():Void;
}

@:forward
extern abstract GlyphInfo(Struct<GlyphInfoImpl>) to Struct<GlyphInfoImpl>
{
    inline function new():Void
    {
        this = new GlyphInfoImpl();
    }

    @:from
    static inline function fromNative(value:GlyphInfoImpl):GlyphInfo
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<GlyphInfoImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<GlyphInfoImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Font')
extern class FontImpl
{
    var baseSize:Int;
    var glyphCount:Int;
    var glyphPadding:Int;
    var texture:TextureImpl;
    var recs:RawPointer<RectangleImpl>;
    var glyphs:RawPointer<GlyphInfoImpl>;

    function new():Void;
}

extern abstract Font(Struct<FontImpl>) to Struct<FontImpl>
{
    inline function new():Void
    {
        this = new FontImpl();
    }

    @:from
    static inline function fromNative(value:FontImpl):Font
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<FontImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<FontImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Camera3D')
extern class Camera3DImpl
{
    var position:Vector3Impl;
    var target:Vector3Impl;
    var up:Vector3Impl;
    var fovy:Single;
    var projection:Int;

    function new():Void;
}

@:forward
extern abstract Camera3D(Struct<Camera3DImpl>) to Struct<Camera3DImpl>
{
    inline function new():Void
    {
        this = new Camera3DImpl();
    }

    @:from
    static inline function fromNative(value:Camera3DImpl):Camera3D
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<Camera3DImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<Camera3DImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Camera2D')
extern class Camera2DImpl
{
    var offset:Vector2Impl;
    var target:Vector2Impl;
    var rotation:Single;
    var zoom:Single;

    function new():Void;
}

@:forward
extern abstract Camera2D(Struct<Camera2DImpl>) to Struct<Camera2DImpl>
{
    inline function new():Void
    {
        this = new Camera2DImpl();
    }

    @:from
    static inline function fromNative(value:Camera2DImpl):Camera2D
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<Camera2DImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<Camera2DImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Mesh')
extern class MeshImpl
{
    var vertexCount:Int;
    var triangleCount:Int;
    var vertices:SinglePointer;
    var texcoords:SinglePointer;
    var texcoords2:SinglePointer;
    var normals:SinglePointer;
    var tangents:SinglePointer;
    var colors:UInt8Pointer;
    var indices:UInt16Pointer;
    var animVertices:SinglePointer;
    var animNormals:SinglePointer;
    var boneIds:UInt8Pointer;
    var boneWeights:SinglePointer;
    var boneMatrices:RawPointer<MatrixImpl>;
    var vaoId:UInt32;
    var vboId:UInt32Pointer;

    function new():Void;
}

@:forward
extern abstract Mesh(Struct<MeshImpl>) to Struct<MeshImpl>
{
    inline function new():Void
    {
        this = new MeshImpl();
    }

    @:from
    static inline function fromNative(value:MeshImpl):Mesh
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<MeshImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<MeshImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Shader')
extern class ShaderImpl
{
    var id:UInt32;
    var locs:IntPointer;

    function new():Void;
}

@:forward
extern abstract Shader(Struct<ShaderImpl>) to Struct<ShaderImpl>
{
    inline function new():Void
    {
        this = new ShaderImpl();
    }

    @:from
    static inline function fromNative(value:ShaderImpl):Shader
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<ShaderImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<ShaderImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('MaterialMap')
extern class MaterialMapImpl
{
    var texture:TextureImpl;
    var color:ColorImpl;
    var value:Single;

    function new():Void;
}

@:forward
extern abstract MaterialMap(Struct<MaterialMapImpl>) to Struct<MaterialMapImpl>
{
    inline function new():Void
    {
        this = new MaterialMapImpl();
    }

    @:from
    static inline function fromNative(value:MaterialMapImpl):MaterialMap
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<MaterialMapImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<MaterialMapImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Material')
extern class MaterialImpl
{
    var shader:ShaderImpl;
    var maps:RawPointer<MaterialMapImpl>;
    var params:SinglePointer;

    function new():Void;
}

@:forward
extern abstract Material(Struct<MaterialImpl>) to Struct<MaterialImpl>
{
    inline function new():Void
    {
        this = new MaterialImpl();
    }

    @:from
    static inline function fromNative(value:MaterialImpl):Material
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<MaterialImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<MaterialImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Transform')
extern class TransformImpl
{
    var translation:Vector3Impl;
    var rotation:Vector4Impl;
    var scale:Vector3Impl;

    function new():Void;
}

@:forward
extern abstract Transform(Struct<TransformImpl>) to Struct<TransformImpl>
{
    inline function new():Void
    {
        this = new TransformImpl();
    }

    @:from
    static inline function fromNative(value:TransformImpl):Transform
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<TransformImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<TransformImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('BoneInfo')
extern class BoneInfoImpl
{
    var name:CastCharStar;
    var parent:Int;

    function new():Void;
}

@:forward
extern abstract BoneInfo(Struct<BoneInfoImpl>) to Struct<BoneInfoImpl>
{
    inline function new():Void
    {
        this = new BoneInfoImpl();
    }

    @:from
    static inline function fromNative(value:BoneInfoImpl):BoneInfo
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<BoneInfoImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<BoneInfoImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Model')
extern class ModelImpl
{
    var transform:MatrixImpl;
    var meshCount:Int;
    var materialCount:Int;
    var meshes:RawPointer<MeshImpl>;
    var materials:RawPointer<MaterialImpl>;
    var meshMaterial:IntPointer;
    var boneCount:Int;
    var bones:RawPointer<BoneInfoImpl>;
    var bindPose:RawPointer<TransformImpl>;

    function new():Void;
}

@:forward
extern abstract Model(Struct<ModelImpl>) to Struct<ModelImpl>
{
    inline function new():Void
    {
        this = new ModelImpl();
    }

    @:from
    static inline function fromNative(value:ModelImpl):Model
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<ModelImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<ModelImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('ModelAnimation')
extern class ModelAnimationImpl
{
    var boneCount:Int;
    var frameCount:Int;
    var bones:RawPointer<BoneInfoImpl>;
    var framePoses:RawPointer<RawPointer<TransformImpl>>;
    var name:CastCharStar;

    function new():Void;
}

@:forward
extern abstract ModelAnimation(Struct<ModelAnimationImpl>) to Struct<ModelAnimationImpl>
{
    inline function new():Void
    {
        this = new ModelAnimationImpl();
    }

    @:from
    static inline function fromNative(value:ModelAnimationImpl):ModelAnimation
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<ModelAnimationImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<ModelAnimationImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Ray')
extern class RayImpl
{
    var position:Vector3Impl;
    var direction:Vector3Impl;

    function new():Void;
}

@:forward
extern abstract Ray(Struct<RayImpl>) to Struct<RayImpl>
{
    inline function new():Void
    {
        this = new RayImpl();
    }

    @:from
    static inline function fromNative(value:RayImpl):Ray
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<RayImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<RayImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('RayCollision')
extern class RayCollisionImpl
{
    var hit:Bool;
    var distance:Single;
    var point:Vector3Impl;
    var normal:Vector3Impl;

    function new():Void;
}

@:forward
extern abstract RayCollision(Struct<RayCollisionImpl>) to Struct<RayCollisionImpl>
{
    inline function new():Void
    {
        this = new RayCollisionImpl();
    }

    @:from
    static inline function fromNative(value:RayCollisionImpl):RayCollision
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<RayCollisionImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<RayCollisionImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('BoundingBox')
extern class BoundingBoxImpl
{
    var min:Vector3Impl;
    var max:Vector3Impl;

    function new():Void;
}

@:forward
extern abstract BoundingBox(Struct<BoundingBoxImpl>) to Struct<BoundingBoxImpl>
{
    inline function new():Void
    {
        this = new BoundingBoxImpl();
    }

    @:from
    static inline function fromNative(value:BoundingBoxImpl):BoundingBox
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<BoundingBoxImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<BoundingBoxImpl>
        return cast Pointer.addressOf(this).raw;
}

typedef AudioCallback = Callable<(bufferData:VoidPointer, frames:UInt32) -> Void>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Wave')
extern class WaveImpl
{
    var frameCount:UInt32;

    function new():Void;
}

@:forward
extern abstract Wave(Struct<WaveImpl>) to Struct<WaveImpl>
{
    inline function new():Void
    {
        this = new WaveImpl();
    }

    @:from
    static inline function fromNative(value:WaveImpl):Wave
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<WaveImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<WaveImpl>
        return cast Pointer.addressOf(this).raw;
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
@:structAccess
@:native('AudioStream')
extern class AudioStreamImpl
{
    var buffer:RawPointer<RAudioBuffer>;
    var processor:RawPointer<RAudioProcessor>;
    var sampleRate:UInt32;

    function new():Void;
}

@:forward
extern abstract AudioStream(Struct<AudioStreamImpl>) to Struct<AudioStreamImpl>
{
    inline function new():Void
    {
        this = new AudioStreamImpl();
    }

    @:from
    static inline function fromNative(value:AudioStreamImpl):AudioStream
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<AudioStreamImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<AudioStreamImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Sound')
extern class SoundImpl
{
    var stream:AudioStreamImpl;
    var frameCount:UInt32;

    function new():Void;
}

@:forward
extern abstract Sound(Struct<SoundImpl>) to Struct<SoundImpl>
{
    inline function new():Void
    {
        this = new SoundImpl();
    }

    @:from
    static inline function fromNative(value:SoundImpl):Sound
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<SoundImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<SoundImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('Music')
extern class MusicImpl
{
    var stream:AudioStreamImpl;
    var frameCount:UInt32;
    var looping:Bool;
    var ctxType:Int;
    var ctxData:VoidPointer;

    function new():Void;
}

@:forward
extern abstract Music(Struct<MusicImpl>) to Struct<MusicImpl>
{
    inline function new():Void
    {
        this = new MusicImpl();
    }

    @:from
    static inline function fromNative(value:MusicImpl):Music
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<MusicImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<MusicImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('VrDeviceInfo')
extern class VrDeviceInfoImpl
{
    var hResolution:Int;
    var vResolution:Int;
    var hScreenSize:Single;
    var vScreenSize:Single;
    var eyeToScreenDistance:Single;
    var lensSeparationDistance:Single;
    var interpupillaryDistance:Single;
    var lensDistortionValues:SinglePointer;
    var chromaAbCorrection:SinglePointer;

    function new():Void;
}

@:forward
extern abstract VrDeviceInfo(Struct<VrDeviceInfoImpl>) to Struct<VrDeviceInfoImpl>
{
    inline function new():Void
    {
        this = new VrDeviceInfoImpl();
    }

    @:from
    static inline function fromNative(value:VrDeviceInfoImpl):VrDeviceInfo
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<VrDeviceInfoImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<VrDeviceInfoImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('VrStereoConfig')
extern class VrStereoConfigImpl
{
    var projection:RawPointer<MatrixImpl>;
    var rightLensCenter:SinglePointer;
    var leftScreenCenter:SinglePointer;
    var rightScreenCenter:SinglePointer;
    var scale:SinglePointer;
    var scaleIn:SinglePointer;

    function new():Void;
}

@:forward
extern abstract VrStereoConfig(Struct<VrStereoConfigImpl>) to Struct<VrStereoConfigImpl>
{
    inline function new():Void
    {
        this = new VrStereoConfigImpl();
    }

    @:from
    static inline function fromNative(value:VrStereoConfigImpl):VrStereoConfig
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<VrStereoConfigImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<VrStereoConfigImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('FilePathList')
extern class FilePathListImpl
{
    var capacity:UInt32;
    var count:UInt32;
    var paths:CastCharStarPointer;

    function new():Void;
}

@:forward
extern abstract FilePathList(Struct<FilePathListImpl>) to Struct<FilePathListImpl>
{
    inline function new():Void
    {
        this = new FilePathListImpl();
    }

    @:from
    static inline function fromNative(value:FilePathListImpl):FilePathList
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<FilePathListImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<FilePathListImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('AutomationEvent')
extern class AutomationEventImpl
{
    var frame:UInt32;
    var type:UInt32;

    function new():Void;
}

@:forward
extern abstract AutomationEvent(Struct<AutomationEventImpl>) to Struct<AutomationEventImpl>
{
    inline function new():Void
    {
        this = new AutomationEventImpl();
    }

    @:from
    static inline function fromNative(value:AutomationEventImpl):AutomationEvent
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<AutomationEventImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<AutomationEventImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:structAccess
@:native('AutomationEventList')
extern class AutomationEventListImpl
{
    var capacity:UInt32;
    var events:RawPointer<AutomationEventImpl>;

    function new():Void;
}

@:forward
extern abstract AutomationEventList(Struct<AutomationEventListImpl>) to Struct<AutomationEventListImpl>
{
    inline function new():Void
    {
        this = new AutomationEventListImpl();
    }

    @:from
    static inline function fromNative(value:AutomationEventListImpl):AutomationEventList
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<AutomationEventListImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<AutomationEventListImpl>
        return cast Pointer.addressOf(this).raw;
}

extern enum abstract ConfigFlags(ConfigFlagsImpl)
{
    @:native('FLAG_VSYNC_HINT')
    var FLAG_VSYNC_HINT;
    @:native('FLAG_FULLSCREEN_MODE')
    var FLAG_FULLSCREEN_MODE;
    @:native('FLAG_WINDOW_RESIZABLE')
    var FLAG_WINDOW_RESIZABLE;
    @:native('FLAG_WINDOW_UNDECORATED')
    var FLAG_WINDOW_UNDECORATED;
    @:native('FLAG_WINDOW_HIDDEN')
    var FLAG_WINDOW_HIDDEN;
    @:native('FLAG_WINDOW_MINIMIZED')
    var FLAG_WINDOW_MINIMIZED;
    @:native('FLAG_WINDOW_MAXIMIZED')
    var FLAG_WINDOW_MAXIMIZED;
    @:native('FLAG_WINDOW_UNFOCUSED')
    var FLAG_WINDOW_UNFOCUSED;
    @:native('FLAG_WINDOW_TOPMOST')
    var FLAG_WINDOW_TOPMOST;
    @:native('FLAG_WINDOW_ALWAYS_RUN')
    var FLAG_WINDOW_ALWAYS_RUN;
    @:native('FLAG_WINDOW_TRANSPARENT')
    var FLAG_WINDOW_TRANSPARENT;
    @:native('FLAG_WINDOW_HIGHDPI')
    var FLAG_WINDOW_HIGHDPI;
    @:native('FLAG_WINDOW_MOUSE_PASSTHROUGH')
    var FLAG_WINDOW_MOUSE_PASSTHROUGH;
    @:native('FLAG_BORDERLESS_WINDOWED_MODE')
    var FLAG_BORDERLESS_WINDOWED_MODE;
    @:native('FLAG_MSAA_4X_HINT')
    var FLAG_MSAA_4X_HINT;
    @:native('FLAG_INTERLACED_HINT')
    var FLAG_INTERLACED_HINT;

    @:from
    static inline function fromInt(i:Int):ConfigFlags
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ConfigFlags')
private extern class ConfigFlagsImpl {}

extern enum abstract TraceLogLevel(TraceLogLevelImpl)
{
    @:native('LOG_ALL')
    var LOG_ALL;
    @:native('LOG_TRACE')
    var LOG_TRACE;
    @:native('LOG_DEBUG')
    var LOG_DEBUG;
    @:native('LOG_INFO')
    var LOG_INFO;
    @:native('LOG_WARNING')
    var LOG_WARNING;
    @:native('LOG_ERROR')
    var LOG_ERROR;
    @:native('LOG_FATAL')
    var LOG_FATAL;
    @:native('LOG_NONE')
    var LOG_NONE;

    @:from
    static inline function fromInt(i:Int):TraceLogLevel
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TraceLogLevel')
private extern class TraceLogLevelImpl {}

extern enum abstract KeyboardKey(KeyboardKeyImpl)
{
    @:native('KEY_NULL')
    var KEY_NULL;
    @:native('KEY_APOSTROPHE')
    var KEY_APOSTROPHE;
    @:native('KEY_COMMA')
    var KEY_COMMA;
    @:native('KEY_MINUS')
    var KEY_MINUS;
    @:native('KEY_PERIOD')
    var KEY_PERIOD;
    @:native('KEY_SLASH')
    var KEY_SLASH;
    @:native('KEY_ZERO')
    var KEY_ZERO;
    @:native('KEY_ONE')
    var KEY_ONE;
    @:native('KEY_TWO')
    var KEY_TWO;
    @:native('KEY_THREE')
    var KEY_THREE;
    @:native('KEY_FOUR')
    var KEY_FOUR;
    @:native('KEY_FIVE')
    var KEY_FIVE;
    @:native('KEY_SIX')
    var KEY_SIX;
    @:native('KEY_SEVEN')
    var KEY_SEVEN;
    @:native('KEY_EIGHT')
    var KEY_EIGHT;
    @:native('KEY_NINE')
    var KEY_NINE;
    @:native('KEY_SEMICOLON')
    var KEY_SEMICOLON;
    @:native('KEY_EQUAL')
    var KEY_EQUAL;
    @:native('KEY_A')
    var KEY_A;
    @:native('KEY_B')
    var KEY_B;
    @:native('KEY_C')
    var KEY_C;
    @:native('KEY_D')
    var KEY_D;
    @:native('KEY_E')
    var KEY_E;
    @:native('KEY_F')
    var KEY_F;
    @:native('KEY_G')
    var KEY_G;
    @:native('KEY_H')
    var KEY_H;
    @:native('KEY_I')
    var KEY_I;
    @:native('KEY_J')
    var KEY_J;
    @:native('KEY_K')
    var KEY_K;
    @:native('KEY_L')
    var KEY_L;
    @:native('KEY_M')
    var KEY_M;
    @:native('KEY_N')
    var KEY_N;
    @:native('KEY_O')
    var KEY_O;
    @:native('KEY_P')
    var KEY_P;
    @:native('KEY_Q')
    var KEY_Q;
    @:native('KEY_R')
    var KEY_R;
    @:native('KEY_S')
    var KEY_S;
    @:native('KEY_T')
    var KEY_T;
    @:native('KEY_U')
    var KEY_U;
    @:native('KEY_V')
    var KEY_V;
    @:native('KEY_W')
    var KEY_W;
    @:native('KEY_X')
    var KEY_X;
    @:native('KEY_Y')
    var KEY_Y;
    @:native('KEY_Z')
    var KEY_Z;
    @:native('KEY_LEFT_BRACKET')
    var KEY_LEFT_BRACKET;
    @:native('KEY_BACKSLASH')
    var KEY_BACKSLASH;
    @:native('KEY_RIGHT_BRACKET')
    var KEY_RIGHT_BRACKET;
    @:native('KEY_GRAVE')
    var KEY_GRAVE;
    @:native('KEY_SPACE')
    var KEY_SPACE;
    @:native('KEY_ESCAPE')
    var KEY_ESCAPE;
    @:native('KEY_ENTER')
    var KEY_ENTER;
    @:native('KEY_TAB')
    var KEY_TAB;
    @:native('KEY_BACKSPACE')
    var KEY_BACKSPACE;
    @:native('KEY_INSERT')
    var KEY_INSERT;
    @:native('KEY_DELETE')
    var KEY_DELETE;
    @:native('KEY_RIGHT')
    var KEY_RIGHT;
    @:native('KEY_LEFT')
    var KEY_LEFT;
    @:native('KEY_DOWN')
    var KEY_DOWN;
    @:native('KEY_UP')
    var KEY_UP;
    @:native('KEY_PAGE_UP')
    var KEY_PAGE_UP;
    @:native('KEY_PAGE_DOWN')
    var KEY_PAGE_DOWN;
    @:native('KEY_HOME')
    var KEY_HOME;
    @:native('KEY_END')
    var KEY_END;
    @:native('KEY_CAPS_LOCK')
    var KEY_CAPS_LOCK;
    @:native('KEY_SCROLL_LOCK')
    var KEY_SCROLL_LOCK;
    @:native('KEY_NUM_LOCK')
    var KEY_NUM_LOCK;
    @:native('KEY_PRINT_SCREEN')
    var KEY_PRINT_SCREEN;
    @:native('KEY_PAUSE')
    var KEY_PAUSE;
    @:native('KEY_F1')
    var KEY_F1;
    @:native('KEY_F2')
    var KEY_F2;
    @:native('KEY_F3')
    var KEY_F3;
    @:native('KEY_F4')
    var KEY_F4;
    @:native('KEY_F5')
    var KEY_F5;
    @:native('KEY_F6')
    var KEY_F6;
    @:native('KEY_F7')
    var KEY_F7;
    @:native('KEY_F8')
    var KEY_F8;
    @:native('KEY_F9')
    var KEY_F9;
    @:native('KEY_F10')
    var KEY_F10;
    @:native('KEY_F11')
    var KEY_F11;
    @:native('KEY_F12')
    var KEY_F12;
    @:native('KEY_LEFT_SHIFT')
    var KEY_LEFT_SHIFT;
    @:native('KEY_LEFT_CONTROL')
    var KEY_LEFT_CONTROL;
    @:native('KEY_LEFT_ALT')
    var KEY_LEFT_ALT;
    @:native('KEY_LEFT_SUPER')
    var KEY_LEFT_SUPER;
    @:native('KEY_RIGHT_SHIFT')
    var KEY_RIGHT_SHIFT;
    @:native('KEY_RIGHT_CONTROL')
    var KEY_RIGHT_CONTROL;
    @:native('KEY_RIGHT_ALT')
    var KEY_RIGHT_ALT;
    @:native('KEY_RIGHT_SUPER')
    var KEY_RIGHT_SUPER;
    @:native('KEY_KB_MENU')
    var KEY_KB_MENU;
    @:native('KEY_KP_0')
    var KEY_KP_0;
    @:native('KEY_KP_1')
    var KEY_KP_1;
    @:native('KEY_KP_2')
    var KEY_KP_2;
    @:native('KEY_KP_3')
    var KEY_KP_3;
    @:native('KEY_KP_4')
    var KEY_KP_4;
    @:native('KEY_KP_5')
    var KEY_KP_5;
    @:native('KEY_KP_6')
    var KEY_KP_6;
    @:native('KEY_KP_7')
    var KEY_KP_7;
    @:native('KEY_KP_8')
    var KEY_KP_8;
    @:native('KEY_KP_9')
    var KEY_KP_9;
    @:native('KEY_KP_DECIMAL')
    var KEY_KP_DECIMAL;
    @:native('KEY_KP_DIVIDE')
    var KEY_KP_DIVIDE;
    @:native('KEY_KP_MULTIPLY')
    var KEY_KP_MULTIPLY;
    @:native('KEY_KP_SUBTRACT')
    var KEY_KP_SUBTRACT;
    @:native('KEY_KP_ADD')
    var KEY_KP_ADD;
    @:native('KEY_KP_ENTER')
    var KEY_KP_ENTER;
    @:native('KEY_KP_EQUAL')
    var KEY_KP_EQUAL;
    @:native('KEY_BACK')
    var KEY_BACK;
    @:native('KEY_MENU')
    var KEY_MENU;
    @:native('KEY_VOLUME_UP')
    var KEY_VOLUME_UP;
    @:native('KEY_VOLUME_DOWN')
    var KEY_VOLUME_DOWN;

    @:from
    static inline function fromInt(i:Int):KeyboardKey
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('KeyboardKey')
private extern class KeyboardKeyImpl {}

extern enum abstract MouseButton(MouseButtonImpl)
{
    @:native('MOUSE_BUTTON_LEFT')
    var MOUSE_BUTTON_LEFT;
    @:native('MOUSE_BUTTON_RIGHT')
    var MOUSE_BUTTON_RIGHT;
    @:native('MOUSE_BUTTON_MIDDLE')
    var MOUSE_BUTTON_MIDDLE;
    @:native('MOUSE_BUTTON_SIDE')
    var MOUSE_BUTTON_SIDE;
    @:native('MOUSE_BUTTON_EXTRA')
    var MOUSE_BUTTON_EXTRA;
    @:native('MOUSE_BUTTON_FORWARD')
    var MOUSE_BUTTON_FORWARD;
    @:native('MOUSE_BUTTON_BACK')
    var MOUSE_BUTTON_BACK;

    @:from
    static inline function fromInt(i:Int):MouseButton
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MouseButton')
private extern class MouseButtonImpl {}

extern enum abstract MouseCursor(MouseCursorImpl)
{
    @:native('MOUSE_CURSOR_DEFAULT')
    var MOUSE_CURSOR_DEFAULT;
    @:native('MOUSE_CURSOR_ARROW')
    var MOUSE_CURSOR_ARROW;
    @:native('MOUSE_CURSOR_IBEAM')
    var MOUSE_CURSOR_IBEAM;
    @:native('MOUSE_CURSOR_CROSSHAIR')
    var MOUSE_CURSOR_CROSSHAIR;
    @:native('MOUSE_CURSOR_POINTING_HAND')
    var MOUSE_CURSOR_POINTING_HAND;
    @:native('MOUSE_CURSOR_RESIZE_EW')
    var MOUSE_CURSOR_RESIZE_EW;
    @:native('MOUSE_CURSOR_RESIZE_NS')
    var MOUSE_CURSOR_RESIZE_NS;
    @:native('MOUSE_CURSOR_RESIZE_NWSE')
    var MOUSE_CURSOR_RESIZE_NWSE;
    @:native('MOUSE_CURSOR_RESIZE_NESW')
    var MOUSE_CURSOR_RESIZE_NESW;
    @:native('MOUSE_CURSOR_RESIZE_ALL')
    var MOUSE_CURSOR_RESIZE_ALL;
    @:native('MOUSE_CURSOR_NOT_ALLOWED')
    var MOUSE_CURSOR_NOT_ALLOWED;

    @:from
    static inline function fromInt(i:Int):MouseCursor
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MouseCursor')
private extern class MouseCursorImpl {}

extern enum abstract GamepadButton(GamepadButtonImpl)
{
    @:native('GAMEPAD_BUTTON_UNKNOWN')
    var GAMEPAD_BUTTON_UNKNOWN;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_UP')
    var GAMEPAD_BUTTON_LEFT_FACE_UP;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_RIGHT')
    var GAMEPAD_BUTTON_LEFT_FACE_RIGHT;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_DOWN')
    var GAMEPAD_BUTTON_LEFT_FACE_DOWN;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_LEFT')
    var GAMEPAD_BUTTON_LEFT_FACE_LEFT;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_UP')
    var GAMEPAD_BUTTON_RIGHT_FACE_UP;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_RIGHT')
    var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_DOWN')
    var GAMEPAD_BUTTON_RIGHT_FACE_DOWN;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_LEFT')
    var GAMEPAD_BUTTON_RIGHT_FACE_LEFT;
    @:native('GAMEPAD_BUTTON_LEFT_TRIGGER_1')
    var GAMEPAD_BUTTON_LEFT_TRIGGER_1;
    @:native('GAMEPAD_BUTTON_LEFT_TRIGGER_2')
    var GAMEPAD_BUTTON_LEFT_TRIGGER_2;
    @:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_1')
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_1;
    @:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_2')
    var GAMEPAD_BUTTON_RIGHT_TRIGGER_2;
    @:native('GAMEPAD_BUTTON_MIDDLE_LEFT')
    var GAMEPAD_BUTTON_MIDDLE_LEFT;
    @:native('GAMEPAD_BUTTON_MIDDLE')
    var GAMEPAD_BUTTON_MIDDLE;
    @:native('GAMEPAD_BUTTON_MIDDLE_RIGHT')
    var GAMEPAD_BUTTON_MIDDLE_RIGHT;
    @:native('GAMEPAD_BUTTON_LEFT_THUMB')
    var GAMEPAD_BUTTON_LEFT_THUMB;
    @:native('GAMEPAD_BUTTON_RIGHT_THUMB')
    var GAMEPAD_BUTTON_RIGHT_THUMB;

    @:from
    static inline function fromInt(i:Int):GamepadButton
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('GamepadButton')
private extern class GamepadButtonImpl {}

extern enum abstract GamepadAxis(GamepadAxisImpl)
{
    @:native('GAMEPAD_AXIS_LEFT_X')
    var GAMEPAD_AXIS_LEFT_X;
    @:native('GAMEPAD_AXIS_LEFT_Y')
    var GAMEPAD_AXIS_LEFT_Y;
    @:native('GAMEPAD_AXIS_RIGHT_X')
    var GAMEPAD_AXIS_RIGHT_X;
    @:native('GAMEPAD_AXIS_RIGHT_Y')
    var GAMEPAD_AXIS_RIGHT_Y;
    @:native('GAMEPAD_AXIS_LEFT_TRIGGER')
    var GAMEPAD_AXIS_LEFT_TRIGGER;
    @:native('GAMEPAD_AXIS_RIGHT_TRIGGER')
    var GAMEPAD_AXIS_RIGHT_TRIGGER;

    @:from
    static inline function fromInt(i:Int):GamepadAxis
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('GamepadAxis')
private extern class GamepadAxisImpl {}

extern enum abstract MaterialMapIndex(MaterialMapIndexImpl)
{
    @:native('MATERIAL_MAP_ALBEDO')
    var MATERIAL_MAP_ALBEDO;
    @:native('MATERIAL_MAP_METALNESS')
    var MATERIAL_MAP_METALNESS;
    @:native('MATERIAL_MAP_NORMAL')
    var MATERIAL_MAP_NORMAL;
    @:native('MATERIAL_MAP_ROUGHNESS')
    var MATERIAL_MAP_ROUGHNESS;
    @:native('MATERIAL_MAP_OCCLUSION')
    var MATERIAL_MAP_OCCLUSION;
    @:native('MATERIAL_MAP_EMISSION')
    var MATERIAL_MAP_EMISSION;
    @:native('MATERIAL_MAP_HEIGHT')
    var MATERIAL_MAP_HEIGHT;
    @:native('MATERIAL_MAP_CUBEMAP')
    var MATERIAL_MAP_CUBEMAP;
    @:native('MATERIAL_MAP_IRRADIANCE')
    var MATERIAL_MAP_IRRADIANCE;
    @:native('MATERIAL_MAP_PREFILTER')
    var MATERIAL_MAP_PREFILTER;
    @:native('MATERIAL_MAP_BRDF')
    var MATERIAL_MAP_BRDF;

    @:from
    static inline function fromInt(i:Int):MaterialMapIndex
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('MaterialMapIndex')
private extern class MaterialMapIndexImpl {}

extern enum abstract ShaderLocationIndex(ShaderLocationIndexImpl)
{
    @:native('SHADER_LOC_VERTEX_POSITION')
    var SHADER_LOC_VERTEX_POSITION;
    @:native('SHADER_LOC_VERTEX_TEXCOORD01')
    var SHADER_LOC_VERTEX_TEXCOORD01;
    @:native('SHADER_LOC_VERTEX_TEXCOORD02')
    var SHADER_LOC_VERTEX_TEXCOORD02;
    @:native('SHADER_LOC_VERTEX_NORMAL')
    var SHADER_LOC_VERTEX_NORMAL;
    @:native('SHADER_LOC_VERTEX_TANGENT')
    var SHADER_LOC_VERTEX_TANGENT;
    @:native('SHADER_LOC_VERTEX_COLOR')
    var SHADER_LOC_VERTEX_COLOR;
    @:native('SHADER_LOC_MATRIX_MVP')
    var SHADER_LOC_MATRIX_MVP;
    @:native('SHADER_LOC_MATRIX_VIEW')
    var SHADER_LOC_MATRIX_VIEW;
    @:native('SHADER_LOC_MATRIX_PROJECTION')
    var SHADER_LOC_MATRIX_PROJECTION;
    @:native('SHADER_LOC_MATRIX_MODEL')
    var SHADER_LOC_MATRIX_MODEL;
    @:native('SHADER_LOC_MATRIX_NORMAL')
    var SHADER_LOC_MATRIX_NORMAL;
    @:native('SHADER_LOC_VECTOR_VIEW')
    var SHADER_LOC_VECTOR_VIEW;
    @:native('SHADER_LOC_COLOR_DIFFUSE')
    var SHADER_LOC_COLOR_DIFFUSE;
    @:native('SHADER_LOC_COLOR_SPECULAR')
    var SHADER_LOC_COLOR_SPECULAR;
    @:native('SHADER_LOC_COLOR_AMBIENT')
    var SHADER_LOC_COLOR_AMBIENT;
    @:native('SHADER_LOC_MAP_ALBEDO')
    var SHADER_LOC_MAP_ALBEDO;
    @:native('SHADER_LOC_MAP_METALNESS')
    var SHADER_LOC_MAP_METALNESS;
    @:native('SHADER_LOC_MAP_NORMAL')
    var SHADER_LOC_MAP_NORMAL;
    @:native('SHADER_LOC_MAP_ROUGHNESS')
    var SHADER_LOC_MAP_ROUGHNESS;
    @:native('SHADER_LOC_MAP_OCCLUSION')
    var SHADER_LOC_MAP_OCCLUSION;
    @:native('SHADER_LOC_MAP_EMISSION')
    var SHADER_LOC_MAP_EMISSION;
    @:native('SHADER_LOC_MAP_HEIGHT')
    var SHADER_LOC_MAP_HEIGHT;
    @:native('SHADER_LOC_MAP_CUBEMAP')
    var SHADER_LOC_MAP_CUBEMAP;
    @:native('SHADER_LOC_MAP_IRRADIANCE')
    var SHADER_LOC_MAP_IRRADIANCE;
    @:native('SHADER_LOC_MAP_PREFILTER')
    var SHADER_LOC_MAP_PREFILTER;
    @:native('SHADER_LOC_MAP_BRDF')
    var SHADER_LOC_MAP_BRDF;
    @:native('SHADER_LOC_VERTEX_BONEIDS')
    var SHADER_LOC_VERTEX_BONEIDS;
    @:native('SHADER_LOC_VERTEX_BONEWEIGHTS')
    var SHADER_LOC_VERTEX_BONEWEIGHTS;
    @:native('SHADER_LOC_BONE_MATRICES')
    var SHADER_LOC_BONE_MATRICES;
    @:native('SHADER_LOC_VERTEX_INSTANCE_TX')
    var SHADER_LOC_VERTEX_INSTANCE_TX;

    @:from
    static inline function fromInt(i:Int):ShaderLocationIndex
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderLocationIndex')
private extern class ShaderLocationIndexImpl {}

extern enum abstract ShaderUniformDataType(ShaderUniformDataTypeImpl)
{
    @:native('SHADER_UNIFORM_FLOAT')
    var SHADER_UNIFORM_FLOAT;
    @:native('SHADER_UNIFORM_VEC2')
    var SHADER_UNIFORM_VEC2;
    @:native('SHADER_UNIFORM_VEC3')
    var SHADER_UNIFORM_VEC3;
    @:native('SHADER_UNIFORM_VEC4')
    var SHADER_UNIFORM_VEC4;
    @:native('SHADER_UNIFORM_INT')
    var SHADER_UNIFORM_INT;
    @:native('SHADER_UNIFORM_IVEC2')
    var SHADER_UNIFORM_IVEC2;
    @:native('SHADER_UNIFORM_IVEC3')
    var SHADER_UNIFORM_IVEC3;
    @:native('SHADER_UNIFORM_IVEC4')
    var SHADER_UNIFORM_IVEC4;
    @:native('SHADER_UNIFORM_UINT')
    var SHADER_UNIFORM_UINT;
    @:native('SHADER_UNIFORM_UIVEC2')
    var SHADER_UNIFORM_UIVEC2;
    @:native('SHADER_UNIFORM_UIVEC3')
    var SHADER_UNIFORM_UIVEC3;
    @:native('SHADER_UNIFORM_UIVEC4')
    var SHADER_UNIFORM_UIVEC4;
    @:native('SHADER_UNIFORM_SAMPLER2D')
    var SHADER_UNIFORM_SAMPLER2D;

    @:from
    static inline function fromInt(i:Int):ShaderUniformDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderUniformDataType')
private extern class ShaderUniformDataTypeImpl {}

extern enum abstract ShaderAttributeDataType(ShaderAttributeDataTypeImpl)
{
    @:native('SHADER_ATTRIB_FLOAT')
    var SHADER_ATTRIB_FLOAT;
    @:native('SHADER_ATTRIB_VEC2')
    var SHADER_ATTRIB_VEC2;
    @:native('SHADER_ATTRIB_VEC3')
    var SHADER_ATTRIB_VEC3;
    @:native('SHADER_ATTRIB_VEC4')
    var SHADER_ATTRIB_VEC4;

    @:from
    static inline function fromInt(i:Int):ShaderAttributeDataType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('ShaderAttributeDataType')
private extern class ShaderAttributeDataTypeImpl {}

extern enum abstract PixelFormat(PixelFormatImpl)
{
    @:native('PIXELFORMAT_UNCOMPRESSED_GRAYSCALE')
    var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;
    @:native('PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA')
    var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;
    @:native('PIXELFORMAT_UNCOMPRESSED_R5G6B5')
    var PIXELFORMAT_UNCOMPRESSED_R5G6B5;
    @:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8')
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8;
    @:native('PIXELFORMAT_UNCOMPRESSED_R5G5B5A1')
    var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;
    @:native('PIXELFORMAT_UNCOMPRESSED_R4G4B4A4')
    var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;
    @:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8A8')
    var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32')
    var PIXELFORMAT_UNCOMPRESSED_R32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32')
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32A32')
    var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16')
    var PIXELFORMAT_UNCOMPRESSED_R16;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16')
    var PIXELFORMAT_UNCOMPRESSED_R16G16B16;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16A16')
    var PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;
    @:native('PIXELFORMAT_COMPRESSED_DXT1_RGB')
    var PIXELFORMAT_COMPRESSED_DXT1_RGB;
    @:native('PIXELFORMAT_COMPRESSED_DXT1_RGBA')
    var PIXELFORMAT_COMPRESSED_DXT1_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_DXT3_RGBA')
    var PIXELFORMAT_COMPRESSED_DXT3_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_DXT5_RGBA')
    var PIXELFORMAT_COMPRESSED_DXT5_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ETC1_RGB')
    var PIXELFORMAT_COMPRESSED_ETC1_RGB;
    @:native('PIXELFORMAT_COMPRESSED_ETC2_RGB')
    var PIXELFORMAT_COMPRESSED_ETC2_RGB;
    @:native('PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA')
    var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_PVRT_RGB')
    var PIXELFORMAT_COMPRESSED_PVRT_RGB;
    @:native('PIXELFORMAT_COMPRESSED_PVRT_RGBA')
    var PIXELFORMAT_COMPRESSED_PVRT_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA')
    var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA')
    var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

    @:from
    static inline function fromInt(i:Int):PixelFormat
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('PixelFormat')
private extern class PixelFormatImpl {}

extern enum abstract TextureFilter(TextureFilterImpl)
{
    @:native('TEXTURE_FILTER_POINT')
    var TEXTURE_FILTER_POINT;
    @:native('TEXTURE_FILTER_BILINEAR')
    var TEXTURE_FILTER_BILINEAR;
    @:native('TEXTURE_FILTER_TRILINEAR')
    var TEXTURE_FILTER_TRILINEAR;
    @:native('TEXTURE_FILTER_ANISOTROPIC_4X')
    var TEXTURE_FILTER_ANISOTROPIC_4X;
    @:native('TEXTURE_FILTER_ANISOTROPIC_8X')
    var TEXTURE_FILTER_ANISOTROPIC_8X;
    @:native('TEXTURE_FILTER_ANISOTROPIC_16X')
    var TEXTURE_FILTER_ANISOTROPIC_16X;

    @:from
    static inline function fromInt(i:Int):TextureFilter
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TextureFilter')
private extern class TextureFilterImpl {}

extern enum abstract TextureWrap(TextureWrapImpl)
{
    @:native('TEXTURE_WRAP_REPEAT')
    var TEXTURE_WRAP_REPEAT;
    @:native('TEXTURE_WRAP_CLAMP')
    var TEXTURE_WRAP_CLAMP;
    @:native('TEXTURE_WRAP_MIRROR_REPEAT')
    var TEXTURE_WRAP_MIRROR_REPEAT;
    @:native('TEXTURE_WRAP_MIRROR_CLAMP')
    var TEXTURE_WRAP_MIRROR_CLAMP;

    @:from
    static inline function fromInt(i:Int):TextureWrap
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('TextureWrap')
private extern class TextureWrapImpl {}

extern enum abstract CubemapLayout(CubemapLayoutImpl)
{
    @:native('CUBEMAP_LAYOUT_AUTO_DETECT')
    var CUBEMAP_LAYOUT_AUTO_DETECT;
    @:native('CUBEMAP_LAYOUT_LINE_VERTICAL')
    var CUBEMAP_LAYOUT_LINE_VERTICAL;
    @:native('CUBEMAP_LAYOUT_LINE_HORIZONTAL')
    var CUBEMAP_LAYOUT_LINE_HORIZONTAL;
    @:native('CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR')
    var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;
    @:native('CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE')
    var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;

    @:from
    static inline function fromInt(i:Int):CubemapLayout
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CubemapLayout')
private extern class CubemapLayoutImpl {}

extern enum abstract FontType(FontTypeImpl)
{
    @:native('FONT_DEFAULT')
    var FONT_DEFAULT;
    @:native('FONT_BITMAP')
    var FONT_BITMAP;
    @:native('FONT_SDF')
    var FONT_SDF;

    @:from
    static inline function fromInt(i:Int):FontType
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('FontType')
private extern class FontTypeImpl {}

extern enum abstract BlendMode(BlendModeImpl)
{
    @:native('BLEND_ALPHA')
    var BLEND_ALPHA;
    @:native('BLEND_ADDITIVE')
    var BLEND_ADDITIVE;
    @:native('BLEND_MULTIPLIED')
    var BLEND_MULTIPLIED;
    @:native('BLEND_ADD_COLORS')
    var BLEND_ADD_COLORS;
    @:native('BLEND_SUBTRACT_COLORS')
    var BLEND_SUBTRACT_COLORS;
    @:native('BLEND_ALPHA_PREMULTIPLY')
    var BLEND_ALPHA_PREMULTIPLY;
    @:native('BLEND_CUSTOM')
    var BLEND_CUSTOM;
    @:native('BLEND_CUSTOM_SEPARATE')
    var BLEND_CUSTOM_SEPARATE;

    @:from
    static inline function fromInt(i:Int):BlendMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('BlendMode')
private extern class BlendModeImpl {}

extern enum abstract Gesture(GestureImpl)
{
    @:native('GESTURE_NONE')
    var GESTURE_NONE;
    @:native('GESTURE_TAP')
    var GESTURE_TAP;
    @:native('GESTURE_DOUBLETAP')
    var GESTURE_DOUBLETAP;
    @:native('GESTURE_HOLD')
    var GESTURE_HOLD;
    @:native('GESTURE_DRAG')
    var GESTURE_DRAG;
    @:native('GESTURE_SWIPE_RIGHT')
    var GESTURE_SWIPE_RIGHT;
    @:native('GESTURE_SWIPE_LEFT')
    var GESTURE_SWIPE_LEFT;
    @:native('GESTURE_SWIPE_UP')
    var GESTURE_SWIPE_UP;
    @:native('GESTURE_SWIPE_DOWN')
    var GESTURE_SWIPE_DOWN;
    @:native('GESTURE_PINCH_IN')
    var GESTURE_PINCH_IN;
    @:native('GESTURE_PINCH_OUT')
    var GESTURE_PINCH_OUT;

    @:from
    static inline function fromInt(i:Int):Gesture
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('Gesture')
private extern class GestureImpl {}

extern enum abstract CameraMode(CameraModeImpl)
{
    @:native('CAMERA_CUSTOM')
    var CAMERA_CUSTOM;
    @:native('CAMERA_FREE')
    var CAMERA_FREE;
    @:native('CAMERA_ORBITAL')
    var CAMERA_ORBITAL;
    @:native('CAMERA_FIRST_PERSON')
    var CAMERA_FIRST_PERSON;
    @:native('CAMERA_THIRD_PERSON')
    var CAMERA_THIRD_PERSON;

    @:from
    static inline function fromInt(i:Int):CameraMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CameraMode')
private extern class CameraModeImpl {}

extern enum abstract CameraProjection(CameraProjectionImpl)
{
    @:native('CAMERA_PERSPECTIVE')
    var CAMERA_PERSPECTIVE;
    @:native('CAMERA_ORTHOGRAPHIC')
    var CAMERA_ORTHOGRAPHIC;

    @:from
    static inline function fromInt(i:Int):CameraProjection
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('CameraProjection')
private extern class CameraProjectionImpl {}

extern enum abstract NPatchLayout(NPatchLayoutImpl)
{
    @:native('NPATCH_NINE_PATCH')
    var NPATCH_NINE_PATCH;
    @:native('NPATCH_THREE_PATCH_VERTICAL')
    var NPATCH_THREE_PATCH_VERTICAL;
    @:native('NPATCH_THREE_PATCH_HORIZONTAL')
    var NPATCH_THREE_PATCH_HORIZONTAL;

    @:from
    static inline function fromInt(i:Int):NPatchLayout
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('NPatchLayout')
private extern class NPatchLayoutImpl {}

typedef TraceLogCallback = Callable<(logLevel:Int, text:ConstCharStar, args:VarList) -> Void>;
typedef LoadFileDataCallback = Callable<(fileName:ConstCharStar, dataSize:IntPointer) -> UInt8Pointer>;
typedef SaveFileDataCallback = Callable<(fileName:ConstCharStar, data:VoidPointer, dataSize:Int) -> Bool>;
typedef LoadFileTextCallback = Callable<(fileName:ConstCharStar) -> CastCharStar>;
typedef SaveFileTextCallback = Callable<(fileName:ConstCharStar, text:ConstCharStar) -> Bool>;
