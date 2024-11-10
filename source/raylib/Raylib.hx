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
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector2')
extern class Vector2Impl
{
    var x:Single;
    var y:Single;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Vector2(cpp.Struct<Vector2Impl>) to cpp.Struct<Vector2Impl>
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
    inline function toConstPointer():cpp.RawConstPointer<Vector2Impl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<Vector2Impl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Vector3(cpp.Struct<Vector3Impl>) to cpp.Struct<Vector3Impl>
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
    inline function toConstPointer():cpp.RawConstPointer<Vector3Impl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<Vector3Impl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Vector4(cpp.Struct<Vector4Impl>) to cpp.Struct<Vector4Impl>
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
    inline function toConstPointer():cpp.RawConstPointer<Vector4Impl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<Vector4Impl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Matrix(cpp.Struct<MatrixImpl>) to cpp.Struct<MatrixImpl>
{
    inline function new():Void
    {
        this = new MatrixImpl();
    }

    @:from
    static inline function fromNative(value:MatrixImpl):Matrix
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<MatrixImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<MatrixImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Color')
extern class ColorImpl
{
    var r:cpp.UInt8;
    var g:cpp.UInt8;
    var b:cpp.UInt8;
    var a:cpp.UInt8;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Color(cpp.Struct<ColorImpl>) to cpp.Struct<ColorImpl>
{
    inline function new(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Void
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
    inline function toConstPointer():cpp.RawConstPointer<ColorImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<ColorImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Rectangle(cpp.Struct<RectangleImpl>) to cpp.Struct<RectangleImpl>
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
    inline function toConstPointer():cpp.RawConstPointer<RectangleImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<RectangleImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Image')
extern class ImageImpl
{
    var data:cpp.RawPointer<cpp.Void>;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var format:Int;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Image(cpp.Struct<ImageImpl>) to cpp.Struct<ImageImpl>
{
    inline function new():Void
    {
        this = new ImageImpl();
    }

    @:from
    static inline function fromNative(value:ImageImpl):Image
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<ImageImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<ImageImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Texture')
extern class TextureImpl
{
    var id:cpp.UInt32;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var format:Int;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Texture(cpp.Struct<TextureImpl>) to cpp.Struct<TextureImpl>
{
    inline function new():Void
    {
        this = new TextureImpl();
    }

    @:from
    static inline function fromNative(value:TextureImpl):Texture
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<TextureImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<TextureImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('RenderTexture')
extern class RenderTextureImpl
{
    var id:cpp.UInt32;
    var texture:TextureImpl;
    var depth:TextureImpl;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract RenderTexture(cpp.Struct<RenderTextureImpl>) to cpp.Struct<RenderTextureImpl>
{
    inline function new():Void
    {
        this = new RenderTextureImpl();
    }

    @:from
    static inline function fromNative(value:RenderTextureImpl):RenderTexture
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<RenderTextureImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<RenderTextureImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract NPatchInfo(cpp.Struct<NPatchInfoImpl>) to cpp.Struct<NPatchInfoImpl>
{
    inline function new():Void
    {
        this = new NPatchInfoImpl();
    }

    @:from
    static inline function fromNative(value:NPatchInfoImpl):NPatchInfo
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<NPatchInfoImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<NPatchInfoImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract GlyphInfo(cpp.Struct<GlyphInfoImpl>) to cpp.Struct<GlyphInfoImpl>
{
    inline function new():Void
    {
        this = new GlyphInfoImpl();
    }

    @:from
    static inline function fromNative(value:GlyphInfoImpl):GlyphInfo
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<GlyphInfoImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<GlyphInfoImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Font')
extern class FontImpl
{
    var baseSize:Int;
    var glyphCount:Int;
    var glyphPadding:Int;
    var texture:TextureImpl;
    var recs:cpp.RawPointer<RectangleImpl>;
    var glyphs:cpp.RawPointer<GlyphInfoImpl>;

    function new():Void;
}

@:nullSafety
extern abstract Font(cpp.Struct<FontImpl>) to cpp.Struct<FontImpl>
{
    inline function new():Void
    {
        this = new FontImpl();
    }

    @:from
    static inline function fromNative(value:FontImpl):Font
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<FontImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<FontImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Camera3D(cpp.Struct<Camera3DImpl>) to cpp.Struct<Camera3DImpl>
{
    inline function new():Void
    {
        this = new Camera3DImpl();
    }

    @:from
    static inline function fromNative(value:Camera3DImpl):Camera3D
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<Camera3DImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<Camera3DImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Camera2D(cpp.Struct<Camera2DImpl>) to cpp.Struct<Camera2DImpl>
{
    inline function new():Void
    {
        this = new Camera2DImpl();
    }

    @:from
    static inline function fromNative(value:Camera2DImpl):Camera2D
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<Camera2DImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<Camera2DImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Mesh')
extern class MeshImpl
{
    var vertexCount:Int;
    var triangleCount:Int;
    var vertices:raylib.utils.FloatPointer;
    var texcoords:raylib.utils.FloatPointer;
    var texcoords2:raylib.utils.FloatPointer;
    var normals:raylib.utils.FloatPointer;
    var tangents:raylib.utils.FloatPointer;
    var colors:raylib.utils.BytesPointer;
    var indices:raylib.utils.ShortPointer;
    var animVertices:raylib.utils.FloatPointer;
    var animNormals:raylib.utils.FloatPointer;
    var boneIds:raylib.utils.BytesPointer;
    var boneWeights:raylib.utils.FloatPointer;
    var boneMatrices:cpp.RawPointer<MatrixImpl>;
    var vaoId:cpp.UInt32;
    var vboId:raylib.utils.UnsignedPointer;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Mesh(cpp.Struct<MeshImpl>) to cpp.Struct<MeshImpl>
{
    inline function new():Void
    {
        this = new MeshImpl();
    }

    @:from
    static inline function fromNative(value:MeshImpl):Mesh
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<MeshImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<MeshImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Shader')
extern class ShaderImpl
{
    var id:cpp.UInt32;
    var locs:raylib.utils.IntPointer;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Shader(cpp.Struct<ShaderImpl>) to cpp.Struct<ShaderImpl>
{
    inline function new():Void
    {
        this = new ShaderImpl();
    }

    @:from
    static inline function fromNative(value:ShaderImpl):Shader
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<ShaderImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<ShaderImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract MaterialMap(cpp.Struct<MaterialMapImpl>) to cpp.Struct<MaterialMapImpl>
{
    inline function new():Void
    {
        this = new MaterialMapImpl();
    }

    @:from
    static inline function fromNative(value:MaterialMapImpl):MaterialMap
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<MaterialMapImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<MaterialMapImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Material')
extern class MaterialImpl
{
    var shader:ShaderImpl;
    var maps:cpp.RawPointer<MaterialMapImpl>;
    var params:raylib.utils.FloatPointer;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Material(cpp.Struct<MaterialImpl>) to cpp.Struct<MaterialImpl>
{
    inline function new():Void
    {
        this = new MaterialImpl();
    }

    @:from
    static inline function fromNative(value:MaterialImpl):Material
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<MaterialImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<MaterialImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract Transform(cpp.Struct<TransformImpl>) to cpp.Struct<TransformImpl>
{
    inline function new():Void
    {
        this = new TransformImpl();
    }

    @:from
    static inline function fromNative(value:TransformImpl):Transform
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<TransformImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<TransformImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoneInfo')
extern class BoneInfoImpl
{
    var name:cpp.CastCharStar;
    var parent:Int;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract BoneInfo(cpp.Struct<BoneInfoImpl>) to cpp.Struct<BoneInfoImpl>
{
    inline function new():Void
    {
        this = new BoneInfoImpl();
    }

    @:from
    static inline function fromNative(value:BoneInfoImpl):BoneInfo
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<BoneInfoImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<BoneInfoImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Model')
extern class ModelImpl
{
    var transform:MatrixImpl;
    var meshCount:Int;
    var materialCount:Int;
    var meshes:cpp.RawPointer<MeshImpl>;
    var materials:cpp.RawPointer<MaterialImpl>;
    var meshMaterial:raylib.utils.IntPointer;
    var boneCount:Int;
    var bones:cpp.RawPointer<BoneInfo>;
    var bindPose:cpp.RawPointer<TransformImpl>;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Model(cpp.Struct<ModelImpl>) to cpp.Struct<ModelImpl>
{
    inline function new():Void
    {
        this = new ModelImpl();
    }

    @:from
    static inline function fromNative(value:ModelImpl):Model
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<ModelImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<ModelImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('ModelAnimation')
extern class ModelAnimationImpl
{
    var boneCount:Int;
    var frameCount:Int;
    var bones:cpp.RawPointer<BoneInfo>;
    var framePoses:cpp.RawPointer<cpp.RawPointer<TransformImpl>>;
    var name:cpp.CastCharStar;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract ModelAnimation(cpp.Struct<ModelAnimationImpl>) to cpp.Struct<ModelAnimationImpl>
{
    inline function new():Void
    {
        this = new ModelAnimationImpl();
    }

    @:from
    static inline function fromNative(value:ModelAnimationImpl):ModelAnimation
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<ModelAnimationImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<ModelAnimationImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Ray')
extern class RayImpl
{
    var position:Vector3Impl;
    var direction:Vector3Impl;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Ray(cpp.Struct<RayImpl>) to cpp.Struct<RayImpl>
{
    inline function new():Void
    {
        this = new RayImpl();
    }

    @:from
    static inline function fromNative(value:RayImpl):Ray
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<RayImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<RayImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
@:nullSafety
extern abstract RayCollision(cpp.Struct<RayCollisionImpl>) to cpp.Struct<RayCollisionImpl>
{
    inline function new():Void
    {
        this = new RayCollisionImpl();
    }

    @:from
    static inline function fromNative(value:RayCollisionImpl):RayCollision
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<RayCollisionImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<RayCollisionImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoundingBox')
extern class BoundingBoxImpl
{
    var min:Vector3Impl;
    var max:Vector3Impl;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract BoundingBox(cpp.Struct<BoundingBoxImpl>) to cpp.Struct<BoundingBoxImpl>
{
    inline function new():Void
    {
        this = new BoundingBoxImpl();
    }

    @:from
    static inline function fromNative(value:BoundingBoxImpl):BoundingBox
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<BoundingBoxImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<BoundingBoxImpl>
        return cast cpp.RawPointer.addressOf(this);
}

typedef AudioCallback = cpp.Callable<(bufferData:cpp.RawPointer<cpp.Void>, frames:cpp.UInt32) -> Void>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Wave')
extern class WaveImpl
{
    var frameCount:cpp.UInt32;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Wave(cpp.Struct<WaveImpl>) to cpp.Struct<WaveImpl>
{
    inline function new():Void
    {
        this = new WaveImpl();
    }

    @:from
    static inline function fromNative(value:WaveImpl):Wave
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<WaveImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<WaveImpl>
        return cast cpp.RawPointer.addressOf(this);
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
extern class AudioStreamImpl
{
    var buffer:cpp.RawPointer<RAudioBuffer>;
    var processor:cpp.RawPointer<RAudioProcessor>;
    var sampleRate:cpp.UInt32;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract AudioStream(cpp.Struct<AudioStreamImpl>) to cpp.Struct<AudioStreamImpl>
{
    inline function new():Void
    {
        this = new AudioStreamImpl();
    }

    @:from
    static inline function fromNative(value:AudioStreamImpl):AudioStream
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<AudioStreamImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<AudioStreamImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Sound')
extern class SoundImpl
{
    var stream:AudioStreamImpl;
    var frameCount:cpp.UInt32;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Sound(cpp.Struct<SoundImpl>) to cpp.Struct<SoundImpl>
{
    inline function new():Void
    {
        this = new SoundImpl();
    }

    @:from
    static inline function fromNative(value:SoundImpl):Sound
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<SoundImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<SoundImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Music')
extern class MusicImpl
{
    var stream:AudioStreamImpl;
    var frameCount:cpp.UInt32;
    var looping:Bool;
    var ctxType:Int;
    var ctxData:cpp.RawPointer<cpp.Void>;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Music(cpp.Struct<MusicImpl>) to cpp.Struct<MusicImpl>
{
    inline function new():Void
    {
        this = new MusicImpl();
    }

    @:from
    static inline function fromNative(value:MusicImpl):Music
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<MusicImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<MusicImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
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
    var lensDistortionValues:raylib.utils.FloatPointer;
    var chromaAbCorrection:raylib.utils.FloatPointer;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract VrDeviceInfo(cpp.Struct<VrDeviceInfoImpl>) to cpp.Struct<VrDeviceInfoImpl>
{
    inline function new():Void
    {
        this = new VrDeviceInfoImpl();
    }

    @:from
    static inline function fromNative(value:VrDeviceInfoImpl):VrDeviceInfo
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<VrDeviceInfoImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<VrDeviceInfoImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('VrStereoConfig')
extern class VrStereoConfigImpl
{
    var projection:cpp.RawPointer<MatrixImpl>;
    var rightLensCenter:raylib.utils.FloatPointer;
    var leftScreenCenter:raylib.utils.FloatPointer;
    var rightScreenCenter:raylib.utils.FloatPointer;
    var scale:raylib.utils.FloatPointer;
    var scaleIn:raylib.utils.FloatPointer;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract VrStereoConfig(cpp.Struct<VrStereoConfigImpl>) to cpp.Struct<VrStereoConfigImpl>
{
    inline function new():Void
    {
        this = new VrStereoConfigImpl();
    }

    @:from
    static inline function fromNative(value:VrStereoConfigImpl):VrStereoConfig
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<VrStereoConfigImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<VrStereoConfigImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('FilePathList')
extern class FilePathListImpl
{
    var capacity:cpp.UInt32;
    var count:cpp.UInt32;
    var paths:cpp.RawPointer<cpp.CastCharStar>;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract FilePathList(cpp.Struct<FilePathListImpl>) to cpp.Struct<FilePathListImpl>
{
    inline function new():Void
    {
        this = new FilePathListImpl();
    }

    @:from
    static inline function fromNative(value:FilePathListImpl):FilePathList
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<FilePathListImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<FilePathListImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEvent')
extern class AutomationEventImpl
{
    var frame:cpp.UInt32;
    var type:cpp.UInt32;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract AutomationEvent(cpp.Struct<AutomationEventImpl>) to cpp.Struct<AutomationEventImpl>
{
    inline function new():Void
    {
        this = new AutomationEventImpl();
    }

    @:from
    static inline function fromNative(value:AutomationEventImpl):AutomationEvent
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<AutomationEventImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<AutomationEventImpl>
        return cast cpp.RawPointer.addressOf(this);
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEventList')
extern class AutomationEventListImpl
{
    var capacity:cpp.UInt32;
    var events:cpp.RawPointer<AutomationEventImpl>;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract AutomationEventList(cpp.Struct<AutomationEventListImpl>) to cpp.Struct<AutomationEventListImpl>
{
    inline function new():Void
    {
        this = new AutomationEventListImpl();
    }

    @:from
    static inline function fromNative(value:AutomationEventListImpl):AutomationEventList
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<AutomationEventListImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<AutomationEventListImpl>
        return cast cpp.RawPointer.addressOf(this);
}

extern enum abstract ConfigFlags(ConfigFlagsImpl)
{
    @:native('FLAG_VSYNC_HINT') var FLAG_VSYNC_HINT;
    @:native('FLAG_FULLSCREEN_MODE') var FLAG_FULLSCREEN_MODE;
    @:native('FLAG_WINDOW_RESIZABLE') var FLAG_WINDOW_RESIZABLE;
    @:native('FLAG_WINDOW_UNDECORATED') var FLAG_WINDOW_UNDECORATED;
    @:native('FLAG_WINDOW_HIDDEN') var FLAG_WINDOW_HIDDEN;
    @:native('FLAG_WINDOW_MINIMIZED') var FLAG_WINDOW_MINIMIZED;
    @:native('FLAG_WINDOW_MAXIMIZED') var FLAG_WINDOW_MAXIMIZED;
    @:native('FLAG_WINDOW_UNFOCUSED') var FLAG_WINDOW_UNFOCUSED;
    @:native('FLAG_WINDOW_TOPMOST') var FLAG_WINDOW_TOPMOST;
    @:native('FLAG_WINDOW_ALWAYS_RUN') var FLAG_WINDOW_ALWAYS_RUN;
    @:native('FLAG_WINDOW_TRANSPARENT') var FLAG_WINDOW_TRANSPARENT;
    @:native('FLAG_WINDOW_HIGHDPI') var FLAG_WINDOW_HIGHDPI;
    @:native('FLAG_WINDOW_MOUSE_PASSTHROUGH') var FLAG_WINDOW_MOUSE_PASSTHROUGH;
    @:native('FLAG_BORDERLESS_WINDOWED_MODE') var FLAG_BORDERLESS_WINDOWED_MODE;
    @:native('FLAG_MSAA_4X_HINT') var FLAG_MSAA_4X_HINT;
    @:native('FLAG_INTERLACED_HINT') var FLAG_INTERLACED_HINT;

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
    @:native('LOG_ALL') var LOG_ALL;
    @:native('LOG_TRACE') var LOG_TRACE;
    @:native('LOG_DEBUG') var LOG_DEBUG;
    @:native('LOG_INFO') var LOG_INFO;
    @:native('LOG_WARNING') var LOG_WARNING;
    @:native('LOG_ERROR') var LOG_ERROR;
    @:native('LOG_FATAL') var LOG_FATAL;
    @:native('LOG_NONE') var LOG_NONE;

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
    @:native('KEY_NULL') var KEY_NULL;
    @:native('KEY_APOSTROPHE') var KEY_APOSTROPHE;
    @:native('KEY_COMMA') var KEY_COMMA;
    @:native('KEY_MINUS') var KEY_MINUS;
    @:native('KEY_PERIOD') var KEY_PERIOD;
    @:native('KEY_SLASH') var KEY_SLASH;
    @:native('KEY_ZERO') var KEY_ZERO;
    @:native('KEY_ONE') var KEY_ONE;
    @:native('KEY_TWO') var KEY_TWO;
    @:native('KEY_THREE') var KEY_THREE;
    @:native('KEY_FOUR') var KEY_FOUR;
    @:native('KEY_FIVE') var KEY_FIVE;
    @:native('KEY_SIX') var KEY_SIX;
    @:native('KEY_SEVEN') var KEY_SEVEN;
    @:native('KEY_EIGHT') var KEY_EIGHT;
    @:native('KEY_NINE') var KEY_NINE;
    @:native('KEY_SEMICOLON') var KEY_SEMICOLON;
    @:native('KEY_EQUAL') var KEY_EQUAL;
    @:native('KEY_A') var KEY_A;
    @:native('KEY_B') var KEY_B;
    @:native('KEY_C') var KEY_C;
    @:native('KEY_D') var KEY_D;
    @:native('KEY_E') var KEY_E;
    @:native('KEY_F') var KEY_F;
    @:native('KEY_G') var KEY_G;
    @:native('KEY_H') var KEY_H;
    @:native('KEY_I') var KEY_I;
    @:native('KEY_J') var KEY_J;
    @:native('KEY_K') var KEY_K;
    @:native('KEY_L') var KEY_L;
    @:native('KEY_M') var KEY_M;
    @:native('KEY_N') var KEY_N;
    @:native('KEY_O') var KEY_O;
    @:native('KEY_P') var KEY_P;
    @:native('KEY_Q') var KEY_Q;
    @:native('KEY_R') var KEY_R;
    @:native('KEY_S') var KEY_S;
    @:native('KEY_T') var KEY_T;
    @:native('KEY_U') var KEY_U;
    @:native('KEY_V') var KEY_V;
    @:native('KEY_W') var KEY_W;
    @:native('KEY_X') var KEY_X;
    @:native('KEY_Y') var KEY_Y;
    @:native('KEY_Z') var KEY_Z;
    @:native('KEY_LEFT_BRACKET') var KEY_LEFT_BRACKET;
    @:native('KEY_BACKSLASH') var KEY_BACKSLASH;
    @:native('KEY_RIGHT_BRACKET') var KEY_RIGHT_BRACKET;
    @:native('KEY_GRAVE') var KEY_GRAVE;
    @:native('KEY_SPACE') var KEY_SPACE;
    @:native('KEY_ESCAPE') var KEY_ESCAPE;
    @:native('KEY_ENTER') var KEY_ENTER;
    @:native('KEY_TAB') var KEY_TAB;
    @:native('KEY_BACKSPACE') var KEY_BACKSPACE;
    @:native('KEY_INSERT') var KEY_INSERT;
    @:native('KEY_DELETE') var KEY_DELETE;
    @:native('KEY_RIGHT') var KEY_RIGHT;
    @:native('KEY_LEFT') var KEY_LEFT;
    @:native('KEY_DOWN') var KEY_DOWN;
    @:native('KEY_UP') var KEY_UP;
    @:native('KEY_PAGE_UP') var KEY_PAGE_UP;
    @:native('KEY_PAGE_DOWN') var KEY_PAGE_DOWN;
    @:native('KEY_HOME') var KEY_HOME;
    @:native('KEY_END') var KEY_END;
    @:native('KEY_CAPS_LOCK') var KEY_CAPS_LOCK;
    @:native('KEY_SCROLL_LOCK') var KEY_SCROLL_LOCK;
    @:native('KEY_NUM_LOCK') var KEY_NUM_LOCK;
    @:native('KEY_PRINT_SCREEN') var KEY_PRINT_SCREEN;
    @:native('KEY_PAUSE') var KEY_PAUSE;
    @:native('KEY_F1') var KEY_F1;
    @:native('KEY_F2') var KEY_F2;
    @:native('KEY_F3') var KEY_F3;
    @:native('KEY_F4') var KEY_F4;
    @:native('KEY_F5') var KEY_F5;
    @:native('KEY_F6') var KEY_F6;
    @:native('KEY_F7') var KEY_F7;
    @:native('KEY_F8') var KEY_F8;
    @:native('KEY_F9') var KEY_F9;
    @:native('KEY_F10') var KEY_F10;
    @:native('KEY_F11') var KEY_F11;
    @:native('KEY_F12') var KEY_F12;
    @:native('KEY_LEFT_SHIFT') var KEY_LEFT_SHIFT;
    @:native('KEY_LEFT_CONTROL') var KEY_LEFT_CONTROL;
    @:native('KEY_LEFT_ALT') var KEY_LEFT_ALT;
    @:native('KEY_LEFT_SUPER') var KEY_LEFT_SUPER;
    @:native('KEY_RIGHT_SHIFT') var KEY_RIGHT_SHIFT;
    @:native('KEY_RIGHT_CONTROL') var KEY_RIGHT_CONTROL;
    @:native('KEY_RIGHT_ALT') var KEY_RIGHT_ALT;
    @:native('KEY_RIGHT_SUPER') var KEY_RIGHT_SUPER;
    @:native('KEY_KB_MENU') var KEY_KB_MENU;
    @:native('KEY_KP_0') var KEY_KP_0;
    @:native('KEY_KP_1') var KEY_KP_1;
    @:native('KEY_KP_2') var KEY_KP_2;
    @:native('KEY_KP_3') var KEY_KP_3;
    @:native('KEY_KP_4') var KEY_KP_4;
    @:native('KEY_KP_5') var KEY_KP_5;
    @:native('KEY_KP_6') var KEY_KP_6;
    @:native('KEY_KP_7') var KEY_KP_7;
    @:native('KEY_KP_8') var KEY_KP_8;
    @:native('KEY_KP_9') var KEY_KP_9;
    @:native('KEY_KP_DECIMAL') var KEY_KP_DECIMAL;
    @:native('KEY_KP_DIVIDE') var KEY_KP_DIVIDE;
    @:native('KEY_KP_MULTIPLY') var KEY_KP_MULTIPLY;
    @:native('KEY_KP_SUBTRACT') var KEY_KP_SUBTRACT;
    @:native('KEY_KP_ADD') var KEY_KP_ADD;
    @:native('KEY_KP_ENTER') var KEY_KP_ENTER;
    @:native('KEY_KP_EQUAL') var KEY_KP_EQUAL;
    @:native('KEY_BACK') var KEY_BACK;
    @:native('KEY_MENU') var KEY_MENU;
    @:native('KEY_VOLUME_UP') var KEY_VOLUME_UP;
    @:native('KEY_VOLUME_DOWN') var KEY_VOLUME_DOWN;

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
    @:native('MOUSE_BUTTON_LEFT') var MOUSE_BUTTON_LEFT;
    @:native('MOUSE_BUTTON_RIGHT') var MOUSE_BUTTON_RIGHT;
    @:native('MOUSE_BUTTON_MIDDLE') var MOUSE_BUTTON_MIDDLE;
    @:native('MOUSE_BUTTON_SIDE') var MOUSE_BUTTON_SIDE;
    @:native('MOUSE_BUTTON_EXTRA') var MOUSE_BUTTON_EXTRA;
    @:native('MOUSE_BUTTON_FORWARD') var MOUSE_BUTTON_FORWARD;
    @:native('MOUSE_BUTTON_BACK') var MOUSE_BUTTON_BACK;

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
    @:native('MOUSE_CURSOR_DEFAULT') var MOUSE_CURSOR_DEFAULT;
    @:native('MOUSE_CURSOR_ARROW') var MOUSE_CURSOR_ARROW;
    @:native('MOUSE_CURSOR_IBEAM') var MOUSE_CURSOR_IBEAM;
    @:native('MOUSE_CURSOR_CROSSHAIR') var MOUSE_CURSOR_CROSSHAIR;
    @:native('MOUSE_CURSOR_POINTING_HAND') var MOUSE_CURSOR_POINTING_HAND;
    @:native('MOUSE_CURSOR_RESIZE_EW') var MOUSE_CURSOR_RESIZE_EW;
    @:native('MOUSE_CURSOR_RESIZE_NS') var MOUSE_CURSOR_RESIZE_NS;
    @:native('MOUSE_CURSOR_RESIZE_NWSE') var MOUSE_CURSOR_RESIZE_NWSE;
    @:native('MOUSE_CURSOR_RESIZE_NESW') var MOUSE_CURSOR_RESIZE_NESW;
    @:native('MOUSE_CURSOR_RESIZE_ALL') var MOUSE_CURSOR_RESIZE_ALL;
    @:native('MOUSE_CURSOR_NOT_ALLOWED') var MOUSE_CURSOR_NOT_ALLOWED;

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
    @:native('GAMEPAD_BUTTON_UNKNOWN') var GAMEPAD_BUTTON_UNKNOWN;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_UP') var GAMEPAD_BUTTON_LEFT_FACE_UP;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_RIGHT') var GAMEPAD_BUTTON_LEFT_FACE_RIGHT;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_DOWN') var GAMEPAD_BUTTON_LEFT_FACE_DOWN;
    @:native('GAMEPAD_BUTTON_LEFT_FACE_LEFT') var GAMEPAD_BUTTON_LEFT_FACE_LEFT;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_UP') var GAMEPAD_BUTTON_RIGHT_FACE_UP;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_RIGHT') var GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_DOWN') var GAMEPAD_BUTTON_RIGHT_FACE_DOWN;
    @:native('GAMEPAD_BUTTON_RIGHT_FACE_LEFT') var GAMEPAD_BUTTON_RIGHT_FACE_LEFT;
    @:native('GAMEPAD_BUTTON_LEFT_TRIGGER_1') var GAMEPAD_BUTTON_LEFT_TRIGGER_1;
    @:native('GAMEPAD_BUTTON_LEFT_TRIGGER_2') var GAMEPAD_BUTTON_LEFT_TRIGGER_2;
    @:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_1') var GAMEPAD_BUTTON_RIGHT_TRIGGER_1;
    @:native('GAMEPAD_BUTTON_RIGHT_TRIGGER_2') var GAMEPAD_BUTTON_RIGHT_TRIGGER_2;
    @:native('GAMEPAD_BUTTON_MIDDLE_LEFT') var GAMEPAD_BUTTON_MIDDLE_LEFT;
    @:native('GAMEPAD_BUTTON_MIDDLE') var GAMEPAD_BUTTON_MIDDLE;
    @:native('GAMEPAD_BUTTON_MIDDLE_RIGHT') var GAMEPAD_BUTTON_MIDDLE_RIGHT;
    @:native('GAMEPAD_BUTTON_LEFT_THUMB') var GAMEPAD_BUTTON_LEFT_THUMB;
    @:native('GAMEPAD_BUTTON_RIGHT_THUMB') var GAMEPAD_BUTTON_RIGHT_THUMB;

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
    @:native('GAMEPAD_AXIS_LEFT_X') var GAMEPAD_AXIS_LEFT_X;
    @:native('GAMEPAD_AXIS_LEFT_Y') var GAMEPAD_AXIS_LEFT_Y;
    @:native('GAMEPAD_AXIS_RIGHT_X') var GAMEPAD_AXIS_RIGHT_X;
    @:native('GAMEPAD_AXIS_RIGHT_Y') var GAMEPAD_AXIS_RIGHT_Y;
    @:native('GAMEPAD_AXIS_LEFT_TRIGGER') var GAMEPAD_AXIS_LEFT_TRIGGER;
    @:native('GAMEPAD_AXIS_RIGHT_TRIGGER') var GAMEPAD_AXIS_RIGHT_TRIGGER;

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
    @:native('MATERIAL_MAP_ALBEDO') var MATERIAL_MAP_ALBEDO;
    @:native('MATERIAL_MAP_METALNESS') var MATERIAL_MAP_METALNESS;
    @:native('MATERIAL_MAP_NORMAL') var MATERIAL_MAP_NORMAL;
    @:native('MATERIAL_MAP_ROUGHNESS') var MATERIAL_MAP_ROUGHNESS;
    @:native('MATERIAL_MAP_OCCLUSION') var MATERIAL_MAP_OCCLUSION;
    @:native('MATERIAL_MAP_EMISSION') var MATERIAL_MAP_EMISSION;
    @:native('MATERIAL_MAP_HEIGHT') var MATERIAL_MAP_HEIGHT;
    @:native('MATERIAL_MAP_CUBEMAP') var MATERIAL_MAP_CUBEMAP;
    @:native('MATERIAL_MAP_IRRADIANCE') var MATERIAL_MAP_IRRADIANCE;
    @:native('MATERIAL_MAP_PREFILTER') var MATERIAL_MAP_PREFILTER;
    @:native('MATERIAL_MAP_BRDF') var MATERIAL_MAP_BRDF;

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
    @:native('SHADER_LOC_VERTEX_POSITION') var SHADER_LOC_VERTEX_POSITION;
    @:native('SHADER_LOC_VERTEX_TEXCOORD01') var SHADER_LOC_VERTEX_TEXCOORD01;
    @:native('SHADER_LOC_VERTEX_TEXCOORD02') var SHADER_LOC_VERTEX_TEXCOORD02;
    @:native('SHADER_LOC_VERTEX_NORMAL') var SHADER_LOC_VERTEX_NORMAL;
    @:native('SHADER_LOC_VERTEX_TANGENT') var SHADER_LOC_VERTEX_TANGENT;
    @:native('SHADER_LOC_VERTEX_COLOR') var SHADER_LOC_VERTEX_COLOR;
    @:native('SHADER_LOC_MATRIX_MVP') var SHADER_LOC_MATRIX_MVP;
    @:native('SHADER_LOC_MATRIX_VIEW') var SHADER_LOC_MATRIX_VIEW;
    @:native('SHADER_LOC_MATRIX_PROJECTION') var SHADER_LOC_MATRIX_PROJECTION;
    @:native('SHADER_LOC_MATRIX_MODEL') var SHADER_LOC_MATRIX_MODEL;
    @:native('SHADER_LOC_MATRIX_NORMAL') var SHADER_LOC_MATRIX_NORMAL;
    @:native('SHADER_LOC_VECTOR_VIEW') var SHADER_LOC_VECTOR_VIEW;
    @:native('SHADER_LOC_COLOR_DIFFUSE') var SHADER_LOC_COLOR_DIFFUSE;
    @:native('SHADER_LOC_COLOR_SPECULAR') var SHADER_LOC_COLOR_SPECULAR;
    @:native('SHADER_LOC_COLOR_AMBIENT') var SHADER_LOC_COLOR_AMBIENT;
    @:native('SHADER_LOC_MAP_ALBEDO') var SHADER_LOC_MAP_ALBEDO;
    @:native('SHADER_LOC_MAP_METALNESS') var SHADER_LOC_MAP_METALNESS;
    @:native('SHADER_LOC_MAP_NORMAL') var SHADER_LOC_MAP_NORMAL;
    @:native('SHADER_LOC_MAP_ROUGHNESS') var SHADER_LOC_MAP_ROUGHNESS;
    @:native('SHADER_LOC_MAP_OCCLUSION') var SHADER_LOC_MAP_OCCLUSION;
    @:native('SHADER_LOC_MAP_EMISSION') var SHADER_LOC_MAP_EMISSION;
    @:native('SHADER_LOC_MAP_HEIGHT') var SHADER_LOC_MAP_HEIGHT;
    @:native('SHADER_LOC_MAP_CUBEMAP') var SHADER_LOC_MAP_CUBEMAP;
    @:native('SHADER_LOC_MAP_IRRADIANCE') var SHADER_LOC_MAP_IRRADIANCE;
    @:native('SHADER_LOC_MAP_PREFILTER') var SHADER_LOC_MAP_PREFILTER;
    @:native('SHADER_LOC_MAP_BRDF') var SHADER_LOC_MAP_BRDF;
    @:native('SHADER_LOC_VERTEX_BONEIDS') var SHADER_LOC_VERTEX_BONEIDS;
    @:native('SHADER_LOC_VERTEX_BONEWEIGHTS') var SHADER_LOC_VERTEX_BONEWEIGHTS;
    @:native('SHADER_LOC_BONE_MATRICES') var SHADER_LOC_BONE_MATRICES;

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
    @:native('SHADER_UNIFORM_FLOAT') var SHADER_UNIFORM_FLOAT;
    @:native('SHADER_UNIFORM_VEC2') var SHADER_UNIFORM_VEC2;
    @:native('SHADER_UNIFORM_VEC3') var SHADER_UNIFORM_VEC3;
    @:native('SHADER_UNIFORM_VEC4') var SHADER_UNIFORM_VEC4;
    @:native('SHADER_UNIFORM_INT') var SHADER_UNIFORM_INT;
    @:native('SHADER_UNIFORM_IVEC2') var SHADER_UNIFORM_IVEC2;
    @:native('SHADER_UNIFORM_IVEC3') var SHADER_UNIFORM_IVEC3;
    @:native('SHADER_UNIFORM_IVEC4') var SHADER_UNIFORM_IVEC4;
    @:native('SHADER_UNIFORM_SAMPLER2D') var SHADER_UNIFORM_SAMPLER2D;

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
    @:native('SHADER_ATTRIB_FLOAT') var SHADER_ATTRIB_FLOAT;
    @:native('SHADER_ATTRIB_VEC2') var SHADER_ATTRIB_VEC2;
    @:native('SHADER_ATTRIB_VEC3') var SHADER_ATTRIB_VEC3;
    @:native('SHADER_ATTRIB_VEC4') var SHADER_ATTRIB_VEC4;

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
    @:native('PIXELFORMAT_UNCOMPRESSED_GRAYSCALE') var PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;
    @:native('PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA') var PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;
    @:native('PIXELFORMAT_UNCOMPRESSED_R5G6B5') var PIXELFORMAT_UNCOMPRESSED_R5G6B5;
    @:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8') var PIXELFORMAT_UNCOMPRESSED_R8G8B8;
    @:native('PIXELFORMAT_UNCOMPRESSED_R5G5B5A1') var PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;
    @:native('PIXELFORMAT_UNCOMPRESSED_R4G4B4A4') var PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;
    @:native('PIXELFORMAT_UNCOMPRESSED_R8G8B8A8') var PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32') var PIXELFORMAT_UNCOMPRESSED_R32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32') var PIXELFORMAT_UNCOMPRESSED_R32G32B32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R32G32B32A32') var PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16') var PIXELFORMAT_UNCOMPRESSED_R16;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16') var PIXELFORMAT_UNCOMPRESSED_R16G16B16;
    @:native('PIXELFORMAT_UNCOMPRESSED_R16G16B16A16') var PIXELFORMAT_UNCOMPRESSED_R16G16B16A16;
    @:native('PIXELFORMAT_COMPRESSED_DXT1_RGB') var PIXELFORMAT_COMPRESSED_DXT1_RGB;
    @:native('PIXELFORMAT_COMPRESSED_DXT1_RGBA') var PIXELFORMAT_COMPRESSED_DXT1_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_DXT3_RGBA') var PIXELFORMAT_COMPRESSED_DXT3_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_DXT5_RGBA') var PIXELFORMAT_COMPRESSED_DXT5_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ETC1_RGB') var PIXELFORMAT_COMPRESSED_ETC1_RGB;
    @:native('PIXELFORMAT_COMPRESSED_ETC2_RGB') var PIXELFORMAT_COMPRESSED_ETC2_RGB;
    @:native('PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA') var PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_PVRT_RGB') var PIXELFORMAT_COMPRESSED_PVRT_RGB;
    @:native('PIXELFORMAT_COMPRESSED_PVRT_RGBA') var PIXELFORMAT_COMPRESSED_PVRT_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA') var PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;
    @:native('PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA') var PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;

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
    @:native('TEXTURE_FILTER_POINT') var TEXTURE_FILTER_POINT;
    @:native('TEXTURE_FILTER_BILINEAR') var TEXTURE_FILTER_BILINEAR;
    @:native('TEXTURE_FILTER_TRILINEAR') var TEXTURE_FILTER_TRILINEAR;
    @:native('TEXTURE_FILTER_ANISOTROPIC_4X') var TEXTURE_FILTER_ANISOTROPIC_4X;
    @:native('TEXTURE_FILTER_ANISOTROPIC_8X') var TEXTURE_FILTER_ANISOTROPIC_8X;
    @:native('TEXTURE_FILTER_ANISOTROPIC_16X') var TEXTURE_FILTER_ANISOTROPIC_16X;

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
    @:native('TEXTURE_WRAP_REPEAT') var TEXTURE_WRAP_REPEAT;
    @:native('TEXTURE_WRAP_CLAMP') var TEXTURE_WRAP_CLAMP;
    @:native('TEXTURE_WRAP_MIRROR_REPEAT') var TEXTURE_WRAP_MIRROR_REPEAT;
    @:native('TEXTURE_WRAP_MIRROR_CLAMP') var TEXTURE_WRAP_MIRROR_CLAMP;

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
    @:native('CUBEMAP_LAYOUT_AUTO_DETECT') var CUBEMAP_LAYOUT_AUTO_DETECT;
    @:native('CUBEMAP_LAYOUT_LINE_VERTICAL') var CUBEMAP_LAYOUT_LINE_VERTICAL;
    @:native('CUBEMAP_LAYOUT_LINE_HORIZONTAL') var CUBEMAP_LAYOUT_LINE_HORIZONTAL;
    @:native('CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR') var CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;
    @:native('CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE') var CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;

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
    @:native('FONT_DEFAULT') var FONT_DEFAULT;
    @:native('FONT_BITMAP') var FONT_BITMAP;
    @:native('FONT_SDF') var FONT_SDF;

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
    @:native('BLEND_ALPHA') var BLEND_ALPHA;
    @:native('BLEND_ADDITIVE') var BLEND_ADDITIVE;
    @:native('BLEND_MULTIPLIED') var BLEND_MULTIPLIED;
    @:native('BLEND_ADD_COLORS') var BLEND_ADD_COLORS;
    @:native('BLEND_SUBTRACT_COLORS') var BLEND_SUBTRACT_COLORS;
    @:native('BLEND_ALPHA_PREMULTIPLY') var BLEND_ALPHA_PREMULTIPLY;
    @:native('BLEND_CUSTOM') var BLEND_CUSTOM;
    @:native('BLEND_CUSTOM_SEPARATE') var BLEND_CUSTOM_SEPARATE;

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
    @:native('GESTURE_NONE') var GESTURE_NONE;
    @:native('GESTURE_TAP') var GESTURE_TAP;
    @:native('GESTURE_DOUBLETAP') var GESTURE_DOUBLETAP;
    @:native('GESTURE_HOLD') var GESTURE_HOLD;
    @:native('GESTURE_DRAG') var GESTURE_DRAG;
    @:native('GESTURE_SWIPE_RIGHT') var GESTURE_SWIPE_RIGHT;
    @:native('GESTURE_SWIPE_LEFT') var GESTURE_SWIPE_LEFT;
    @:native('GESTURE_SWIPE_UP') var GESTURE_SWIPE_UP;
    @:native('GESTURE_SWIPE_DOWN') var GESTURE_SWIPE_DOWN;
    @:native('GESTURE_PINCH_IN') var GESTURE_PINCH_IN;
    @:native('GESTURE_PINCH_OUT') var GESTURE_PINCH_OUT;

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
    @:native('CAMERA_CUSTOM') var CAMERA_CUSTOM;
    @:native('CAMERA_FREE') var CAMERA_FREE;
    @:native('CAMERA_ORBITAL') var CAMERA_ORBITAL;
    @:native('CAMERA_FIRST_PERSON') var CAMERA_FIRST_PERSON;
    @:native('CAMERA_THIRD_PERSON') var CAMERA_THIRD_PERSON;

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
    @:native('CAMERA_PERSPECTIVE') var CAMERA_PERSPECTIVE;
    @:native('CAMERA_ORTHOGRAPHIC') var CAMERA_ORTHOGRAPHIC;

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
    @:native('NPATCH_NINE_PATCH') var NPATCH_NINE_PATCH;
    @:native('NPATCH_THREE_PATCH_VERTICAL') var NPATCH_THREE_PATCH_VERTICAL;
    @:native('NPATCH_THREE_PATCH_HORIZONTAL') var NPATCH_THREE_PATCH_HORIZONTAL;

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

typedef TraceLogCallback = cpp.Callable<(logLevel:Int, text:cpp.ConstCharStar, args:cpp.VarList) -> Void>;
typedef LoadFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, dataSize:raylib.utils.IntPointer) -> utils.BytesPointer>;
typedef SaveFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int) -> Bool>;
typedef LoadFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar) -> cpp.CastCharStar>;
typedef SaveFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar, text:cpp.CastCharStar) -> Bool>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
extern class Raylib
{
    @:native('RAYLIB_VERSION_MAJOR')
    static var VERSION_MAJOR:Int;

    @:native('RAYLIB_VERSION_MINOR')
    static var VERSION_MINOR:Int;

    @:native('RAYLIB_VERSION_PATCH')
    static var VERSION_PATCH:Int;

    @:native('::String(RAYLIB_VERSION)')
    static var VERSION:String;

    @:native('LIGHTGRAY')
    static var LIGHTGRAY:ColorImpl;

    @:native('GRAY')
    static var GRAY:ColorImpl;

    @:native('DARKGRAY')
    static var DARKGRAY:ColorImpl;

    @:native('YELLOW')
    static var YELLOW:ColorImpl;

    @:native('GOLD')
    static var GOLD:ColorImpl;

    @:native('ORANGE')
    static var ORANGE:ColorImpl;

    @:native('PINK')
    static var PINK:ColorImpl;

    @:native('RED')
    static var RED:ColorImpl;

    @:native('MAROON')
    static var MAROON:ColorImpl;

    @:native('GREEN')
    static var GREEN:ColorImpl;

    @:native('LIME')
    static var LIME:ColorImpl;

    @:native('DARKGREEN')
    static var DARKGREEN:ColorImpl;

    @:native('SKYBLUE')
    static var SKYBLUE:ColorImpl;

    @:native('BLUE')
    static var BLUE:ColorImpl;

    @:native('DARKBLUE')
    static var DARKBLUE:ColorImpl;

    @:native('PURPLE')
    static var PURPLE:ColorImpl;

    @:native('VIOLET')
    static var VIOLET:ColorImpl;

    @:native('DARKPURPLE')
    static var DARKPURPLE:ColorImpl;

    @:native('BEIGE')
    static var BEIGE:ColorImpl;

    @:native('BROWN')
    static var BROWN:ColorImpl;

    @:native('DARKBROWN')
    static var DARKBROWN:ColorImpl;

    @:native('WHITE')
    static var WHITE:ColorImpl;

    @:native('BLACK')
    static var BLACK:ColorImpl;

    @:native('BLANK')
    static var BLANK:ColorImpl;

    @:native('MAGENTA')
    static var MAGENTA:ColorImpl;

    @:native('RAYWHITE')
    static var RAYWHITE:ColorImpl;

    @:native('InitWindow')
    static function InitWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void;

    @:native('CloseWindow')
    static function CloseWindow():Void;

    @:native('WindowShouldClose')
    static function WindowShouldClose():Bool;

    @:native('IsWindowValid')
    static function IsWindowValid():Bool;

    @:native('IsWindowFullscreen')
    static function IsWindowFullscreen():Bool;

    @:native('IsWindowHidden')
    static function IsWindowHidden():Bool;

    @:native('IsWindowMinimized')
    static function IsWindowMinimized():Bool;

    @:native('IsWindowMaximized')
    static function IsWindowMaximized():Bool;

    @:native('IsWindowFocused')
    static function IsWindowFocused():Bool;

    @:native('IsWindowResized')
    static function IsWindowResized():Bool;

    @:native('IsWindowState')
    static function IsWindowState(flag:cpp.UInt32):Bool;

    @:native('SetWindowState')
    static function SetWindowState(flags:cpp.UInt32):Void;

    @:native('ClearWindowState')
    static function ClearWindowState(flags:cpp.UInt32):Void;

    @:native('ToggleFullscreen')
    static function ToggleFullscreen():Void;

    @:native('ToggleBorderlessWindowed')
    static function ToggleBorderlessWindowed():Void;

    @:native('MaximizeWindow')
    static function MaximizeWindow():Void;

    @:native('MinimizeWindow')
    static function MinimizeWindow():Void;

    @:native('RestoreWindow')
    static function RestoreWindow():Void;

    @:native('SetWindowIcon')
    static function SetWindowIcon(image:ImageImpl):Void;

    @:native('SetWindowIcons')
    static function SetWindowIcons(images:cpp.RawPointer<ImageImpl>, count:Int):Void;

    @:native('SetWindowTitle')
    static function SetWindowTitle(title:cpp.ConstCharStar):Void;

    @:native('SetWindowPosition')
    static function SetWindowPosition(x:Int, y:Int):Void;

    @:native('SetWindowMonitor')
    static function SetWindowMonitor(monitor:Int):Void;

    @:native('SetWindowMinSize')
    static function SetWindowMinSize(width:Int, height:Int):Void;

    @:native('SetWindowMaxSize')
    static function SetWindowMaxSize(width:Int, height:Int):Void;

    @:native('SetWindowSize')
    static function SetWindowSize(width:Int, height:Int):Void;

    @:native('SetWindowOpacity')
    static function SetWindowOpacity(opacity:Single):Void;

    @:native('SetWindowFocused')
    static function SetWindowFocused():Void;

    @:native('GetWindowHandle')
    static function GetWindowHandle():cpp.RawPointer<cpp.Void>;

    @:native('GetScreenWidth')
    static function GetScreenWidth():Int;

    @:native('GetScreenHeight')
    static function GetScreenHeight():Int;

    @:native('GetRenderWidth')
    static function GetRenderWidth():Int;

    @:native('GetRenderHeight')
    static function GetRenderHeight():Int;

    @:native('GetMonitorCount')
    static function GetMonitorCount():cpp.UInt32;

    @:native('GetCurrentMonitor')
    static function GetCurrentMonitor():cpp.UInt32;

    @:native('GetMonitorPosition')
    static function GetMonitorPosition(monitor:Int):Vector2Impl;

    @:native('GetMonitorWidth')
    static function GetMonitorWidth(monitor:Int):Int;

    @:native('GetMonitorHeight')
    static function GetMonitorHeight(monitor:Int):Int;

    @:native('GetMonitorPhysicalWidth')
    static function GetMonitorPhysicalWidth(monitor:Int):Int;

    @:native('GetMonitorPhysicalHeight')
    static function GetMonitorPhysicalHeight(monitor:Int):Int;

    @:native('GetMonitorRefreshRate')
    static function GetMonitorRefreshRate(monitor:Int):Int;

    @:native('GetWindowPosition')
    static function GetWindowPosition():Vector2Impl;

    @:native('GetWindowScaleDPI')
    static function GetWindowScaleDPI():Vector2Impl;

    @:native('GetMonitorName')
    static function GetMonitorName(monitor:Int):cpp.ConstCharStar;

    @:native('SetClipboardText')
    static function SetClipboardText(text:cpp.ConstCharStar):Void;

    @:native('GetClipboardText')
    static function GetClipboardText():cpp.ConstCharStar;

    @:native('EnableEventWaiting')
    static function EnableEventWaiting():Void;

    @:native('DisableEventWaiting')
    static function DisableEventWaiting():Void;

    @:native('ShowCursor')
    static function ShowCursor():Void;

    @:native('HideCursor')
    static function HideCursor():Void;

    @:native('IsCursorHidden')
    static function IsCursorHidden():Bool;

    @:native('EnableCursor')
    static function EnableCursor():Void;

    @:native('DisableCursor')
    static function DisableCursor():Void;

    @:native('IsCursorOnScreen')
    static function IsCursorOnScreen():Bool;

    @:native('ClearBackground')
    static function ClearBackground(color:ColorImpl):Void;

    @:native('BeginDrawing')
    static function BeginDrawing():Void;

    @:native('EndDrawing')
    static function EndDrawing():Void;

    @:native('BeginMode2D')
    static function BeginMode2D(camera:Camera2DImpl):Void;

    @:native('EndMode2D')
    static function EndMode2D():Void;

    @:native('BeginMode3D')
    static function BeginMode3D(camera:Camera3DImpl):Void;

    @:native('EndMode3D')
    static function EndMode3D():Void;

    @:native('BeginTextureMode')
    static function BeginTextureMode(target:RenderTextureImpl):Void;

    @:native('EndTextureMode')
    static function EndTextureMode():Void;

    @:native('BeginShaderMode')
    static function BeginShaderMode(shader:ShaderImpl):Void;

    @:native('EndShaderMode')
    static function EndShaderMode():Void;

    @:native('BeginBlendMode')
    static function BeginBlendMode(mode:Int):Void;

    @:native('EndBlendMode')
    static function EndBlendMode():Void;

    @:native('BeginScissorMode')
    static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;

    @:native('EndScissorMode')
    static function EndScissorMode():Void;

    @:native('BeginVrStereoMode')
    static function BeginVrStereoMode(config:VrStereoConfigImpl):Void;

    @:native('EndVrStereoMode')
    static function EndVrStereoMode():Void;

    @:native('LoadVrStereoConfig')
    static function LoadVrStereoConfig(device:VrDeviceInfoImpl):VrStereoConfigImpl;

    @:native('UnloadVrStereoConfig')
    static function UnloadVrStereoConfig(config:VrStereoConfigImpl):Void;

    @:native('LoadShader')
    static function LoadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):ShaderImpl;

    @:native('LoadShaderFromMemory')
    static function LoadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):ShaderImpl;

    @:native('IsShaderValid')
    static function IsShaderValid(shader:ShaderImpl):Bool;

    @:native('GetShaderLocation')
    static function GetShaderLocation(shader:ShaderImpl, uniformName:cpp.ConstCharStar):Int;

    @:native('GetShaderLocationAttrib')
    static function GetShaderLocationAttrib(shader:ShaderImpl, attribName:cpp.ConstCharStar):Int;

    @:native('SetShaderValue')
    static function SetShaderValue(shader:ShaderImpl, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void;

    @:native('SetShaderValueV')
    static function SetShaderValueV(shader:ShaderImpl, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int,
        count:Int):Void;

    @:native('SetShaderValueMatrix')
    static function SetShaderValueMatrix(shader:ShaderImpl, locIndex:Int, mat:MatrixImpl):Void;

    @:native('SetShaderValueTexture')
    static function SetShaderValueTexture(shader:ShaderImpl, locIndex:Int, texture:TextureImpl):Void;

    @:native('UnloadShader')
    static function UnloadShader(shader:ShaderImpl):Void;

    @:native('GetMouseRay')
    static function GetMouseRay(position:Vector2Impl, camera:Camera3DImpl):RayImpl;

    @:native('GetScreenToWorldRay')
    static function GetScreenToWorldRay(position:Vector2Impl, camera:Camera3DImpl):RayImpl;

    @:native('GetScreenToWorldRayEx')
    static function GetScreenToWorldRayEx(position:Vector2Impl, camera:Camera3DImpl, width:Int, height:Int):RayImpl;

    @:native('GetWorldToScreen')
    static function GetWorldToScreen(position:Vector3Impl, camera:Camera3DImpl):Vector2Impl;

    @:native('GetWorldToScreenEx')
    static function GetWorldToScreenEx(position:Vector3Impl, camera:Camera3DImpl, width:Int, height:Int):Vector2Impl;

    @:native('GetWorldToScreen2D')
    static function GetWorldToScreen2D(position:Vector2Impl, camera:Camera2DImpl):Vector2Impl;

    @:native('GetScreenToWorld2D')
    static function GetScreenToWorld2D(position:Vector2Impl, camera:Camera2DImpl):Vector2Impl;

    @:native('GetCameraMatrix')
    static function GetCameraMatrix(camera:Camera3DImpl):MatrixImpl;

    @:native('GetCameraMatrix2D')
    static function GetCameraMatrix2D(camera:Camera2DImpl):MatrixImpl;

    @:native('SetTargetFPS')
    static function SetTargetFPS(fps:Int):Void;

    @:native('GetFrameTime')
    static function GetFrameTime():Single;

    @:native('GetTime')
    static function GetTime():Float;

    @:native('GetFPS')
    static function GetFPS():Int;

    @:native('SwapScreenBuffer')
    static function SwapScreenBuffer():Void;

    @:native('PollInputEvents')
    static function PollInputEvents():Void;

    @:native('WaitTime')
    static function WaitTime(seconds:Float):Void;

    @:native('SetRandomSeed')
    static function SetRandomSeed(seed:cpp.UInt32):Void;

    @:native('GetRandomValue')
    static function GetRandomValue(min:Int, max:Int):Int;

    @:native('LoadRandomSequence')
    static function LoadRandomSequence(count:cpp.UInt32, min:Int, max:Int):raylib.utils.IntPointer;

    @:native('UnloadRandomSequence')
    static function UnloadRandomSequence(sequence:raylib.utils.IntPointer):Void;

    @:native('TakeScreenshot')
    static function TakeScreenshot(fileName:cpp.ConstCharStar):Void;

    @:native('SetConfigFlags')
    static function SetConfigFlags(flags:cpp.UInt32):Void;

    @:native('OpenURL')
    static function OpenURL(url:cpp.ConstCharStar):Void;

    @:native('TraceLog')
    static function TraceLog(logLevel:Int, text:cpp.ConstCharStar, params:cpp.Rest<cpp.VarArg>):Void;

    @:native('SetTraceLogLevel')
    static function SetTraceLogLevel(logLevel:Int):Void;

    @:native('MemAlloc')
    static function MemAlloc(size:cpp.UInt32):cpp.RawPointer<cpp.Void>;

    @:native('MemRealloc')
    static function MemRealloc(ptr:cpp.RawPointer<cpp.Void>, size:cpp.UInt32):cpp.RawPointer<cpp.Void>;

    @:native('MemFree')
    static function MemFree(ptr:cpp.RawPointer<cpp.Void>):Void;

    @:native('SetTraceLogCallback')
    static function SetTraceLogCallback(callback:TraceLogCallback):Void;

    @:native('SetLoadFileDataCallback')
    static function SetLoadFileDataCallback(callback:LoadFileDataCallback):Void;

    @:native('SetSaveFileDataCallback')
    static function SetSaveFileDataCallback(callback:SaveFileDataCallback):Void;

    @:native('SetLoadFileTextCallback')
    static function SetLoadFileTextCallback(callback:LoadFileTextCallback):Void;

    @:native('SetSaveFileTextCallback')
    static function SetSaveFileTextCallback(callback:SaveFileTextCallback):Void;

    @:native('LoadFileData')
    static function LoadFileData(fileName:cpp.ConstCharStar, dataSize:raylib.utils.IntPointer):raylib.utils.BytesPointer;

    @:native('UnloadFileData')
    static function UnloadFileData(data:raylib.utils.BytesPointer):Void;

    @:native('SaveFileData')
    static function SaveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int):Bool;

    @:native('ExportDataAsCode')
    static function ExportDataAsCode(data:raylib.utils.BytesPointer, dataSize:Int, fileName:cpp.ConstCharStar):Bool;

    @:native('LoadFileText')
    static function LoadFileText(fileName:cpp.ConstCharStar):cpp.CastCharStar;

    @:native('UnloadFileText')
    static function UnloadFileText(text:cpp.CastCharStar):Void;

    @:native('SaveFileText')
    static function SaveFileText(fileName:cpp.ConstCharStar, text:cpp.CastCharStar):Bool;

    @:native('FileExists')
    static function FileExists(fileName:cpp.ConstCharStar):Bool;

    @:native('DirectoryExists')
    static function DirectoryExists(dirPath:cpp.ConstCharStar):Bool;

    @:native('IsFileExtension')
    static function IsFileExtension(fileName:cpp.ConstCharStar, ext:cpp.ConstCharStar):Bool;

    @:native('GetFileLength')
    static function GetFileLength(fileName:cpp.ConstCharStar):Int;

    @:native('GetFileExtension')
    static function GetFileExtension(fileName:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('GetFileName')
    static function GetFileName(filePath:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('GetFileNameWithoutExt')
    static function GetFileNameWithoutExt(filePath:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('GetDirectoryPath')
    static function GetDirectoryPath(filePath:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('GetPrevDirectoryPath')
    static function GetPrevDirectoryPath(dirPath:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('GetWorkingDirectory')
    static function GetWorkingDirectory():cpp.ConstCharStar;

    @:native('GetApplicationDirectory')
    static function GetApplicationDirectory():cpp.ConstCharStar;

    @:native('MakeDirectory')
    static function MakeDirectory(dirPath:cpp.ConstCharStar):Int;

    @:native('ChangeDirectory')
    static function ChangeDirectory(dir:cpp.ConstCharStar):Bool;

    @:native('IsPathFile')
    static function IsPathFile(path:cpp.ConstCharStar):Bool;

    @:native('IsFileNameValid')
    static function IsFileNameValid(fileName:cpp.ConstCharStar):Bool;

    @:native('LoadDirectoryFiles')
    static function LoadDirectoryFiles(dirPath:cpp.ConstCharStar):FilePathListImpl;

    @:native('LoadDirectoryFilesEx')
    static function LoadDirectoryFilesEx(basePath:cpp.ConstCharStar, filter:cpp.ConstCharStar,
        scanSubdirs:Bool):FilePathListImpl;

    @:native('UnloadDirectoryFiles')
    static function UnloadDirectoryFiles(files:FilePathListImpl):Void;

    @:native('IsFileDropped')
    static function IsFileDropped():Bool;

    @:native('LoadDroppedFiles')
    static function LoadDroppedFiles():FilePathListImpl;

    @:native('UnloadDroppedFiles')
    static function UnloadDroppedFiles(files:FilePathListImpl):Void;

    @:native('GetFileModTime')
    static function GetFileModTime(fileName:cpp.ConstCharStar):cpp.Long;

    @:native('CompressData')
    static function CompressData(data:raylib.utils.BytesConstPointer, dataSize:Int, compDataSize:raylib.utils.IntPointer):raylib.utils.BytesPointer;

    @:native('DecompressData')
    static function DecompressData(compData:raylib.utils.BytesConstPointer, compDataSize:Int, dataSize:raylib.utils.IntPointer):raylib.utils.BytesPointer;

    @:native('EncodeDataBase64')
    static function EncodeDataBase64(data:raylib.utils.BytesConstPointer, dataSize:Int, outputSize:raylib.utils.IntPointer):cpp.CastCharStar;

    @:native('DecodeDataBase64')
    static function DecodeDataBase64(data:raylib.utils.BytesConstPointer, outputSize:raylib.utils.IntPointer):raylib.utils.BytesPointer;

    @:native('ComputeCRC32')
    static function ComputeCRC32(data:raylib.utils.BytesConstPointer, dataSize:Int):cpp.UInt32;

    @:native('ComputeMD5')
    static function ComputeMD5(data:raylib.utils.BytesConstPointer, dataSize:Int):raylib.utils.UnsignedPointer;

    @:native('ComputeSHA1')
    static function ComputeSHA1(data:raylib.utils.BytesConstPointer, dataSize:Int):raylib.utils.UnsignedPointer;

    @:native('LoadAutomationEventList')
    static function LoadAutomationEventList(fileName:cpp.ConstCharStar):AutomationEventListImpl;

    @:native('UnloadAutomationEventList')
    static function UnloadAutomationEventList(list:AutomationEventListImpl):Void;

    @:native('ExportAutomationEventList')
    static function ExportAutomationEventList(list:AutomationEventListImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('SetAutomationEventList')
    static function SetAutomationEventList(list:cpp.RawPointer<AutomationEventList>):Void;

    @:native('SetAutomationEventBaseFrame')
    static function SetAutomationEventBaseFrame(frame:Int):Void;

    @:native('StartAutomationEventRecording')
    static function StartAutomationEventRecording():Void;

    @:native('StopAutomationEventRecording')
    static function StopAutomationEventRecording():Void;

    @:native('PlayAutomationEvent')
    static function PlayAutomationEvent(event:AutomationEventImpl):Void;

    @:native('IsKeyPressed')
    static function IsKeyPressed(key:Int):Bool;

    @:native('IsKeyPressedRepeat')
    static function IsKeyPressedRepeat(key:Int):Bool;

    @:native('IsKeyDown')
    static function IsKeyDown(key:Int):Bool;

    @:native('IsKeyReleased')
    static function IsKeyReleased(key:Int):Bool;

    @:native('IsKeyUp')
    static function IsKeyUp(key:Int):Bool;

    @:native('GetKeyPressed')
    static function GetKeyPressed():Int;

    @:native('GetCharPressed')
    static function GetCharPressed():Int;

    @:native('SetExitKey')
    static function SetExitKey(key:Int):Void;

    @:native('IsGamepadAvailable')
    static function IsGamepadAvailable(gamepad:Int):Bool;

    @:native('GetGamepadName')
    static function GetGamepadName(gamepad:Int):cpp.ConstCharStar;

    @:native('IsGamepadButtonPressed')
    static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonDown')
    static function IsGamepadButtonDown(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonReleased')
    static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonUp')
    static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;

    @:native('GetGamepadButtonPressed')
    static function GetGamepadButtonPressed():Int;

    @:native('GetGamepadAxisCount')
    static function GetGamepadAxisCount(gamepad:Int):Int;

    @:native('GetGamepadAxisMovement')
    static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Single;

    @:native('SetGamepadMappings')
    static function SetGamepadMappings(mappings:cpp.ConstCharStar):Int;

    @:native('SetGamepadVibration')
    static function SetGamepadVibration(gamepad:Int, leftMotor:Single, rightMotor:Single, duration:Single):Void;

    @:native('IsMouseButtonPressed')
    static function IsMouseButtonPressed(button:Int):Bool;

    @:native('IsMouseButtonDown')
    static function IsMouseButtonDown(button:Int):Bool;

    @:native('IsMouseButtonReleased')
    static function IsMouseButtonReleased(button:Int):Bool;

    @:native('IsMouseButtonUp')
    static function IsMouseButtonUp(button:Int):Bool;

    @:native('GetMouseX')
    static function GetMouseX():Int;

    @:native('GetMouseY')
    static function GetMouseY():Int;

    @:native('GetMousePosition')
    static function GetMousePosition():Vector2Impl;

    @:native('GetMouseDelta')
    static function GetMouseDelta():Vector2Impl;

    @:native('SetMousePosition')
    static function SetMousePosition(x:Int, y:Int):Void;

    @:native('SetMouseOffset')
    static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;

    @:native('SetMouseScale')
    static function SetMouseScale(scaleX:Single, scaleY:Single):Void;

    @:native('GetMouseWheelMove')
    static function GetMouseWheelMove():Single;

    @:native('GetMouseWheelMoveV')
    static function GetMouseWheelMoveV():Vector2Impl;

    @:native('SetMouseCursor')
    static function SetMouseCursor(cursor:Int):Void;

    @:native('GetTouchX')
    static function GetTouchX():Int;

    @:native('GetTouchY')
    static function GetTouchY():Int;

    @:native('GetTouchPosition')
    static function GetTouchPosition(index:Int):Vector2Impl;

    @:native('GetTouchPointId')
    static function GetTouchPointId(index:Int):Int;

    @:native('GetTouchPointCount')
    static function GetTouchPointCount():Int;

    @:native('SetGesturesEnabled')
    static function SetGesturesEnabled(flags:cpp.UInt32):Void;

    @:native('IsGestureDetected')
    static function IsGestureDetected(gesture:cpp.UInt32):Bool;

    @:native('GetGestureDetected')
    static function GetGestureDetected():Int;

    @:native('GetGestureHoldDuration')
    static function GetGestureHoldDuration():Single;

    @:native('GetGestureDragVector')
    static function GetGestureDragVector():Vector2Impl;

    @:native('GetGestureDragAngle')
    static function GetGestureDragAngle():Single;

    @:native('GetGesturePinchVector')
    static function GetGesturePinchVector():Vector2Impl;

    @:native('GetGesturePinchAngle')
    static function GetGesturePinchAngle():Single;

    @:native('UpdateCamera')
    static function UpdateCamera(camera:cpp.RawPointer<Camera3DImpl>, mode:Int):Void;

    @:native('UpdateCameraPro')
    static function UpdateCameraPro(camera:cpp.RawPointer<Camera3DImpl>, movement:Vector3Impl, rotation:Vector3Impl, zoom:Single):Void;

    @:native('SetShapesTexture')
    static function SetShapesTexture(texture:TextureImpl, source:RectangleImpl):Void;

    @:native('GetShapesTexture')
    static function GetShapesTexture():TextureImpl;

    @:native('GetShapesTextureRectangleImpl')
    static function GetShapesTextureRectangleImpl():RectangleImpl;

    @:native('DrawPixel')
    static function DrawPixel(posX:Int, posY:Int, color:ColorImpl):Void;

    @:native('DrawPixelV')
    static function DrawPixelV(position:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawLine')
    static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:ColorImpl):Void;

    @:native('DrawLineV')
    static function DrawLineV(startPos:Vector2Impl, endPos:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawLineEx')
    static function DrawLineEx(startPos:Vector2Impl, endPos:Vector2Impl, thick:Single, color:ColorImpl):Void;

    @:native('DrawLineStrip')
    static function DrawLineStrip(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('DrawLineBezier')
    static function DrawLineBezier(startPos:Vector2Impl, endPos:Vector2Impl, thick:Single, color:ColorImpl):Void;

    @:native('DrawCircle')
    static function DrawCircle(centerX:Int, centerY:Int, radius:Single, color:ColorImpl):Void;

    @:native('DrawCircleSector')
    static function DrawCircleSector(center:Vector2Impl, radius:Single, startAngle:Single, endAngle:Single, segments:Int,
        color:ColorImpl):Void;

    @:native('DrawCircleSectorLines')
    static function DrawCircleSectorLines(center:Vector2Impl, radius:Single, startAngle:Single, endAngle:Single,
        segments:Int, color:ColorImpl):Void;

    @:native('DrawCircleGradient')
    static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Single, inner:ColorImpl, outer:ColorImpl):Void;

    @:native('DrawCircleV')
    static function DrawCircleV(center:Vector2Impl, radius:Single, color:ColorImpl):Void;

    @:native('DrawCircleLines')
    static function DrawCircleLines(centerX:Int, centerY:Int, radius:Single, color:ColorImpl):Void;

    @:native('DrawCircleLinesV')
    static function DrawCircleLinesV(center:Vector2Impl, radius:Single, color:ColorImpl):Void;

    @:native('DrawEllipse')
    static function DrawEllipse(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:ColorImpl):Void;

    @:native('DrawEllipseLines')
    static function DrawEllipseLines(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:ColorImpl):Void;

    @:native('DrawRing')
    static function DrawRing(center:Vector2Impl, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int,
        color:ColorImpl):Void;

    @:native('DrawRingLines')
    static function DrawRingLines(center:Vector2Impl, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single,
        segments:Int, color:ColorImpl):Void;

    @:native('DrawRectangle')
    static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:ColorImpl):Void;

    @:native('DrawRectangleV')
    static function DrawRectangleV(position:Vector2Impl, size:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawRectangleRec')
    static function DrawRectangleRec(rec:RectangleImpl, color:ColorImpl):Void;

    @:native('DrawRectanglePro')
    static function DrawRectanglePro(rec:RectangleImpl, origin:Vector2Impl, rotation:Single, color:ColorImpl):Void;

    @:native('DrawRectangleGradientV')
    static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, top:ColorImpl, bottom:ColorImpl):Void;

    @:native('DrawRectangleGradientH')
    static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, left:ColorImpl, right:ColorImpl):Void;

    @:native('DrawRectangleGradientEx')
    static function DrawRectangleGradientEx(rec:RectangleImpl, topLeft:ColorImpl, bottomLeft:ColorImpl, topRight:ColorImpl,
        bottomRight:ColorImpl):Void;

    @:native('DrawRectangleLines')
    static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:ColorImpl):Void;

    @:native('DrawRectangleLinesEx')
    static function DrawRectangleLinesEx(rec:RectangleImpl, lineThick:Single, color:ColorImpl):Void;

    @:native('DrawRectangleRounded')
    static function DrawRectangleRounded(rec:RectangleImpl, roundness:Single, segments:Int, color:ColorImpl):Void;

    @:native('DrawRectangleRoundedLines')
    static function DrawRectangleRoundedLines(rec:RectangleImpl, roundness:Single, segments:Int, color:ColorImpl):Void;

    @:native('DrawRectangleRoundedLinesEx')
    static function DrawRectangleRoundedLinesEx(rec:RectangleImpl, roundness:Single, segments:Int, lineThick:Single,
        color:ColorImpl):Void;

    @:native('DrawTriangle')
    static function DrawTriangle(v1:Vector2Impl, v2:Vector2Impl, v3:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawTriangleLines')
    static function DrawTriangleLines(v1:Vector2Impl, v2:Vector2Impl, v3:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawTriangleFan')
    static function DrawTriangleFan(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('DrawTriangleStrip')
    static function DrawTriangleStrip(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('DrawPoly')
    static function DrawPoly(center:Vector2Impl, sides:Int, radius:Single, rotation:Single, color:ColorImpl):Void;

    @:native('DrawPolyLines')
    static function DrawPolyLines(center:Vector2Impl, sides:Int, radius:Single, rotation:Single, color:ColorImpl):Void;

    @:native('DrawPolyLinesEx')
    static function DrawPolyLinesEx(center:Vector2Impl, sides:Int, radius:Single, rotation:Single, lineThick:Single,
        color:ColorImpl):Void;

    @:native('DrawSplineLinear')
    static function DrawSplineLinear(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, thick:Single, color:ColorImpl):Void;

    @:native('DrawSplineBasis')
    static function DrawSplineBasis(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, thick:Single, color:ColorImpl):Void;

    @:native('DrawSplineCatmullRom')
    static function DrawSplineCatmullRom(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, thick:Single, color:ColorImpl):Void;

    @:native('DrawSplineBezierQuadratic')
    static function DrawSplineBezierQuadratic(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, thick:Single,
        color:ColorImpl):Void;

    @:native('DrawSplineBezierCubic')
    static function DrawSplineBezierCubic(points:cpp.RawConstPointer<Vector2Impl>, pointCount:Int, thick:Single,
        color:ColorImpl):Void;

    @:native('DrawSplineSegmentLinear')
    static function DrawSplineSegmentLinear(p1:Vector2Impl, p2:Vector2Impl, thick:Single, color:ColorImpl):Void;

    @:native('DrawSplineSegmentBasis')
    static function DrawSplineSegmentBasis(p1:Vector2Impl, p2:Vector2Impl, p3:Vector2Impl, p4:Vector2Impl, thick:Single,
        color:ColorImpl):Void;

    @:native('DrawSplineSegmentCatmullRom')
    static function DrawSplineSegmentCatmullRom(p1:Vector2Impl, p2:Vector2Impl, p3:Vector2Impl, p4:Vector2Impl,
        thick:Single, color:ColorImpl):Void;

    @:native('DrawSplineSegmentBezierQuadratic')
    static function DrawSplineSegmentBezierQuadratic(p1:Vector2Impl, c2:Vector2Impl, p3:Vector2Impl, thick:Single,
        color:ColorImpl):Void;

    @:native('DrawSplineSegmentBezierCubic')
    static function DrawSplineSegmentBezierCubic(p1:Vector2Impl, c2:Vector2Impl, c3:Vector2Impl, p4:Vector2Impl,
        thick:Single, color:ColorImpl):Void;

    @:native('GetSplinePointLinear')
    static function GetSplinePointLinear(startPos:Vector2Impl, endPos:Vector2Impl, t:Single):Vector2Impl;

    @:native('GetSplinePointBasis')
    static function GetSplinePointBasis(p1:Vector2Impl, p2:Vector2Impl, p3:Vector2Impl, p4:Vector2Impl, t:Single):Vector2Impl;

    @:native('GetSplinePointCatmullRom')
    static function GetSplinePointCatmullRom(p1:Vector2Impl, p2:Vector2Impl, p3:Vector2Impl, p4:Vector2Impl,
        t:Single):Vector2Impl;

    @:native('GetSplinePointBezierQuad')
    static function GetSplinePointBezierQuad(p1:Vector2Impl, c2:Vector2Impl, p3:Vector2Impl, t:Single):Vector2Impl;

    @:native('GetSplinePointBezierCubic')
    static function GetSplinePointBezierCubic(p1:Vector2Impl, c2:Vector2Impl, c3:Vector2Impl, p4:Vector2Impl,
        t:Single):Vector2Impl;

    @:native('CheckCollisionRecs')
    static function CheckCollisionRecs(rec1:RectangleImpl, rec2:RectangleImpl):Bool;

    @:native('CheckCollisionCircles')
    static function CheckCollisionCircles(center1:Vector2Impl, radius1:Single, center2:Vector2Impl, radius2:Single):Bool;

    @:native('CheckCollisionCircleRec')
    static function CheckCollisionCircleRec(center:Vector2Impl, radius:Single, rec:RectangleImpl):Bool;

    @:native('CheckCollisionCircleLine')
    static function CheckCollisionCircleLine(center:Vector2Impl, radius:Single, p1:Vector2Impl, p2:Vector2Impl):Bool;

    @:native('CheckCollisionPointRec')
    static function CheckCollisionPointRec(point:Vector2Impl, rec:RectangleImpl):Bool;

    @:native('CheckCollisionPointCircle')
    static function CheckCollisionPointCircle(point:Vector2Impl, center:Vector2Impl, radius:Single):Bool;

    @:native('CheckCollisionPointTriangle')
    static function CheckCollisionPointTriangle(point:Vector2Impl, p1:Vector2Impl, p2:Vector2Impl, p3:Vector2Impl):Bool;

    @:native('CheckCollisionPointLine')
    static function CheckCollisionPointLine(point:Vector2Impl, p1:Vector2Impl, p2:Vector2Impl, threshold:Int):Bool;

    @:native('CheckCollisionPointPoly')
    static function CheckCollisionPointPoly(point:Vector2Impl, points:cpp.RawPointer<Vector2Impl>, pointCount:Int):Bool;

    @:native('CheckCollisionLines')
    static function CheckCollisionLines(startPos1:Vector2Impl, endPos1:Vector2Impl, startPos2:Vector2Impl, endPos2:Vector2Impl,
        collisionPoint:cpp.RawPointer<Vector2Impl>):Bool;

    @:native('GetCollisionRec')
    static function GetCollisionRec(rec1:RectangleImpl, rec2:RectangleImpl):RectangleImpl;

    @:native('LoadImage')
    static function LoadImage(fileName:cpp.ConstCharStar):ImageImpl;

    @:native('LoadImageRaw')
    static function LoadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):ImageImpl;

    @:native('LoadImageAnim')
    static function LoadImageAnim(fileName:cpp.ConstCharStar, frames:raylib.utils.IntPointer):ImageImpl;

    @:native('LoadImageAnimFromMemory')
    static function LoadImageAnimFromMemory(fileType:cpp.ConstCharStar, fileData:raylib.utils.BytesConstPointer, dataSize:Int,
        frames:raylib.utils.IntPointer):ImageImpl;

    @:native('LoadImageFromMemory')
    static function LoadImageFromMemory(fileType:cpp.ConstCharStar, fileData:raylib.utils.BytesConstPointer, dataSize:Int):ImageImpl;

    @:native('LoadImageFromTexture')
    static function LoadImageFromTexture(texture:TextureImpl):ImageImpl;

    @:native('LoadImageFromScreen')
    static function LoadImageFromScreen():ImageImpl;

    @:native('IsImageValid')
    static function IsImageValid(image:ImageImpl):Bool;

    @:native('UnloadImage')
    static function UnloadImage(image:ImageImpl):Void;

    @:native('ExportImage')
    static function ExportImage(image:ImageImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('ExportImageToMemory')
    static function ExportImageToMemory(image:ImageImpl, fileType:cpp.ConstCharStar,
        fileSize:raylib.utils.IntPointer):raylib.utils.BytesPointer;

    @:native('ExportImageAsCode')
    static function ExportImageAsCode(image:ImageImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('GenImageColor')
    static function GenImageColor(width:Int, height:Int, color:ColorImpl):ImageImpl;

    @:native('GenImageGradientLinear')
    static function GenImageGradientLinear(width:Int, height:Int, direction:Int, start:ColorImpl, end:ColorImpl):ImageImpl;

    @:native('GenImageGradientRadial')
    static function GenImageGradientRadial(width:Int, height:Int, density:Single, inner:ColorImpl, outer:ColorImpl):ImageImpl;

    @:native('GenImageGradientSquare')
    static function GenImageGradientSquare(width:Int, height:Int, density:Single, inner:ColorImpl, outer:ColorImpl):ImageImpl;

    @:native('GenImageChecked')
    static function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:ColorImpl, col2:ColorImpl):ImageImpl;

    @:native('GenImageWhiteNoise')
    static function GenImageWhiteNoise(width:Int, height:Int, factor:Single):ImageImpl;

    @:native('GenImagePerlinNoise')
    static function GenImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Single):ImageImpl;

    @:native('GenImageCellular')
    static function GenImageCellular(width:Int, height:Int, tileSize:Int):ImageImpl;

    @:native('GenImageText')
    static function GenImageText(width:Int, height:Int, text:cpp.ConstCharStar):ImageImpl;

    @:native('ImageCopy')
    static function ImageCopy(image:ImageImpl):ImageImpl;

    @:native('ImageFromImage')
    static function ImageFromImage(image:ImageImpl, rec:RectangleImpl):ImageImpl;

    @:native('ImageFromChannel')
    static function ImageFromChannel(image:ImageImpl, selectedChannel:Int):ImageImpl;

    @:native('ImageText')
    static function ImageText(text:cpp.ConstCharStar, fontSize:Int, color:ColorImpl):ImageImpl;

    @:native('ImageTextEx')
    static function ImageTextEx(font:FontImpl, text:cpp.ConstCharStar, fontSize:Single, spacing:Single, tint:ColorImpl):ImageImpl;

    @:native('ImageFormat')
    static function ImageFormat(image:cpp.RawPointer<ImageImpl>, newFormat:Int):Void;

    @:native('ImageToPOT')
    static function ImageToPOT(image:cpp.RawPointer<ImageImpl>, fill:ColorImpl):Void;

    @:native('ImageCrop')
    static function ImageCrop(image:cpp.RawPointer<ImageImpl>, crop:RectangleImpl):Void;

    @:native('ImageAlphaCrop')
    static function ImageAlphaCrop(image:cpp.RawPointer<ImageImpl>, threshold:Single):Void;

    @:native('ImageAlphaClear')
    static function ImageAlphaClear(image:cpp.RawPointer<ImageImpl>, color:ColorImpl, threshold:Single):Void;

    @:native('ImageAlphaMask')
    static function ImageAlphaMask(image:cpp.RawPointer<ImageImpl>, alphaMask:ImageImpl):Void;

    @:native('ImageAlphaPremultiply')
    static function ImageAlphaPremultiply(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageBlurGaussian')
    static function ImageBlurGaussian(image:cpp.RawPointer<ImageImpl>, blurSize:Int):Void;

    @:native('ImageKernelConvolution')
    static function ImageKernelConvolution(image:cpp.RawPointer<ImageImpl>, kernel:raylib.utils.FloatConstPointer, kernelSize:Int):Void;

    @:native('ImageResize')
    static function ImageResize(image:cpp.RawPointer<ImageImpl>, newWidth:Int, newHeight:Int):Void;

    @:native('ImageResizeNN')
    static function ImageResizeNN(image:cpp.RawPointer<ImageImpl>, newWidth:Int, newHeight:Int):Void;

    @:native('ImageResizeCanvas')
    static function ImageResizeCanvas(image:cpp.RawPointer<ImageImpl>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int,
        fill:ColorImpl):Void;

    @:native('ImageMipmaps')
    static function ImageMipmaps(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageDither')
    static function ImageDither(image:cpp.RawPointer<ImageImpl>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;

    @:native('ImageFlipVertical')
    static function ImageFlipVertical(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageFlipHorizontal')
    static function ImageFlipHorizontal(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageRotate')
    static function ImageRotate(image:cpp.RawPointer<ImageImpl>, degrees:Int):Void;

    @:native('ImageRotateCW')
    static function ImageRotateCW(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageRotateCCW')
    static function ImageRotateCCW(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageColorTint')
    static function ImageColorTint(image:cpp.RawPointer<ImageImpl>, color:ColorImpl):Void;

    @:native('ImageColorInvert')
    static function ImageColorInvert(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageColorGrayscale')
    static function ImageColorGrayscale(image:cpp.RawPointer<ImageImpl>):Void;

    @:native('ImageColorContrast')
    static function ImageColorContrast(image:cpp.RawPointer<ImageImpl>, contrast:Single):Void;

    @:native('ImageColorBrightness')
    static function ImageColorBrightness(image:cpp.RawPointer<ImageImpl>, brightness:Int):Void;

    @:native('ImageColorReplace')
    static function ImageColorReplace(image:cpp.RawPointer<ImageImpl>, color:ColorImpl, replace:ColorImpl):Void;

    @:native('LoadImageColors')
    static function LoadImageColors(image:ImageImpl):cpp.RawPointer<ColorImpl>;

    @:native('LoadImagePalette')
    static function LoadImagePalette(image:ImageImpl, maxPaletteSize:Int, colorCount:raylib.utils.IntPointer):cpp.RawPointer<ColorImpl>;

    @:native('UnloadImageColors')
    static function UnloadImageColors(colors:cpp.RawPointer<ColorImpl>):Void;

    @:native('UnloadImagePalette')
    static function UnloadImagePalette(colors:cpp.RawPointer<ColorImpl>):Void;

    @:native('GetImageAlphaBorder')
    static function GetImageAlphaBorder(image:ImageImpl, threshold:Single):RectangleImpl;

    @:native('GetImageColor')
    static function GetImageColor(image:ImageImpl, x:Int, y:Int):ColorImpl;

    @:native('ImageClearBackground')
    static function ImageClearBackground(dst:cpp.RawPointer<ImageImpl>, color:ColorImpl):Void;

    @:native('ImageDrawPixel')
    static function ImageDrawPixel(dst:cpp.RawPointer<ImageImpl>, posX:Int, posY:Int, color:ColorImpl):Void;

    @:native('ImageDrawPixelV')
    static function ImageDrawPixelV(dst:cpp.RawPointer<ImageImpl>, position:Vector2Impl, color:ColorImpl):Void;

    @:native('ImageDrawLine')
    static function ImageDrawLine(dst:cpp.RawPointer<ImageImpl>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int,
        color:ColorImpl):Void;

    @:native('ImageDrawLineV')
    static function ImageDrawLineV(dst:cpp.RawPointer<ImageImpl>, start:Vector2Impl, end:Vector2Impl, color:ColorImpl):Void;

    @:native('ImageDrawLineEx')
    static function ImageDrawLineEx(dst:cpp.RawPointer<ImageImpl>, start:Vector2Impl, end:Vector2Impl, thick:Int, color:ColorImpl):Void;

    @:native('ImageDrawCircle')
    static function ImageDrawCircle(dst:cpp.RawPointer<ImageImpl>, centerX:Int, centerY:Int, radius:Int, color:ColorImpl):Void;

    @:native('ImageDrawCircleV')
    static function ImageDrawCircleV(dst:cpp.RawPointer<ImageImpl>, center:Vector2Impl, radius:Int, color:ColorImpl):Void;

    @:native('ImageDrawCircleLines')
    static function ImageDrawCircleLines(dst:cpp.RawPointer<ImageImpl>, centerX:Int, centerY:Int, radius:Int,
        color:ColorImpl):Void;

    @:native('ImageDrawCircleLinesV')
    static function ImageDrawCircleLinesV(dst:cpp.RawPointer<ImageImpl>, center:Vector2Impl, radius:Int, color:ColorImpl):Void;

    @:native('ImageDrawRectangle')
    static function ImageDrawRectangle(dst:cpp.RawPointer<ImageImpl>, posX:Int, posY:Int, width:Int, height:Int,
        color:ColorImpl):Void;

    @:native('ImageDrawRectangleV')
    static function ImageDrawRectangleV(dst:cpp.RawPointer<ImageImpl>, position:Vector2Impl, size:Vector2Impl,
        color:ColorImpl):Void;

    @:native('ImageDrawRectangleRec')
    static function ImageDrawRectangleRec(dst:cpp.RawPointer<ImageImpl>, rec:RectangleImpl, color:ColorImpl):Void;

    @:native('ImageDrawRectangleLines')
    static function ImageDrawRectangleLines(dst:cpp.RawPointer<ImageImpl>, rec:RectangleImpl, thick:Int, color:ColorImpl):Void;

    @:native('ImageDrawTriangle')
    static function ImageDrawTriangle(dst:cpp.RawPointer<ImageImpl>, v1:Vector2Impl, v2:Vector2Impl, v3:Vector2Impl, color:ColorImpl):Void;

    @:native('ImageDrawTriangleEx')
    static function ImageDrawTriangleEx(dst:cpp.RawPointer<ImageImpl>, v1:Vector2Impl, v2:Vector2Impl, v3:Vector2Impl, c1:ColorImpl, c2:ColorImpl, c3:ColorImpl):Void;

    @:native('ImageDrawTriangleLines')
    static function ImageDrawTriangleLines(dst:cpp.RawPointer<ImageImpl>, v1:Vector2Impl, v2:Vector2Impl, v3:Vector2Impl, color:ColorImpl):Void;

    @:native('ImageDrawTriangleFan')
    static function ImageDrawTriangleFan(dst:cpp.RawPointer<ImageImpl>, points:cpp.RawPointer<Vector2Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('ImageDrawTriangleStrip')
    static function ImageDrawTriangleStrip(dst:cpp.RawPointer<ImageImpl>, points:cpp.RawPointer<Vector2Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('ImageDraw')
    static function ImageDraw(dst:cpp.RawPointer<ImageImpl>, src:ImageImpl, srcRec:RectangleImpl, dstRec:RectangleImpl, tint:ColorImpl):Void;

    @:native('ImageDrawText')
    static function ImageDrawText(dst:cpp.RawPointer<ImageImpl>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int,
        color:ColorImpl):Void;

    @:native('ImageDrawTextEx')
    static function ImageDrawTextEx(dst:cpp.RawPointer<ImageImpl>, font:FontImpl, text:cpp.ConstCharStar, position:Vector2Impl,
        fontSize:Single, spacing:Single, tint:ColorImpl):Void;

    @:native('LoadTexture')
    static function LoadTexture(fileName:cpp.ConstCharStar):TextureImpl;

    @:native('LoadTextureFromImage')
    static function LoadTextureFromImage(image:ImageImpl):TextureImpl;

    @:native('LoadTextureCubemap')
    static function LoadTextureCubemap(image:ImageImpl, layout:Int):TextureImpl;

    @:native('LoadRenderTexture')
    static function LoadRenderTexture(width:Int, height:Int):RenderTextureImpl;

    @:native('IsTextureValid')
    static function IsTextureValid(texture:TextureImpl):Bool;

    @:native('UnloadTexture')
    static function UnloadTexture(texture:TextureImpl):Void;

    @:native('IsRenderTextureValid')
    static function IsRenderTextureValid(target:RenderTextureImpl):Bool;

    @:native('UnloadRenderTexture')
    static function UnloadRenderTexture(target:RenderTextureImpl):Void;

    @:native('UpdateTexture')
    static function UpdateTexture(texture:TextureImpl, pixels:cpp.RawConstPointer<cpp.Void>):Void;

    @:native('UpdateTextureRec')
    static function UpdateTextureRec(texture:TextureImpl, rec:RectangleImpl, pixels:cpp.RawConstPointer<cpp.Void>):Void;

    @:native('GenTextureMipmaps')
    static function GenTextureMipmaps(texture:cpp.RawPointer<TextureImpl>):Void;

    @:native('SetTextureFilter')
    static function SetTextureFilter(texture:TextureImpl, filter:Int):Void;

    @:native('SetTextureWrap')
    static function SetTextureWrap(texture:TextureImpl, wrap:Int):Void;

    @:native('DrawTexture')
    static function DrawTexture(texture:TextureImpl, posX:Int, posY:Int, tint:ColorImpl):Void;

    @:native('DrawTextureV')
    static function DrawTextureV(texture:TextureImpl, position:Vector2Impl, tint:ColorImpl):Void;

    @:native('DrawTextureEx')
    static function DrawTextureEx(texture:TextureImpl, position:Vector2Impl, rotation:Single, scale:Single, tint:ColorImpl):Void;

    @:native('DrawTextureRec')
    static function DrawTextureRec(texture:TextureImpl, source:RectangleImpl, position:Vector2Impl, tint:ColorImpl):Void;

    @:native('DrawTexturePro')
    static function DrawTexturePro(texture:TextureImpl, source:RectangleImpl, dest:RectangleImpl, origin:Vector2Impl, rotation:Single,
        tint:ColorImpl):Void;

    @:native('DrawTextureNPatch')
    static function DrawTextureNPatch(texture:TextureImpl, nPatchInfo:NPatchInfoImpl, dest:RectangleImpl, origin:Vector2Impl,
        rotation:Single, tint:ColorImpl):Void;

    @:native('ColorIsEqual')
    static function ColorIsEqual(col1:ColorImpl, col2:ColorImpl):Bool;

    @:native('Fade')
    static function Fade(color:ColorImpl, alpha:Single):ColorImpl;

    @:native('ColorToInt')
    static function ColorToInt(color:ColorImpl):Int;

    @:native('ColorNormalize')
    static function ColorNormalize(color:ColorImpl):Vector4Impl;

    @:native('ColorFromNormalized')
    static function ColorFromNormalized(normalized:Vector4Impl):ColorImpl;

    @:native('ColorToHSV')
    static function ColorToHSV(color:ColorImpl):Vector3Impl;

    @:native('ColorFromHSV')
    static function ColorFromHSV(hue:Single, saturation:Single, value:Single):ColorImpl;

    @:native('ColorTint')
    static function ColorTint(color:ColorImpl, tint:ColorImpl):ColorImpl;

    @:native('ColorBrightness')
    static function ColorBrightness(color:ColorImpl, factor:Single):ColorImpl;

    @:native('ColorContrast')
    static function ColorContrast(color:ColorImpl, contrast:Single):ColorImpl;

    @:native('ColorAlpha')
    static function ColorAlpha(color:ColorImpl, alpha:Single):ColorImpl;

    @:native('ColorAlphaBlend')
    static function ColorAlphaBlend(dst:ColorImpl, src:ColorImpl, tint:ColorImpl):ColorImpl;

    @:native('ColorLerp')
    static function ColorLerp(color1:ColorImpl, color2:ColorImpl, factor:Single):ColorImpl;

    @:native('GetColor')
    static function GetColor(hexValue:UInt):ColorImpl;

    @:native('GetPixelColor')
    static function GetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):ColorImpl;

    @:native('SetPixelColor')
    static function SetPixelColor(dstPtr:cpp.RawPointer<cpp.Void>, color:ColorImpl, format:Int):Void;

    @:native('GetPixelDataSize')
    static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

    @:native('GetFontDefault')
    static function GetFontDefault():FontImpl;

    @:native('LoadFont')
    static function LoadFont(fileName:cpp.ConstCharStar):FontImpl;

    @:native('LoadFontEx')
    static function LoadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, codepoints:raylib.utils.IntPointer, codepointCount:Int):FontImpl;

    @:native('LoadFontFromImage')
    static function LoadFontFromImage(image:ImageImpl, key:ColorImpl, firstChar:Int):FontImpl;

    @:native('LoadFontFromMemory')
    static function LoadFontFromMemory(fileType:cpp.ConstCharStar, fileData:raylib.utils.BytesConstPointer, dataSize:Int,
        fontSize:Int, codepoints:raylib.utils.IntPointer, codepointCount:Int):FontImpl;

    @:native('IsFontValid')
    static function IsFontValid(font:FontImpl):Bool;

    @:native('LoadFontData')
    static function LoadFontData(fileData:raylib.utils.BytesConstPointer, dataSize:Int, fontSize:Int, codepoints:raylib.utils.IntPointer,
        codepointCount:Int, type:Int):cpp.RawPointer<GlyphInfoImpl>;

    @:native('GenImageFontAtlas')
    static function GenImageFontAtlas(glyphs:cpp.RawPointer<GlyphInfoImpl>,
        glyphRecs:cpp.RawPointer<cpp.RawPointer<RectangleImpl>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):ImageImpl;

    @:native('UnloadFontData')
    static function UnloadFontData(glyphs:cpp.RawPointer<GlyphInfoImpl>, glyphCount:Int):Void;

    @:native('UnloadFont')
    static function UnloadFont(font:FontImpl):Void;

    @:native('ExportFontAsCode')
    static function ExportFontAsCode(font:FontImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('DrawFPS')
    static function DrawFPS(posX:Int, posY:Int):Void;

    @:native('DrawText')
    static function DrawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:ColorImpl):Void;

    @:native('DrawTextEx')
    static function DrawTextEx(font:FontImpl, text:cpp.ConstCharStar, position:Vector2Impl, fontSize:Single, spacing:Single,
        tint:ColorImpl):Void;

    @:native('DrawTextPro')
    static function DrawTextPro(font:FontImpl, text:cpp.ConstCharStar, position:Vector2Impl, origin:Vector2Impl, rotation:Single,
        fontSize:Single, spacing:Single, tint:ColorImpl):Void;

    @:native('DrawTextCodepoint')
    static function DrawTextCodepoint(font:FontImpl, codepoint:Int, position:Vector2Impl, fontSize:Single, tint:ColorImpl):Void;

    @:native('DrawTextCodepoints')
    static function DrawTextCodepoints(font:FontImpl, codepoints:raylib.utils.IntPointer, codepointCount:Int, position:Vector2Impl,
        fontSize:Single, spacing:Single, tint:ColorImpl):Void;

    @:native('SetTextLineSpacing')
    static function SetTextLineSpacing(spacing:Int):Void;

    @:native('MeasureText')
    static function MeasureText(text:cpp.ConstCharStar, fontSize:Int):Int;

    @:native('MeasureTextEx')
    static function MeasureTextEx(font:FontImpl, text:cpp.ConstCharStar, fontSize:Single, spacing:Single):Vector2Impl;

    @:native('GetGlyphIndex')
    static function GetGlyphIndex(font:FontImpl, codepoint:Int):Int;

    @:native('GetGlyphInfo')
    static function GetGlyphInfo(font:FontImpl, codepoint:Int):GlyphInfoImpl;

    @:native('GetGlyphAtlasRec')
    static function GetGlyphAtlasRec(font:FontImpl, codepoint:Int):RectangleImpl;

    @:native('LoadUTF8')
    static function LoadUTF8(codepoints:raylib.utils.IntPointer, length:Int):cpp.ConstCharStar;

    @:native('UnloadUTF8')
    static function UnloadUTF8(text:cpp.ConstCharStar):Void;

    @:native('LoadCodepoints')
    static function LoadCodepoints(text:cpp.ConstCharStar, count:raylib.utils.IntPointer):raylib.utils.IntPointer;

    @:native('UnloadCodepoints')
    static function UnloadCodepoints(codepoints:raylib.utils.IntPointer):Void;

    @:native('GetCodepointCount')
    static function GetCodepointCount(text:cpp.ConstCharStar):Int;

    @:native('GetCodepoint')
    static function GetCodepoint(text:cpp.ConstCharStar, codepointSize:raylib.utils.IntPointer):Int;

    @:native('GetCodepointNext')
    static function GetCodepointNext(text:cpp.ConstCharStar, codepointSize:raylib.utils.IntPointer):Int;

    @:native('GetCodepointPrevious')
    static function GetCodepointPrevious(text:cpp.ConstCharStar, codepointSize:raylib.utils.IntPointer):Int;

    @:native('CodepointToUTF8')
    static function CodepointToUTF8(codepoint:Int, utf8Size:raylib.utils.IntPointer):cpp.ConstCharStar;

    @:native('TextCopy')
    static function TextCopy(dst:raylib.utils.BytesPointer, src:cpp.ConstCharStar):Int;

    @:native('TextIsEqual')
    static function TextIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool;

    @:native('TextLength')
    static function TextLength(text:cpp.ConstCharStar):UInt;

    @:native('TextFormat')
    static function TextFormat(text:cpp.ConstCharStar, args:cpp.Rest<cpp.VarArg>):cpp.ConstCharStar;

    @:native('TextSubtext')
    static function TextSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar;

    @:native('TextReplace')
    static function TextReplace(text:cpp.ConstCharStar, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextInsert')
    static function TextInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.ConstCharStar;

    @:native('TextJoin')
    static function TextJoin(textList:raylib.utils.ConstCharStarPointer, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextSplit')
    static function TextSplit(text:cpp.ConstCharStar, delimiter:cpp.Char, count:raylib.utils.IntPointer):raylib.utils.ConstCharStarPointer;

    @:native('TextAppend')
    static function TextAppend(text:raylib.utils.BytesPointer, append:cpp.ConstCharStar, position:raylib.utils.IntPointer):Void;

    @:native('TextFindIndex')
    static function TextFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int;

    @:native('TextToUpper')
    static function TextToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextToLower')
    static function TextToLower(text:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextToPascal')
    static function TextToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextToSnake')
    static function TextToSnake(text:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextToCamel')
    static function TextToCamel(text:cpp.ConstCharStar):cpp.ConstCharStar;

    @:native('TextToInteger')
    static function TextToInteger(text:cpp.ConstCharStar):Int;

    @:native('TextToFloat')
    static function TextToFloat(text:cpp.ConstCharStar):Single;

    @:native('DrawLine3D')
    static function DrawLine3D(startPos:Vector3Impl, endPos:Vector3Impl, color:ColorImpl):Void;

    @:native('DrawPoint3D')
    static function DrawPoint3D(position:Vector3Impl, color:ColorImpl):Void;

    @:native('DrawCircle3D')
    static function DrawCircle3D(center:Vector3Impl, radius:Single, rotationAxis:Vector3Impl, rotationAngle:Single, color:ColorImpl):Void;

    @:native('DrawTriangle3D')
    static function DrawTriangle3D(v1:Vector3Impl, v2:Vector3Impl, v3:Vector3Impl, color:ColorImpl):Void;

    @:native('DrawTriangleStrip3D')
    static function DrawTriangleStrip3D(points:cpp.RawConstPointer<Vector3Impl>, pointCount:Int, color:ColorImpl):Void;

    @:native('DrawCube')
    static function DrawCube(position:Vector3Impl, width:Single, height:Single, length:Single, color:ColorImpl):Void;

    @:native('DrawCubeV')
    static function DrawCubeV(position:Vector3Impl, size:Vector3Impl, color:ColorImpl):Void;

    @:native('DrawCubeWires')
    static function DrawCubeWires(position:Vector3Impl, width:Single, height:Single, length:Single, color:ColorImpl):Void;

    @:native('DrawCubeWiresV')
    static function DrawCubeWiresV(position:Vector3Impl, size:Vector3Impl, color:ColorImpl):Void;

    @:native('DrawSphere')
    static function DrawSphere(centerPos:Vector3Impl, radius:Single, color:ColorImpl):Void;

    @:native('DrawSphereEx')
    static function DrawSphereEx(centerPos:Vector3Impl, radius:Single, rings:Int, slices:Int, color:ColorImpl):Void;

    @:native('DrawSphereWires')
    static function DrawSphereWires(centerPos:Vector3Impl, radius:Single, rings:Int, slices:Int, color:ColorImpl):Void;

    @:native('DrawCylinder')
    static function DrawCylinder(position:Vector3Impl, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int,
        color:ColorImpl):Void;

    @:native('DrawCylinderEx')
    static function DrawCylinderEx(startPos:Vector3Impl, endPos:Vector3Impl, startRadius:Single, endRadius:Single, sides:Int,
        color:ColorImpl):Void;

    @:native('DrawCylinderWires')
    static function DrawCylinderWires(position:Vector3Impl, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int,
        color:ColorImpl):Void;

    @:native('DrawCylinderWiresEx')
    static function DrawCylinderWiresEx(startPos:Vector3Impl, endPos:Vector3Impl, startRadius:Single, endRadius:Single,
        sides:Int, color:ColorImpl):Void;

    @:native('DrawCapsule')
    static function DrawCapsule(startPos:Vector3Impl, endPos:Vector3Impl, radius:Single, slices:Int, rings:Int, color:ColorImpl):Void;

    @:native('DrawCapsuleWires')
    static function DrawCapsuleWires(startPos:Vector3Impl, endPos:Vector3Impl, radius:Single, slices:Int, rings:Int,
        color:ColorImpl):Void;

    @:native('DrawPlane')
    static function DrawPlane(centerPos:Vector3Impl, size:Vector2Impl, color:ColorImpl):Void;

    @:native('DrawRay')
    static function DrawRay(ray:RayImpl, color:ColorImpl):Void;

    @:native('DrawGrid')
    static function DrawGrid(slices:Int, spacing:Single):Void;

    @:native('LoadModel')
    static function LoadModel(fileName:cpp.ConstCharStar):ModelImpl;

    @:native('LoadModelFromMesh')
    static function LoadModelFromMesh(mesh:MeshImpl):ModelImpl;

    @:native('IsModelValid')
    static function IsModelValid(model:ModelImpl):Bool;

    @:native('UnloadModel')
    static function UnloadModel(model:ModelImpl):Void;

    @:native('GetModelBoundingBox')
    static function GetModelBoundingBox(model:ModelImpl):BoundingBoxImpl;

    @:native('DrawModel')
    static function DrawModel(model:ModelImpl, position:Vector3Impl, scale:Single, tint:ColorImpl):Void;

    @:native('DrawModelEx')
    static function DrawModelEx(model:ModelImpl, position:Vector3Impl, rotationAxis:Vector3Impl, rotationAngle:Single, scale:Vector3Impl,
        tint:ColorImpl):Void;

    @:native('DrawModelWires')
    static function DrawModelWires(model:ModelImpl, position:Vector3Impl, scale:Single, tint:ColorImpl):Void;

    @:native('DrawModelWiresEx')
    static function DrawModelWiresEx(model:ModelImpl, position:Vector3Impl, rotationAxis:Vector3Impl, rotationAngle:Single,
        scale:Vector3Impl, tint:ColorImpl):Void;

    @:native('DrawModelPoints')
    static function DrawModelPoints(model:ModelImpl, position:Vector3Impl, scale:Single, tint:ColorImpl):Void;

    @:native('DrawModelPointsEx')
    static function DrawModelPointsEx(model:ModelImpl, position:Vector3Impl, rotationAxis:Vector3Impl, rotationAngle:Single,
        scale:Vector3Impl, tint:ColorImpl):Void;

    @:native('DrawBoundingBox')
    static function DrawBoundingBox(box:BoundingBoxImpl, color:ColorImpl):Void;

    @:native('DrawBillboard')
    static function DrawBillboard(camera:Camera3DImpl, texture:TextureImpl, position:Vector3Impl, scale:Single, tint:ColorImpl):Void;

    @:native('DrawBillboardRec')
    static function DrawBillboardRec(camera:Camera3DImpl, texture:TextureImpl, source:RectangleImpl, position:Vector3Impl,
        size:Vector2Impl, tint:ColorImpl):Void;

    @:native('DrawBillboardPro')
    static function DrawBillboardPro(camera:Camera3DImpl, texture:TextureImpl, source:RectangleImpl, position:Vector3Impl,
        up:Vector3Impl, size:Vector2Impl, origin:Vector2Impl, rotation:Single, tint:ColorImpl):Void;

    @:native('UploadMesh')
    static function UploadMesh(mesh:MeshImpl, dynamicBuffer:Bool):Void;

    @:native('UpdateMeshBuffer')
    static function UpdateMeshBuffer(mesh:MeshImpl, index:Int, data:cpp.RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;

    @:native('UnloadMesh')
    static function UnloadMesh(mesh:MeshImpl):Void;

    @:native('DrawMesh')
    static function DrawMesh(mesh:MeshImpl, material:MaterialImpl, transform:MatrixImpl):Void;

    @:native('DrawMeshInstanced')
    static function DrawMeshInstanced(mesh:MeshImpl, material:MaterialImpl, transforms:cpp.RawPointer<MatrixImpl>,
        instances:Int):Void;

    @:native('GetMeshBoundingBox')
    static function GetMeshBoundingBox(mesh:MeshImpl):BoundingBoxImpl;

    @:native('GenMeshTangents')
    static function GenMeshTangents(mesh:MeshImpl):Void;

    @:native('ExportMesh')
    static function ExportMesh(mesh:MeshImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('ExportMeshAsCode')
    static function ExportMeshAsCode(mesh:MeshImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('GenMeshPoly')
    static function GenMeshPoly(sides:Int, radius:Single):MeshImpl;

    @:native('GenMeshPlane')
    static function GenMeshPlane(width:Single, length:Single, resX:Int, resZ:Int):MeshImpl;

    @:native('GenMeshCube')
    static function GenMeshCube(width:Single, height:Single, length:Single):MeshImpl;

    @:native('GenMeshSphere')
    static function GenMeshSphere(radius:Single, rings:Int, slices:Int):MeshImpl;

    @:native('GenMeshHemiSphere')
    static function GenMeshHemiSphere(radius:Single, rings:Int, slices:Int):MeshImpl;

    @:native('GenMeshCylinder')
    static function GenMeshCylinder(radius:Single, height:Single, slices:Int):MeshImpl;

    @:native('GenMeshCone')
    static function GenMeshCone(radius:Single, height:Single, slices:Int):MeshImpl;

    @:native('GenMeshTorus')
    static function GenMeshTorus(radius:Single, size:Single, radSeg:Int, sides:Int):MeshImpl;

    @:native('GenMeshKnot')
    static function GenMeshKnot(radius:Single, size:Single, radSeg:Int, sides:Int):MeshImpl;

    @:native('GenMeshHeightmap')
    static function GenMeshHeightmap(heightmap:ImageImpl, size:Vector3Impl):MeshImpl;

    @:native('GenMeshCubicmap')
    static function GenMeshCubicmap(cubicmap:ImageImpl, cubeSize:Vector3Impl):MeshImpl;

    @:native('LoadMaterials')
    static function LoadMaterials(fileName:cpp.ConstCharStar, materialCount:raylib.utils.IntPointer):cpp.RawPointer<MaterialImpl>;

    @:native('LoadMaterialDefault')
    static function LoadMaterialDefault():MaterialImpl;

    @:native('IsMaterialValid')
    static function IsMaterialValid(material:MaterialImpl):Bool;

    @:native('UnloadMaterial')
    static function UnloadMaterial(material:MaterialImpl):Void;

    @:native('SetMaterialTexture')
    static function SetMaterialTexture(material:cpp.RawPointer<MaterialImpl>, mapType:Int, texture:TextureImpl):Void;

    @:native('SetModelMeshMaterial')
    static function SetModelMeshMaterial(model:cpp.RawPointer<ModelImpl>, meshId:Int, materialId:Int):Void;

    @:native('LoadModelAnimations')
    static function LoadModelAnimations(fileName:cpp.ConstCharStar,
        animCount:raylib.utils.IntPointer):cpp.RawPointer<ModelAnimationImpl>;

    @:native('UpdateModelAnimation')
    static function UpdateModelAnimation(model:ModelImpl, anim:ModelAnimationImpl, frame:Int):Void;

    @:native('UnloadModelAnimation')
    static function UnloadModelAnimation(anim:ModelAnimationImpl):Void;

    @:native('UnloadModelAnimations')
    static function UnloadModelAnimations(animations:cpp.RawPointer<ModelAnimationImpl>, animCount:Int):Void;

    @:native('IsModelAnimationValid')
    static function IsModelAnimationValid(model:ModelImpl, anim:ModelAnimationImpl):Bool;

    @:native('UpdateModelAnimationBones')
    static function UpdateModelAnimationBones(model:ModelImpl, anim:ModelAnimationImpl, frame:Int):Void;

    @:native('CheckCollisionSpheres')
    static function CheckCollisionSpheres(center1:Vector3Impl, radius1:Single, center2:Vector3Impl, radius2:Single):Bool;

    @:native('CheckCollisionBoxes')
    static function CheckCollisionBoxes(box1:BoundingBoxImpl, box2:BoundingBoxImpl):Bool;

    @:native('CheckCollisionBoxSphere')
    static function CheckCollisionBoxSphere(box:BoundingBoxImpl, center:Vector3Impl, radius:Single):Bool;

    @:native('GetRayCollisionSphere')
    static function GetRayCollisionSphere(ray:RayImpl, center:Vector3Impl, radius:Single):RayCollisionImpl;

    @:native('GetRayCollisionBox')
    static function GetRayCollisionBox(ray:RayImpl, box:BoundingBoxImpl):RayCollisionImpl;

    @:native('GetRayCollisionMesh')
    static function GetRayCollisionMesh(ray:RayImpl, mesh:MeshImpl, transform:MatrixImpl):RayCollisionImpl;

    @:native('GetRayCollisionTriangle')
    static function GetRayCollisionTriangle(ray:RayImpl, p1:Vector3Impl, p2:Vector3Impl, p3:Vector3Impl):RayCollisionImpl;

    @:native('GetRayCollisionQuad')
    static function GetRayCollisionQuad(ray:RayImpl, p1:Vector3Impl, p2:Vector3Impl, p3:Vector3Impl, p4:Vector3Impl):RayCollisionImpl;

    @:native('InitAudioDevice')
    static function InitAudioDevice():Void;

    @:native('CloseAudioDevice')
    static function CloseAudioDevice():Void;

    @:native('IsAudioDeviceValid')
    static function IsAudioDeviceValid():Bool;

    @:native('SetMasterVolume')
    static function SetMasterVolume(volume:Single):Void;

    @:native('GetMasterVolume')
    static function GetMasterVolume():Single;

    @:native('LoadWave')
    static function LoadWave(fileName:cpp.ConstCharStar):WaveImpl;

    @:native('LoadWaveFromMemory')
    static function LoadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:raylib.utils.BytesConstPointer, dataSize:Int):WaveImpl;

    @:native('IsWaveValid')
    static function IsWaveValid(wave:WaveImpl):Bool;

    @:native('LoadSound')
    static function LoadSound(fileName:cpp.ConstCharStar):SoundImpl;

    @:native('LoadSoundFromWave')
    static function LoadSoundFromWave(wave:WaveImpl):SoundImpl;

    @:native('LoadSoundAlias')
    static function LoadSoundAlias(source:SoundImpl):SoundImpl;

    @:native('IsSoundValid')
    static function IsSoundValid(sound:SoundImpl):Bool;

    @:native('UpdateSound')
    static function UpdateSound(sound:SoundImpl, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void;

    @:native('UnloadWave')
    static function UnloadWave(wave:WaveImpl):Void;

    @:native('UnloadSound')
    static function UnloadSound(sound:SoundImpl):Void;

    @:native('UnloadSoundAlias')
    static function UnloadSoundAlias(alias:SoundImpl):Void;

    @:native('ExportWave')
    static function ExportWave(wave:WaveImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('ExportWaveAsCode')
    static function ExportWaveAsCode(wave:WaveImpl, fileName:cpp.ConstCharStar):Bool;

    @:native('PlaySound')
    static function PlaySound(sound:SoundImpl):Void;

    @:native('StopSound')
    static function StopSound(sound:SoundImpl):Void;

    @:native('PauseSound')
    static function PauseSound(sound:SoundImpl):Void;

    @:native('ResumeSound')
    static function ResumeSound(sound:SoundImpl):Void;

    @:native('IsSoundPlaying')
    static function IsSoundPlaying(sound:SoundImpl):Bool;

    @:native('SetSoundVolume')
    static function SetSoundVolume(sound:SoundImpl, volume:Single):Void;

    @:native('SetSoundPitch')
    static function SetSoundPitch(sound:SoundImpl, pitch:Single):Void;

    @:native('SetSoundPan')
    static function SetSoundPan(sound:SoundImpl, pan:Single):Void;

    @:native('WaveCopy')
    static function WaveCopy(wave:WaveImpl):WaveImpl;

    @:native('WaveCrop')
    static function WaveCrop(wave:cpp.RawPointer<WaveImpl>, initFrame:Int, finalFrame:Int):Void;

    @:native('WaveFormat')
    static function WaveFormat(wave:cpp.RawPointer<WaveImpl>, initSample:Int, finalSample:Int, channels:Int):Void;

    @:native('LoadWaveSamples')
    static function LoadWaveSamples(wave:WaveImpl):raylib.utils.FloatPointer;

    @:native('UnloadWaveSamples')static function UnloadWaveSamples(samples:raylib.utils.FloatPointer):Void;

    @:native('LoadMusicStream')
    static function LoadMusicStream(fileName:cpp.ConstCharStar):MusicImpl;

    @:native('LoadMusicStreamFromMemory')
    static function LoadMusicStreamFromMemory(fileType:cpp.ConstCharStar, fileData:raylib.utils.BytesConstPointer,
        dataSize:Int):MusicImpl;

    @:native('IsMusicValid')
    static function IsMusicValid(music:MusicImpl):Bool;

    @:native('UnloadMusicStream')
    static function UnloadMusicStream(music:MusicImpl):Void;

    @:native('PlayMusicStream')
    static function PlayMusicStream(music:MusicImpl):Void;

    @:native('IsMusicStreamPlaying')
    static function IsMusicStreamPlaying(music:MusicImpl):Bool;

    @:native('UpdateMusicStream')
    static function UpdateMusicStream(music:MusicImpl):Void;

    @:native('StopMusicStream')
    static function StopMusicStream(music:MusicImpl):Void;

    @:native('PauseMusicStream')
    static function PauseMusicStream(music:MusicImpl):Void;

    @:native('ResumeMusicStream')
    static function ResumeMusicStream(music:MusicImpl):Void;

    @:native('SeekMusicStream')
    static function SeekMusicStream(music:MusicImpl, position:Single):Void;

    @:native('SetMusicVolume')
    static function SetMusicVolume(music:MusicImpl, volume:Single):Void;

    @:native('SetMusicPitch')
    static function SetMusicPitch(music:MusicImpl, pitch:Single):Void;

    @:native('SetMusicPan')
    static function SetMusicPan(music:MusicImpl, pan:Single):Void;

    @:native('GetMusicTimeLength')
    static function GetMusicTimeLength(music:MusicImpl):Single;

    @:native('GetMusicTimePlayed')
    static function GetMusicTimePlayed(music:MusicImpl):Single;

    @:native('LoadAudioStream')
    static function LoadAudioStream(sampleRate:cpp.UInt32, sampleSize:cpp.UInt32, channels:cpp.UInt32):AudioStreamImpl;

    @:native('IsAudioStreamValid')
    static function IsAudioStreamValid(stream:AudioStreamImpl):Bool;

    @:native('UnloadAudioStream')
    static function UnloadAudioStream(stream:AudioStreamImpl):Void;

    @:native('UpdateAudioStream')
    static function UpdateAudioStream(stream:AudioStreamImpl, data:cpp.RawConstPointer<cpp.Void>, samplesCount:Int):Void;

    @:native('IsAudioStreamProcessed')
    static function IsAudioStreamProcessed(stream:AudioStreamImpl):Bool;

    @:native('PlayAudioStream')
    static function PlayAudioStream(stream:AudioStreamImpl):Void;

    @:native('PauseAudioStream')
    static function PauseAudioStream(stream:AudioStreamImpl):Void;

    @:native('ResumeAudioStream')
    static function ResumeAudioStream(stream:AudioStreamImpl):Void;

    @:native('IsAudioStreamPlaying')
    static function IsAudioStreamPlaying(stream:AudioStreamImpl):Bool;

    @:native('StopAudioStream')
    static function StopAudioStream(stream:AudioStreamImpl):Void;

    @:native('SetAudioStreamVolume')
    static function SetAudioStreamVolume(stream:AudioStreamImpl, volume:Single):Void;

    @:native('SetAudioStreamPitch')
    static function SetAudioStreamPitch(stream:AudioStreamImpl, pitch:Single):Void;

    @:native('SetAudioStreamPan')
    static function SetAudioStreamPan(stream:AudioStreamImpl, pan:Single):Void;

    @:native('SetAudioStreamBufferSizeDefault')
    static function SetAudioStreamBufferSizeDefault(size:Int):Void;

    @:native('SetAudioStreamCallback')
    static function SetAudioStreamCallback(stream:AudioStreamImpl, callback:AudioCallback):Void;

    @:native('AttachAudioStreamProcessor')
    static function AttachAudioStreamProcessor(stream:AudioStreamImpl, processor:AudioCallback):Void;

    @:native('DetachAudioStreamProcessor')
    static function DetachAudioStreamProcessor(stream:AudioStreamImpl, processor:AudioCallback):Void;

    @:native('AttachAudioMixedProcessor')
    static function AttachAudioMixedProcessor(processor:AudioCallback):Void;

    @:native('DetachAudioMixedProcessor')
    static function DetachAudioMixedProcessor(processor:AudioCallback):Void;
}
