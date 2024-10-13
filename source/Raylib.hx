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
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector2')
extern class RayVector2
{
	@:native('Vector2')
	static function alloc():RayVector2;

	var x:Single;
	var y:Single;
}

extern abstract Vector2(cpp.Struct<RayVector2>) to cpp.Struct<RayVector2>
{
	var x(get, set):Single;

	inline function get_x():Single
	{
		return this.x;
	}

	inline function set_x(value:Single):Single
	{
		return this.x = value;
	}

	var y(get, set):Single;

	inline function get_y():Single
	{
		return this.y;
	}

	inline function set_y(value:Single):Single
	{
		return this.y = value;
	}

	inline function new(x:Single, y:Single):Void
	{
		final vec2:RayVector2 = RayVector2.alloc();
		vec2.x = x;
		vec2.y = y;
		this = vec2;
	}

	@:from
	static public inline function fromNative(value:RayVector2):Vector2
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayVector2>
		return cpp.RawConstPointer.addressOf((this : RayVector2));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector3')
extern class RayVector3
{
	@:native('Vector3')
	static function alloc():RayVector3;

	var x:Single;
	var y:Single;
	var z:Single;
}

extern abstract Vector3(cpp.Struct<RayVector3>) to cpp.Struct<RayVector3>
{
	var x(get, set):Single;

	inline function get_x():Single
	{
		return this.x;
	}

	inline function set_x(value:Single):Single
	{
		return this.x = value;
	}

	var y(get, set):Single;

	inline function get_y():Single
	{
		return this.y;
	}

	inline function set_y(value:Single):Single
	{
		return this.y = value;
	}

	var z(get, set):Single;

	inline function get_z():Single
	{
		return this.z;
	}

	inline function set_z(value:Single):Single
	{
		return this.z = value;
	}

	inline function new(x:Single, y:Single, z:Single):Void
	{
		final vec3:RayVector3 = RayVector3.alloc();
		vec3.x = x;
		vec3.y = y;
		vec3.z = z;
		this = vec3;
	}

	@:from
	static public inline function fromNative(value:RayVector3):Vector3
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayVector3>
		return cpp.RawConstPointer.addressOf((this : RayVector3));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Vector4')
extern class RayVector4
{
	@:native('RayVector4')
	static function alloc():RayVector4;

	var x:Single;
	var y:Single;
	var z:Single;
	var w:Single;
}

extern abstract Vector4(cpp.Struct<RayVector4>) to cpp.Struct<RayVector4>
{
	var x(get, set):Single;

	inline function get_x():Single
	{
		return this.x;
	}

	inline function set_x(value:Single):Single
	{
		return this.x = value;
	}

	var y(get, set):Single;

	inline function get_y():Single
	{
		return this.y;
	}

	inline function set_y(value:Single):Single
	{
		return this.y = value;
	}

	var z(get, set):Single;

	inline function get_z():Single
	{
		return this.z;
	}

	inline function set_z(value:Single):Single
	{
		return this.z = value;
	}

	var w(get, set):Single;

	inline function get_w():Single
	{
		return this.w;
	}

	inline function set_w(value:Single):Single
	{
		return this.w = value;
	}

	inline function new(x:Single, y:Single, z:Single, w:Single):Void
	{
		final vec4:RayVector4 = RayVector4.alloc();
		vec4.x = x;
		vec4.y = y;
		vec4.z = z;
		vec4.w = w;
		this = vec4;
	}

	@:from
	static public inline function fromNative(value:RayVector4):Vector4
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayVector4>
		return cpp.RawConstPointer.addressOf((this : RayVector4));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Matrix')
extern class RayMatrix
{
	@:native('Matrix')
	static function alloc():RayMatrix;

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
}

extern abstract Matrix(cpp.Struct<RayMatrix>) to cpp.Struct<RayMatrix>
{
	var m0(get, set):Single;

	inline function get_m0():Single
	{
		return this.m0;
	}

	inline function set_m0(value:Single):Single
	{
		return this.m0 = value;
	}

	var m4(get, set):Single;

	inline function get_m4():Single
	{
		return this.m4;
	}

	inline function set_m4(value:Single):Single
	{
		return this.m4 = value;
	}

	var m8(get, set):Single;

	inline function get_m8():Single
	{
		return this.m8;
	}

	inline function set_m8(value:Single):Single
	{
		return this.m8 = value;
	}

	var m12(get, set):Single;

	inline function get_m12():Single
	{
		return this.m12;
	}

	inline function set_m12(value:Single):Single
	{
		return this.m12 = value;
	}

	var m1(get, set):Single;

	inline function get_m1():Single
	{
		return this.m1;
	}

	inline function set_m1(value:Single):Single
	{
		return this.m1 = value;
	}

	var m5(get, set):Single;

	inline function get_m5():Single
	{
		return this.m5;
	}

	inline function set_m5(value:Single):Single
	{
		return this.m5 = value;
	}

	var m9(get, set):Single;

	inline function get_m9():Single
	{
		return this.m9;
	}

	inline function set_m9(value:Single):Single
	{
		return this.m9 = value;
	}

	var m13(get, set):Single;

	inline function get_m13():Single
	{
		return this.m13;
	}

	inline function set_m13(value:Single):Single
	{
		return this.m13 = value;
	}

	var m2(get, set):Single;

	inline function get_m2():Single
	{
		return this.m2;
	}

	inline function set_m2(value:Single):Single
	{
		return this.m2 = value;
	}

	var m6(get, set):Single;

	inline function get_m6():Single
	{
		return this.m6;
	}

	inline function set_m6(value:Single):Single
	{
		return this.m6 = value;
	}

	var m10(get, set):Single;

	inline function get_m10():Single
	{
		return this.m10;
	}

	inline function set_m10(value:Single):Single
	{
		return this.m10 = value;
	}

	var m14(get, set):Single;

	inline function get_m14():Single
	{
		return this.m14;
	}

	inline function set_m14(value:Single):Single
	{
		return this.m14 = value;
	}

	var m3(get, set):Single;

	inline function get_m3():Single
	{
		return this.m3;
	}

	inline function set_m3(value:Single):Single
	{
		return this.m3 = value;
	}

	var m7(get, set):Single;

	inline function get_m7():Single
	{
		return this.m7;
	}

	inline function set_m7(value:Single):Single
	{
		return this.m7 = value;
	}

	var m11(get, set):Single;

	inline function get_m11():Single
	{
		return this.m11;
	}

	inline function set_m11(value:Single):Single
	{
		return this.m11 = value;
	}

	var m15(get, set):Single;

	inline function get_m15():Single
	{
		return this.m15;
	}

	inline function set_m15(value:Single):Single
	{
		return this.m15 = value;
	}

	inline function new():Void
	{
		this = RayMatrix.alloc();
	}

	@:from
	static public inline function fromNative(value:RayMatrix):Matrix
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayMatrix>
		return cpp.RawConstPointer.addressOf((this : RayMatrix));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Color')
extern class RayColor
{
	@:native('Color')
	static function alloc():RayColor;

	var r:cpp.UInt8;
	var g:cpp.UInt8;
	var b:cpp.UInt8;
	var a:cpp.UInt8;
}

extern abstract Color(cpp.Struct<RayColor>) to cpp.Struct<RayColor>
{
	var r(get, set):cpp.UInt8;

	inline function get_r():cpp.UInt8
	{
		return this.r;
	}

	inline function set_r(value:cpp.UInt8):cpp.UInt8
	{
		return this.r = value;
	}

	var g(get, set):cpp.UInt8;

	inline function get_g():cpp.UInt8
	{
		return this.g;
	}

	inline function set_g(value:cpp.UInt8):cpp.UInt8
	{
		return this.g = value;
	}

	var b(get, set):cpp.UInt8;

	inline function get_b():cpp.UInt8
	{
		return this.b;
	}

	inline function set_b(value:cpp.UInt8):cpp.UInt8
	{
		return this.b = value;
	}

	var a(get, set):cpp.UInt8;

	inline function get_a():cpp.UInt8
	{
		return this.a;
	}

	inline function set_a(value:cpp.UInt8):cpp.UInt8
	{
		return this.a = value;
	}

	inline function new(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Void
	{
		final color:RayColor = RayColor.alloc();
		color.r = r;
		color.g = g;
		color.b = b;
		color.a = a;
		this = color;
	}

	@:from
	static public inline function fromNative(value:RayColor):Color
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayColor>
		return cpp.RawConstPointer.addressOf((this : RayColor));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Rectangle')
extern class RayRectangle
{
	@:native('Rectangle')
	static function alloc():RayRectangle;

	var x:Single;
	var y:Single;
	var width:Single;
	var height:Single;
}

extern abstract Rectangle(cpp.Struct<RayRectangle>) to cpp.Struct<RayRectangle>
{
	var x(get, set):Single;

	inline function get_x():Single
	{
		return this.x;
	}

	inline function set_x(value:Single):Single
	{
		return this.x = value;
	}

	var y(get, set):Single;

	inline function get_y():Single
	{
		return this.y;
	}

	inline function set_y(value:Single):Single
	{
		return this.y = value;
	}

	var width(get, set):Single;

	inline function get_width():Single
	{
		return this.width;
	}

	inline function set_width(value:Single):Single
	{
		return this.width = value;
	}

	var height(get, set):Single;

	inline function get_height():Single
	{
		return this.height;
	}

	inline function set_height(value:Single):Single
	{
		return this.height = value;
	}

	inline function new(x:Single, y:Single, width:Single, height:Single):Void
	{
		final rect:RayRectangle = RayRectangle.alloc();
		rect.x = x;
		rect.y = y;
		rect.width = width;
		rect.height = height;
		this = rect;
	}

	@:from
	static public inline function fromNative(value:RayRectangle):Rectangle
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayRectangle>
		return cpp.RawConstPointer.addressOf((this : RayRectangle));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Image')
extern class RayImage
{
	@:native('Image')
	static function alloc():RayImage;

	var data:cpp.RawPointer<cpp.Void>;
	var width:Int;
	var height:Int;
	var mipmaps:Int;
	var format:Int;
}

extern abstract Image(cpp.Struct<RayImage>) to cpp.Struct<RayImage>
{
	var data(get, set):cpp.RawPointer<cpp.Void>;

	inline function get_data():cpp.RawPointer<cpp.Void>
	{
		return this.data;
	}

	inline function set_data(value:cpp.RawPointer<cpp.Void>):cpp.RawPointer<cpp.Void>
	{
		return this.data = value;
	}

	var width(get, set):Int;

	inline function get_width():Int
	{
		return this.width;
	}

	inline function set_width(value:Int):Int
	{
		return this.width = value;
	}

	var height(get, set):Int;

	inline function get_height():Int
	{
		return this.height;
	}

	inline function set_height(value:Int):Int
	{
		return this.height = value;
	}

	var mipmaps(get, set):Int;

	inline function get_mipmaps():Int
	{
		return this.mipmaps;
	}

	inline function set_mipmaps(value:Int):Int
	{
		return this.mipmaps = value;
	}

	var format(get, set):Int;

	inline function get_format():Int
	{
		return this.format;
	}

	inline function set_format(value:Int):Int
	{
		return this.format = value;
	}

	inline function new():Void
	{
		this = RayImage.alloc();
	}

	@:from
	static public inline function fromNative(value:RayImage):Image
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayImage>
		return cpp.RawConstPointer.addressOf((this : RayImage));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Texture')
extern class RayTexture
{
	@:native('Texture')
	static function alloc():RayTexture;

	var id:cpp.UInt32;
	var width:Int;
	var height:Int;
	var mipmaps:Int;
	var format:Int;
}

extern abstract Texture(cpp.Struct<RayTexture>) to cpp.Struct<RayTexture>
{
	var id(get, set):cpp.UInt32;

	inline function get_id():cpp.UInt32
	{
		return this.id;
	}

	inline function set_id(value:cpp.UInt32):cpp.UInt32
	{
		return this.id = value;
	}

	var width(get, set):Int;

	inline function get_width():Int
	{
		return this.width;
	}

	inline function set_width(value:Int):Int
	{
		return this.width = value;
	}

	var height(get, set):Int;

	inline function get_height():Int
	{
		return this.height;
	}

	inline function set_height(value:Int):Int
	{
		return this.height = value;
	}

	var mipmaps(get, set):Int;

	inline function get_mipmaps():Int
	{
		return this.mipmaps;
	}

	inline function set_mipmaps(value:Int):Int
	{
		return this.mipmaps = value;
	}

	var format(get, set):Int;

	inline function get_format():Int
	{
		return this.format;
	}

	inline function set_format(value:Int):Int
	{
		return this.format = value;
	}

	inline function new():Void
	{
		this = RayTexture.alloc();
	}

	@:from
	static public inline function fromNative(value:RayTexture):Texture
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayTexture>
		return cpp.RawConstPointer.addressOf((this : RayTexture));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('RenderTexture')
extern class RayRenderTexture
{
	@:native('RenderTexture')
	static function alloc():RayRenderTexture;

	var id:cpp.UInt32;
	var texture:RayTexture;
	var depth:RayTexture;
}

extern abstract RenderTexture(cpp.Struct<RayRenderTexture>) to cpp.Struct<RayRenderTexture>
{
	var id(get, set):cpp.UInt32;

	inline function get_id():cpp.UInt32
	{
		return this.id;
	}

	inline function set_id(value:cpp.UInt32):cpp.UInt32
	{
		return this.id = value;
	}

	var texture(get, set):RayTexture;

	inline function get_texture():RayTexture
	{
		return this.texture;
	}

	inline function set_texture(value:RayTexture):RayTexture
	{
		return this.texture = value;
	}

	var depth(get, set):RayTexture;

	inline function get_depth():RayTexture
	{
		return this.depth;
	}

	inline function set_depth(value:RayTexture):RayTexture
	{
		return this.depth = value;
	}

	inline function new():Void
	{
		this = RayRenderTexture.alloc();
	}

	@:from
	static public inline function fromNative(value:RayRenderTexture):RenderTexture
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayRenderTexture>
		return cpp.RawConstPointer.addressOf((this : RayRenderTexture));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('NPatchInfo')
extern class RayNPatchInfo
{
	@:native('NPatchInfo')
	static function alloc():RayNPatchInfo;

	var source:RayRectangle;
	var left:Int;
	var top:Int;
	var right:Int;
	var bottom:Int;
	var layout:Int;
}

extern abstract NPatchInfo(cpp.Struct<RayNPatchInfo>) to cpp.Struct<RayNPatchInfo>
{
	var source(get, set):RayRectangle;

	inline function get_source():RayRectangle
	{
		return this.source;
	}

	inline function set_source(value:RayRectangle):RayRectangle
	{
		return this.source = value;
	}

	var left(get, set):Int;

	inline function get_left():Int
	{
		return this.left;
	}

	inline function set_left(value:Int):Int
	{
		return this.left = value;
	}

	var top(get, set):Int;

	inline function get_top():Int
	{
		return this.top;
	}

	inline function set_top(value:Int):Int
	{
		return this.top = value;
	}

	var right(get, set):Int;

	inline function get_right():Int
	{
		return this.right;
	}

	inline function set_right(value:Int):Int
	{
		return this.right = value;
	}

	var bottom(get, set):Int;

	inline function get_bottom():Int
	{
		return this.bottom;
	}

	inline function set_bottom(value:Int):Int
	{
		return this.bottom = value;
	}

	var layout(get, set):Int;

	inline function get_layout():Int
	{
		return this.layout;
	}

	inline function set_layout(value:Int):Int
	{
		return this.layout = value;
	}

	inline function new():Void
	{
		this = RayNPatchInfo.alloc();
	}

	@:from
	static public inline function fromNative(value:RayNPatchInfo):NPatchInfo
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayNPatchInfo>
		return cpp.RawConstPointer.addressOf((this : RayNPatchInfo));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('GlyphInfo')
extern class RayGlyphInfo
{
	@:native('GlyphInfo')
	static function alloc():RayGlyphInfo;

	var value:Int;
	var offsetX:Int;
	var offsetY:Int;
	var advanceX:Int;
	var image:RayImage;
}

extern abstract GlyphInfo(cpp.Struct<RayGlyphInfo>) to cpp.Struct<RayGlyphInfo>
{
	var value(get, set):Int;

	inline function get_value():Int
	{
		return this.value;
	}

	inline function set_value(value:Int):Int
	{
		return this.value = value;
	}

	var offsetX(get, set):Int;

	inline function get_offsetX():Int
	{
		return this.offsetX;
	}

	inline function set_offsetX(value:Int):Int
	{
		return this.offsetX = value;
	}

	var offsetY(get, set):Int;

	inline function get_offsetY():Int
	{
		return this.offsetY;
	}

	inline function set_offsetY(value:Int):Int
	{
		return this.offsetY = value;
	}

	var advanceX(get, set):Int;

	inline function get_advanceX():Int
	{
		return this.advanceX;
	}

	inline function set_advanceX(value:Int):Int
	{
		return this.advanceX = value;
	}

	var image(get, set):RayImage;

	inline function get_image():RayImage
	{
		return this.image;
	}

	inline function set_image(value:RayImage):RayImage
	{
		return this.image = value;
	}

	inline function new():Void
	{
		this = RayGlyphInfo.alloc();
	}

	@:from
	static public inline function fromNative(value:RayGlyphInfo):GlyphInfo
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayGlyphInfo>
		return cpp.RawConstPointer.addressOf((this : RayGlyphInfo));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Font')
extern class RayFont
{
	@:native('Font')
	static function alloc():RayFont;

	var baseSize:Int;
	var glyphCount:Int;
	var glyphPadding:Int;
	var texture:RayTexture;
	var recs:cpp.RawPointer<RayRectangle>;
	var glyphs:cpp.RawPointer<RayGlyphInfo>;
}

extern abstract Font(cpp.Struct<RayFont>) to cpp.Struct<RayFont>
{
	var baseSize(get, set):Int;

	inline function get_baseSize():Int
	{
		return this.baseSize;
	}

	inline function set_baseSize(value:Int):Int
	{
		return this.baseSize = value;
	}

	var glyphCount(get, set):Int;

	inline function get_glyphCount():Int
	{
		return this.glyphCount;
	}

	inline function set_glyphCount(value:Int):Int
	{
		return this.glyphCount = value;
	}

	var glyphPadding(get, set):Int;

	inline function get_glyphPadding():Int
	{
		return this.glyphPadding;
	}

	inline function set_glyphPadding(value:Int):Int
	{
		return this.glyphPadding = value;
	}

	var texture(get, set):RayTexture;

	inline function get_texture():RayTexture
	{
		return this.texture;
	}

	inline function set_texture(value:RayTexture):RayTexture
	{
		return this.texture = value;
	}

	var recs(get, set):cpp.RawPointer<RayRectangle>;

	inline function get_recs():cpp.RawPointer<RayRectangle>
	{
		return this.recs;
	}

	inline function set_recs(value:cpp.RawPointer<RayRectangle>):cpp.RawPointer<RayRectangle>
	{
		return this.recs = value;
	}

	var glyphs(get, set):cpp.RawPointer<RayGlyphInfo>;

	inline function get_glyphs():cpp.RawPointer<RayGlyphInfo>
	{
		return this.glyphs;
	}

	inline function set_glyphs(value:cpp.RawPointer<RayGlyphInfo>):cpp.RawPointer<RayGlyphInfo>
	{
		return this.glyphs = value;
	}

	inline function new():Void
	{
		this = RayFont.alloc();
	}

	@:from
	static public inline function fromNative(value:RayFont):Font
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayFont>
		return cpp.RawConstPointer.addressOf((this : RayFont));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Camera3D')
extern class RayCamera3D
{
	@:native('Camera3D')
	static function alloc():RayCamera3D;

	var position:RayVector3;
	var target:RayVector3;
	var up:RayVector3;
	var fovy:Single;
	var projection:Int;
}

extern abstract Camera3D(cpp.Struct<RayCamera3D>) to cpp.Struct<RayCamera3D>
{
	var position(get, set):RayVector3;

	inline function get_position():RayVector3
	{
		return this.position;
	}

	inline function set_position(value:RayVector3):RayVector3
	{
		return this.position = value;
	}

	var target(get, set):RayVector3;

	inline function get_target():RayVector3
	{
		return this.target;
	}

	inline function set_target(value:RayVector3):RayVector3
	{
		return this.target = value;
	}

	var up(get, set):RayVector3;

	inline function get_up():RayVector3
	{
		return this.up;
	}

	inline function set_up(value:RayVector3):RayVector3
	{
		return this.up = value;
	}

	var fovy(get, set):Single;

	inline function get_fovy():Single
	{
		return this.fovy;
	}

	inline function set_fovy(value:Single):Single
	{
		return this.fovy = value;
	}

	var projection(get, set):Int;

	inline function get_projection():Int
	{
		return this.projection;
	}

	inline function set_projection(value:Int):Int
	{
		return this.projection = value;
	}

	inline function new():Void
	{
		this = RayCamera3D.alloc();
	}

	@:from
	static public inline function fromNative(value:RayCamera3D):Camera3D
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayCamera3D>
		return cpp.RawConstPointer.addressOf((this : RayCamera3D));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Camera2D')
extern class RayCamera2D
{
	@:native('Camera2D')
	static function alloc():RayCamera2D;

	var offset:RayVector2;
	var target:RayVector2;
	var rotation:Single;
	var zoom:Single;
}

extern abstract Camera2D(cpp.Struct<RayCamera2D>) to cpp.Struct<RayCamera2D>
{
	var offset(get, set):RayVector2;

	inline function get_offset():RayVector2
	{
		return this.offset;
	}

	inline function set_offset(value:RayVector2):RayVector2
	{
		return this.offset = value;
	}

	var target(get, set):RayVector2;

	inline function get_target():RayVector2
	{
		return this.target;
	}

	inline function set_target(value:RayVector2):RayVector2
	{
		return this.target = value;
	}

	var rotation(get, set):Single;

	inline function get_rotation():Single
	{
		return this.rotation;
	}

	inline function set_rotation(value:Single):Single
	{
		return this.rotation = value;
	}

	var zoom(get, set):Single;

	inline function get_zoom():Single
	{
		return this.zoom;
	}

	inline function set_zoom(value:Single):Single
	{
		return this.zoom = value;
	}

	inline function new():Void
	{
		this = RayCamera2D.alloc();
	}

	@:from
	static public inline function fromNative(value:RayCamera2D):Camera2D
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayCamera2D>
		return cpp.RawConstPointer.addressOf((this : RayCamera2D));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Mesh')
extern class RayMesh
{
	@:native('Mesh')
	static function alloc():RayMesh;

	var vertexCount:Int;
	var triangleCount:Int;

	var vertices:utils.FloatPointer;
	var texcoords:utils.FloatPointer;
	var texcoords2:utils.FloatPointer;
	var normals:utils.FloatPointer;
	var tangents:utils.FloatPointer;
	var colors:cpp.RawPointer<cpp.UInt8>;
	var indices:cpp.RawPointer<cpp.UInt16>;

	var animVertices:utils.FloatPointer;
	var animNormals:utils.FloatPointer;
	var boneIds:cpp.RawPointer<cpp.UInt8>;
	var boneWeights:utils.FloatPointer;

	var vaoId:cpp.UInt32;
	var vboId:utils.UnsignedPointer;
}

extern abstract Mesh(cpp.Struct<RayMesh>) to cpp.Struct<RayMesh>
{
	var vertexCount(get, set):Int;

	inline function get_vertexCount():Int
	{
		return this.vertexCount;
	}

	inline function set_vertexCount(value:Int):Int
	{
		return this.vertexCount = value;
	}

	var triangleCount(get, set):Int;

	inline function get_triangleCount():Int
	{
		return this.triangleCount;
	}

	inline function set_triangleCount(value:Int):Int
	{
		return this.triangleCount = value;
	}

	var vertices(get, set):utils.FloatPointer;

	inline function get_vertices():utils.FloatPointer
	{
		return this.vertices;
	}

	inline function set_vertices(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.vertices = value;
	}

	var texcoords(get, set):utils.FloatPointer;

	inline function get_texcoords():utils.FloatPointer
	{
		return this.texcoords;
	}

	inline function set_texcoords(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.texcoords = value;
	}

	var texcoords2(get, set):utils.FloatPointer;

	inline function get_texcoords2():utils.FloatPointer
	{
		return this.texcoords2;
	}

	inline function set_texcoords2(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.texcoords2 = value;
	}

	var normals(get, set):utils.FloatPointer;

	inline function get_normals():utils.FloatPointer
	{
		return this.normals;
	}

	inline function set_normals(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.normals = value;
	}

	var tangents(get, set):utils.FloatPointer;

	inline function get_tangents():utils.FloatPointer
	{
		return this.tangents;
	}

	inline function set_tangents(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.tangents = value;
	}

	var colors(get, set):cpp.RawPointer<cpp.UInt8>;

	inline function get_colors():cpp.RawPointer<cpp.UInt8>
	{
		return this.colors;
	}

	inline function set_colors(value:cpp.RawPointer<cpp.UInt8>):cpp.RawPointer<cpp.UInt8>
	{
		return this.colors = value;
	}

	var indices(get, set):cpp.RawPointer<cpp.UInt16>;

	inline function get_indices():cpp.RawPointer<cpp.UInt16>
	{
		return this.indices;
	}

	inline function set_indices(value:cpp.RawPointer<cpp.UInt16>):cpp.RawPointer<cpp.UInt16>
	{
		return this.indices = value;
	}

	var animVertices(get, set):utils.FloatPointer;

	inline function get_animVertices():utils.FloatPointer
	{
		return this.animVertices;
	}

	inline function set_animVertices(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.animVertices = value;
	}

	var animNormals(get, set):utils.FloatPointer;

	inline function get_animNormals():utils.FloatPointer
	{
		return this.animNormals;
	}

	inline function set_animNormals(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.animNormals = value;
	}

	var boneIds(get, set):cpp.RawPointer<cpp.UInt8>;

	inline function get_boneIds():cpp.RawPointer<cpp.UInt8>
	{
		return this.boneIds;
	}

	inline function set_boneIds(value:cpp.RawPointer<cpp.UInt8>):cpp.RawPointer<cpp.UInt8>
	{
		return this.boneIds = value;
	}

	var boneWeights(get, set):utils.FloatPointer;

	inline function get_boneWeights():utils.FloatPointer
	{
		return this.boneWeights;
	}

	inline function set_boneWeights(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.boneWeights = value;
	}

	var vaoId(get, set):cpp.UInt32;

	inline function get_vaoId():cpp.UInt32
	{
		return this.vaoId;
	}

	inline function set_vaoId(value:cpp.UInt32):cpp.UInt32
	{
		return this.vaoId = value;
	}

	var vboId(get, set):utils.UnsignedPointer;

	inline function get_vboId():utils.UnsignedPointer
	{
		return this.vboId;
	}

	inline function set_vboId(value:utils.UnsignedPointer):utils.UnsignedPointer
	{
		return this.vboId = value;
	}

	inline function new():Void
	{
		this = RayMesh.alloc();
	}

	@:from
	static public inline function fromNative(value:RayMesh):Mesh
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayMesh>
		return cpp.RawConstPointer.addressOf((this : RayMesh));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Shader')
extern class RayShader
{
	@:native('Shader')
	static function alloc():RayShader;

	var id:cpp.UInt32;
	var locs:utils.IntPointer;
}

extern abstract Shader(cpp.Struct<RayShader>) to cpp.Struct<RayShader>
{
	var id(get, set):cpp.UInt32;

	inline function get_id():cpp.UInt32
	{
		return this.id;
	}

	inline function set_id(value:cpp.UInt32):cpp.UInt32
	{
		return this.id = value;
	}

	var locs(get, set):utils.IntPointer;

	inline function get_locs():utils.IntPointer
	{
		return this.locs;
	}

	inline function set_locs(value:utils.IntPointer):utils.IntPointer
	{
		return this.locs = value;
	}

	inline function new():Void
	{
		this = RayShader.alloc();
	}

	@:from
	static public inline function fromNative(value:RayShader):Shader
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayShader>
		return cpp.RawConstPointer.addressOf((this : RayShader));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('MaterialMap')
extern class RayMaterialMap
{
	@:native('MaterialMap')
	static function alloc():RayMaterialMap;

	var texture:RayTexture;
	var color:RayColor;
	var value:Single;
}

extern abstract MaterialMap(cpp.Struct<RayMaterialMap>) to cpp.Struct<RayMaterialMap>
{
	var texture(get, set):RayTexture;

	inline function get_texture():RayTexture
	{
		return this.texture;
	}

	inline function set_texture(value:RayTexture):RayTexture
	{
		return this.texture = value;
	}

	var color(get, set):RayColor;

	inline function get_color():RayColor
	{
		return this.color;
	}

	inline function set_color(value:RayColor):RayColor
	{
		return this.color = value;
	}

	var value(get, set):Single;

	inline function get_value():Single
	{
		return this.value;
	}

	inline function set_value(value:Single):Single
	{
		return this.value = value;
	}

	inline function new():Void
	{
		this = RayMaterialMap.alloc();
	}

	@:from
	static public inline function fromNative(value:RayMaterialMap):MaterialMap
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayMaterialMap>
		return cpp.RawConstPointer.addressOf((this : RayMaterialMap));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Material')
extern class RayMaterial
{
	@:native('Material')
	static function alloc():RayMaterial;

	var shader:RayShader;
	var maps:cpp.RawPointer<RayMaterialMap>;
	var params:utils.FloatPointer;
}

extern abstract Material(cpp.Struct<RayMaterial>) to cpp.Struct<RayMaterial>
{
	var shader(get, set):RayShader;

	inline function get_shader():RayShader
	{
		return this.shader;
	}

	inline function set_shader(value:RayShader):RayShader
	{
		return this.shader = value;
	}

	var maps(get, set):cpp.RawPointer<RayMaterialMap>;

	inline function get_maps():cpp.RawPointer<RayMaterialMap>
	{
		return this.maps;
	}

	inline function set_maps(value:cpp.RawPointer<RayMaterialMap>):cpp.RawPointer<RayMaterialMap>
	{
		return this.maps = value;
	}

	var params(get, set):utils.FloatPointer;

	inline function get_params():utils.FloatPointer
	{
		return this.params;
	}

	inline function set_params(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.params = value;
	}

	inline function new():Void
	{
		this = RayMaterial.alloc();
	}

	@:from
	static public inline function fromNative(value:RayMaterial):Material
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayMaterial>
		return cpp.RawConstPointer.addressOf((this : RayMaterial));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Transform')
extern class RayTransform
{
	@:native('Transform')
	static function alloc():RayTransform;

	var translation:RayVector3;
	var rotation:RayVector4;
	var scale:RayVector3;
}

extern abstract Transform(cpp.Struct<RayTransform>) to cpp.Struct<RayTransform>
{
	var translation(get, set):RayVector3;

	inline function get_translation():RayVector3
	{
		return this.translation;
	}

	inline function set_translation(value:RayVector3):RayVector3
	{
		return this.translation = value;
	}

	var rotation(get, set):RayVector4;

	inline function get_rotation():RayVector4
	{
		return this.rotation;
	}

	inline function set_rotation(value:RayVector4):RayVector4
	{
		return this.rotation = value;
	}

	var scale(get, set):RayVector3;

	inline function get_scale():RayVector3
	{
		return this.scale;
	}

	inline function set_scale(value:RayVector3):RayVector3
	{
		return this.scale = value;
	}

	inline function new():Void
	{
		this = RayTransform.alloc();
	}

	@:from
	static public inline function fromNative(value:RayTransform):Transform
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayTransform>
		return cpp.RawConstPointer.addressOf((this : RayTransform));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoneInfo')
extern class RayBoneInfo
{
	@:native('BoneInfo')
	static function alloc():RayBoneInfo;

	var name:cpp.CastCharStar;
	var parent:Int;
}

extern abstract BoneInfo(cpp.Struct<RayBoneInfo>) to cpp.Struct<RayBoneInfo>
{
	var name(get, set):cpp.CastCharStar;

	inline function get_name():cpp.CastCharStar
	{
		return this.name;
	}

	inline function set_name(value:cpp.CastCharStar):cpp.CastCharStar
	{
		return this.name = value;
	}

	var parent(get, set):Int;

	inline function get_parent():Int
	{
		return this.parent;
	}

	inline function set_parent(value:Int):Int
	{
		return this.parent = value;
	}

	inline function new():Void
	{
		this = RayBoneInfo.alloc();
	}

	@:from
	static public inline function fromNative(value:RayBoneInfo):BoneInfo
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayBoneInfo>
		return cpp.RawConstPointer.addressOf((this : RayBoneInfo));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Model')
extern class RayModel
{
	@:native('Model')
	static function alloc():RayModel;

	var transform:RayMatrix;

	var meshCount:Int;
	var materialCount:Int;
	var meshes:cpp.RawPointer<RayMesh>;
	var materials:cpp.RawPointer<RayMaterial>;
	var meshMaterial:utils.IntPointer;

	var boneCount:Int;
	var bones:cpp.RawPointer<BoneInfo>;
	var bindPose:cpp.RawPointer<RayTransform>;
}

extern abstract Model(cpp.Struct<RayModel>) to cpp.Struct<RayModel>
{
	var transform(get, set):RayMatrix;

	inline function get_transform():RayMatrix
	{
		return this.transform;
	}

	inline function set_transform(value:RayMatrix):RayMatrix
	{
		return this.transform = value;
	}

	var meshCount(get, set):Int;

	inline function get_meshCount():Int
	{
		return this.meshCount;
	}

	inline function set_meshCount(value:Int):Int
	{
		return this.meshCount = value;
	}

	var materialCount(get, set):Int;

	inline function get_materialCount():Int
	{
		return this.materialCount;
	}

	inline function set_materialCount(value:Int):Int
	{
		return this.materialCount = value;
	}

	var meshes(get, set):cpp.RawPointer<RayMesh>;

	inline function get_meshes():cpp.RawPointer<RayMesh>
	{
		return this.meshes;
	}

	inline function set_meshes(value:cpp.RawPointer<RayMesh>):cpp.RawPointer<RayMesh>
	{
		return this.meshes = value;
	}

	var materials(get, set):cpp.RawPointer<RayMaterial>;

	inline function get_materials():cpp.RawPointer<RayMaterial>
	{
		return this.materials;
	}

	inline function set_materials(value:cpp.RawPointer<RayMaterial>):cpp.RawPointer<RayMaterial>
	{
		return this.materials = value;
	}

	var meshMaterial(get, set):utils.IntPointer;

	inline function get_meshMaterial():utils.IntPointer
	{
		return this.meshMaterial;
	}

	inline function set_meshMaterial(value:utils.IntPointer):utils.IntPointer
	{
		return this.meshMaterial = value;
	}

	var boneCount(get, set):Int;

	inline function get_boneCount():Int
	{
		return this.boneCount;
	}

	inline function set_boneCount(value:Int):Int
	{
		return this.boneCount = value;
	}

	var bones(get, set):cpp.RawPointer<BoneInfo>;

	inline function get_bones():cpp.RawPointer<BoneInfo>
	{
		return this.bones;
	}

	inline function set_bones(value:cpp.RawPointer<BoneInfo>):cpp.RawPointer<BoneInfo>
	{
		return this.bones = value;
	}

	var bindPose(get, set):cpp.RawPointer<RayTransform>;

	inline function get_bindPose():cpp.RawPointer<RayTransform>
	{
		return this.bindPose;
	}

	inline function set_bindPose(value:cpp.RawPointer<RayTransform>):cpp.RawPointer<RayTransform>
	{
		return this.bindPose = value;
	}

	inline function new():Void
	{
		this = RayModel.alloc();
	}

	@:from
	static public inline function fromNative(value:RayModel):Model
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayModel>
		return cpp.RawConstPointer.addressOf((this : RayModel));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('ModelAnimation')
extern class RayModelAnimation
{
	@:native('ModelAnimation')
	static function alloc():RayModelAnimation;

	var boneCount:Int;
	var frameCount:Int;
	var bones:cpp.RawPointer<BoneInfo>;
	var framePoses:cpp.RawPointer<cpp.RawPointer<RayTransform>>;
	var name:cpp.CastCharStar;
}

extern abstract ModelAnimation(cpp.Struct<RayModelAnimation>) to cpp.Struct<RayModelAnimation>
{
	var boneCount(get, set):Int;

	inline function get_boneCount():Int
	{
		return this.boneCount;
	}

	inline function set_boneCount(value:Int):Int
	{
		return this.boneCount = value;
	}

	var frameCount(get, set):Int;

	inline function get_frameCount():Int
	{
		return this.frameCount;
	}

	inline function set_frameCount(value:Int):Int
	{
		return this.frameCount = value;
	}

	var bones(get, set):cpp.RawPointer<BoneInfo>;

	inline function get_bones():cpp.RawPointer<BoneInfo>
	{
		return this.bones;
	}

	inline function set_bones(value:cpp.RawPointer<BoneInfo>):cpp.RawPointer<BoneInfo>
	{
		return this.bones = value;
	}

	var framePoses(get, set):cpp.RawPointer<cpp.RawPointer<RayTransform>>;

	inline function get_framePoses():cpp.RawPointer<cpp.RawPointer<RayTransform>>
	{
		return this.framePoses;
	}

	inline function set_framePoses(value:cpp.RawPointer<cpp.RawPointer<RayTransform>>):cpp.RawPointer<cpp.RawPointer<RayTransform>>
	{
		return this.framePoses = value;
	}

	var name(get, set):cpp.CastCharStar;

	inline function get_name():cpp.CastCharStar
	{
		return this.name;
	}

	inline function set_name(value:cpp.CastCharStar):cpp.CastCharStar
	{
		return this.name = value;
	}

	inline function new():Void
	{
		this = RayModelAnimation.alloc();
	}

	@:from
	static public inline function fromNative(value:RayModelAnimation):ModelAnimation
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayModelAnimation>
		return cpp.RawConstPointer.addressOf((this : RayModelAnimation));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Ray')
extern class RlRay
{
	@:native('Ray')
	static function alloc():RlRay;

	var position:RayVector3;
	var direction:RayVector3;
}

extern abstract Ray(cpp.Struct<RlRay>) to cpp.Struct<RlRay>
{
	var position(get, set):RayVector3;

	inline function get_position():RayVector3
	{
		return this.position;
	}

	inline function set_position(value:RayVector3):RayVector3
	{
		return this.position = value;
	}

	var direction(get, set):RayVector3;

	inline function get_direction():RayVector3
	{
		return this.direction;
	}

	inline function set_direction(value:RayVector3):RayVector3
	{
		return this.direction = value;
	}

	inline function new():Void
	{
		this = RlRay.alloc();
	}

	@:from
	static public inline function fromNative(value:RlRay):Ray
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RlRay>
		return cpp.RawConstPointer.addressOf((this : RlRay));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('RayCollision')
extern class RlRayCollision
{
	@:native('RayCollision')
	static function alloc():RlRayCollision;

	var hit:Bool;
	var distance:Single;
	var point:RayVector3;
	var normal:RayVector3;
}

extern abstract RayCollision(cpp.Struct<RlRayCollision>) to cpp.Struct<RlRayCollision>
{
	var hit(get, set):Bool;

	inline function get_hit():Bool
	{
		return this.hit;
	}

	inline function set_hit(value:Bool):Bool
	{
		return this.hit = value;
	}

	var distance(get, set):Single;

	inline function get_distance():Single
	{
		return this.distance;
	}

	inline function set_distance(value:Single):Single
	{
		return this.distance = value;
	}

	var point(get, set):RayVector3;

	inline function get_point():RayVector3
	{
		return this.point;
	}

	inline function set_point(value:RayVector3):RayVector3
	{
		return this.point = value;
	}

	var normal(get, set):RayVector3;

	inline function get_normal():RayVector3
	{
		return this.normal;
	}

	inline function set_normal(value:RayVector3):RayVector3
	{
		return this.normal = value;
	}

	inline function new():Void
	{
		this = RlRayCollision.alloc();
	}

	@:from
	static public inline function fromNative(value:RlRayCollision):RayCollision
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RlRayCollision>
		return cpp.RawConstPointer.addressOf((this : RlRayCollision));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('BoundingBox')
extern class RayBoundingBox
{
	@:native('BoundingBox')
	static function alloc():RayBoundingBox;

	var min:RayVector3;
	var max:RayVector3;
}

extern abstract BoundingBox(cpp.Struct<RayBoundingBox>) to cpp.Struct<RayBoundingBox>
{
	var min(get, set):RayVector3;

	inline function get_min():RayVector3
	{
		return this.min;
	}

	inline function set_min(value:RayVector3):RayVector3
	{
		return this.min = value;
	}

	var max(get, set):RayVector3;

	inline function get_max():RayVector3
	{
		return this.max;
	}

	inline function set_max(value:RayVector3):RayVector3
	{
		return this.max = value;
	}

	inline function new():Void
	{
		this = RayBoundingBox.alloc();
	}

	@:from
	static public inline function fromNative(value:RayBoundingBox):BoundingBox
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayBoundingBox>
		return cpp.RawConstPointer.addressOf((this : RayBoundingBox));
}

typedef AudioCallback = cpp.Callable<(bufferData:cpp.RawPointer<cpp.Void>, frames:cpp.UInt32) -> Void>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Wave')
extern class RayWave
{
	@:native('Wave')
	static function alloc():RayWave;

	var frameCount:cpp.UInt32;
}

extern abstract Wave(cpp.Struct<RayWave>) to cpp.Struct<RayWave>
{
	var frameCount(get, set):cpp.UInt32;

	inline function get_frameCount():cpp.UInt32
	{
		return this.frameCount;
	}

	inline function set_frameCount(value:cpp.UInt32):cpp.UInt32
	{
		return this.frameCount = value;
	}

	inline function new():Void
	{
		this = RayWave.alloc();
	}

	@:from
	static public inline function fromNative(value:RayWave):Wave
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayWave>
		return cpp.RawConstPointer.addressOf((this : RayWave));
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
extern class RayAudioStream
{
	@:native('AudioStream')
	static function alloc():RayAudioStream;

	var buffer:cpp.RawPointer<RAudioBuffer>;
	var processor:cpp.RawPointer<RAudioProcessor>;
	var sampleRate:cpp.UInt32;
}

extern abstract AudioStream(cpp.Struct<RayAudioStream>) to cpp.Struct<RayAudioStream>
{
	var buffer(get, set):cpp.RawPointer<RAudioBuffer>;

	inline function get_buffer():cpp.RawPointer<RAudioBuffer>
	{
		return this.buffer;
	}

	inline function set_buffer(value:cpp.RawPointer<RAudioBuffer>):cpp.RawPointer<RAudioBuffer>
	{
		return this.buffer = value;
	}

	var processor(get, set):cpp.RawPointer<RAudioProcessor>;

	inline function get_processor():cpp.RawPointer<RAudioProcessor>
	{
		return this.processor;
	}

	inline function set_processor(value:cpp.RawPointer<RAudioProcessor>):cpp.RawPointer<RAudioProcessor>
	{
		return this.processor = value;
	}

	var sampleRate(get, set):cpp.UInt32;

	inline function get_sampleRate():cpp.UInt32
	{
		return this.sampleRate;
	}

	inline function set_sampleRate(value:cpp.UInt32):cpp.UInt32
	{
		return this.sampleRate = value;
	}

	inline function new():Void
	{
		this = RayAudioStream.alloc();
	}

	@:from
	static public inline function fromNative(value:RayAudioStream):AudioStream
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayAudioStream>
		return cpp.RawConstPointer.addressOf((this : RayAudioStream));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Sound')
extern class RaySound
{
	@:native('Sound')
	static function alloc():RaySound;

	var stream:RayAudioStream;
	var frameCount:cpp.UInt32;
}

extern abstract Sound(cpp.Struct<RaySound>) to cpp.Struct<RaySound>
{
	var stream(get, set):RayAudioStream;

	inline function get_stream():RayAudioStream
	{
		return this.stream;
	}

	inline function set_stream(value:RayAudioStream):RayAudioStream
	{
		return this.stream = value;
	}

	var frameCount(get, set):cpp.UInt32;

	inline function get_frameCount():cpp.UInt32
	{
		return this.frameCount;
	}

	inline function set_frameCount(value:cpp.UInt32):cpp.UInt32
	{
		return this.frameCount = value;
	}

	inline function new():Void
	{
		this = RaySound.alloc();
	}

	@:from
	static public inline function fromNative(value:RaySound):Sound
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RaySound>
		return cpp.RawConstPointer.addressOf((this : RaySound));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('Music')
extern class RayMusic
{
	@:native('Music')
	static function alloc():RayMusic;

	var stream:RayAudioStream;
	var frameCount:cpp.UInt32;
	var looping:Bool;
	var ctxType:Int;
	var ctxData:cpp.RawPointer<cpp.Void>;
}

extern abstract Music(cpp.Struct<RayMusic>) to cpp.Struct<RayMusic>
{
	var stream(get, set):RayAudioStream;

	inline function get_stream():RayAudioStream
	{
		return this.stream;
	}

	inline function set_stream(value:RayAudioStream):RayAudioStream
	{
		return this.stream = value;
	}

	var frameCount(get, set):cpp.UInt32;

	inline function get_frameCount():cpp.UInt32
	{
		return this.frameCount;
	}

	inline function set_frameCount(value:cpp.UInt32):cpp.UInt32
	{
		return this.frameCount = value;
	}

	var looping(get, set):Bool;

	inline function get_looping():Bool
	{
		return this.looping;
	}

	inline function set_looping(value:Bool):Bool
	{
		return this.looping = value;
	}

	var ctxType(get, set):Int;

	inline function get_ctxType():Int
	{
		return this.ctxType;
	}

	inline function set_ctxType(value:Int):Int
	{
		return this.ctxType = value;
	}

	var ctxData(get, set):cpp.RawPointer<cpp.Void>;

	inline function get_ctxData():cpp.RawPointer<cpp.Void>
	{
		return this.ctxData;
	}

	inline function set_ctxData(value:cpp.RawPointer<cpp.Void>):cpp.RawPointer<cpp.Void>
	{
		return this.ctxData = value;
	}

	inline function new():Void
	{
		this = RayMusic.alloc();
	}

	@:from
	static public inline function fromNative(value:RayMusic):Music
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayMusic>
		return cpp.RawConstPointer.addressOf((this : RayMusic));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('VrDeviceInfo')
extern class RayVrDeviceInfo
{
	@:native('VrDeviceInfo')
	static function alloc():RayVrDeviceInfo;

	var hResolution:Int;
	var vResolution:Int;
	var hScreenSize:Single;
	var vScreenSize:Single;
	var eyeToScreenDistance:Single;
	var lensSeparationDistance:Single;
	var interpupillaryDistance:Single;
	var lensDistortionValues:utils.FloatPointer;
	var chromaAbCorrection:utils.FloatPointer;
}

extern abstract VrDeviceInfo(cpp.Struct<RayVrDeviceInfo>) to cpp.Struct<RayVrDeviceInfo>
{
	var hResolution(get, set):Int;

	inline function get_hResolution():Int
	{
		return this.hResolution;
	}

	inline function set_hResolution(value:Int):Int
	{
		return this.hResolution = value;
	}

	var vResolution(get, set):Int;

	inline function get_vResolution():Int
	{
		return this.vResolution;
	}

	inline function set_vResolution(value:Int):Int
	{
		return this.vResolution = value;
	}

	var hScreenSize(get, set):Single;

	inline function get_hScreenSize():Single
	{
		return this.hScreenSize;
	}

	inline function set_hScreenSize(value:Single):Single
	{
		return this.hScreenSize = value;
	}

	var vScreenSize(get, set):Single;

	inline function get_vScreenSize():Single
	{
		return this.vScreenSize;
	}

	inline function set_vScreenSize(value:Single):Single
	{
		return this.vScreenSize = value;
	}

	var eyeToScreenDistance(get, set):Single;

	inline function get_eyeToScreenDistance():Single
	{
		return this.eyeToScreenDistance;
	}

	inline function set_eyeToScreenDistance(value:Single):Single
	{
		return this.eyeToScreenDistance = value;
	}

	var lensSeparationDistance(get, set):Single;

	inline function get_lensSeparationDistance():Single
	{
		return this.lensSeparationDistance;
	}

	inline function set_lensSeparationDistance(value:Single):Single
	{
		return this.lensSeparationDistance = value;
	}

	var interpupillaryDistance(get, set):Single;

	inline function get_interpupillaryDistance():Single
	{
		return this.interpupillaryDistance;
	}

	inline function set_interpupillaryDistance(value:Single):Single
	{
		return this.interpupillaryDistance = value;
	}

	var lensDistortionValues(get, set):utils.FloatPointer;

	inline function get_lensDistortionValues():utils.FloatPointer
	{
		return this.lensDistortionValues;
	}

	inline function set_lensDistortionValues(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.lensDistortionValues = value;
	}

	var chromaAbCorrection(get, set):utils.FloatPointer;

	inline function get_chromaAbCorrection():utils.FloatPointer
	{
		return this.chromaAbCorrection;
	}

	inline function set_chromaAbCorrection(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.chromaAbCorrection = value;
	}

	inline function new():Void
	{
		this = RayVrDeviceInfo.alloc();
	}

	@:from
	static public inline function fromNative(value:RayVrDeviceInfo):VrDeviceInfo
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayVrDeviceInfo>
		return cpp.RawConstPointer.addressOf((this : RayVrDeviceInfo));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('VrStereoConfig')
extern class RayVrStereoConfig
{
	@:native('VrStereoConfig')
	static function alloc():RayVrStereoConfig;

	var projection:cpp.RawPointer<RayMatrix>;
	var rightLensCenter:utils.FloatPointer;
	var leftScreenCenter:utils.FloatPointer;
	var rightScreenCenter:utils.FloatPointer;
	var scale:utils.FloatPointer;
	var scaleIn:utils.FloatPointer;
}

extern abstract VrStereoConfig(cpp.Struct<RayVrStereoConfig>) to cpp.Struct<RayVrStereoConfig>
{
	var projection(get, set):cpp.RawPointer<RayMatrix>;

	inline function get_projection():cpp.RawPointer<RayMatrix>
	{
		return this.projection;
	}

	inline function set_projection(value:cpp.RawPointer<RayMatrix>):cpp.RawPointer<RayMatrix>
	{
		return this.projection = value;
	}

	var rightLensCenter(get, set):utils.FloatPointer;

	inline function get_rightLensCenter():utils.FloatPointer
	{
		return this.rightLensCenter;
	}

	inline function set_rightLensCenter(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.rightLensCenter = value;
	}

	var leftScreenCenter(get, set):utils.FloatPointer;

	inline function get_leftScreenCenter():utils.FloatPointer
	{
		return this.leftScreenCenter;
	}

	inline function set_leftScreenCenter(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.leftScreenCenter = value;
	}

	var rightScreenCenter(get, set):utils.FloatPointer;

	inline function get_rightScreenCenter():utils.FloatPointer
	{
		return this.rightScreenCenter;
	}

	inline function set_rightScreenCenter(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.rightScreenCenter = value;
	}

	var scale(get, set):utils.FloatPointer;

	inline function get_scale():utils.FloatPointer
	{
		return this.scale;
	}

	inline function set_scale(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.scale = value;
	}

	var scaleIn(get, set):utils.FloatPointer;

	inline function get_scaleIn():utils.FloatPointer
	{
		return this.scaleIn;
	}

	inline function set_scaleIn(value:utils.FloatPointer):utils.FloatPointer
	{
		return this.scaleIn = value;
	}

	inline function new():Void
	{
		this = RayVrStereoConfig.alloc();
	}

	@:from
	static public inline function fromNative(value:RayVrStereoConfig):VrStereoConfig
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayVrStereoConfig>
		return cpp.RawConstPointer.addressOf((this : RayVrStereoConfig));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('FilePathList')
extern class RayFilePathList
{
	@:native('FilePathList')
	static function alloc():RayFilePathList;

	var capacity:cpp.UInt32;
	var count:cpp.UInt32;
	var paths:cpp.RawPointer<cpp.CastCharStar>;
}

extern abstract FilePathList(cpp.Struct<RayFilePathList>) to cpp.Struct<RayFilePathList>
{
	var capacity(get, set):cpp.UInt32;

	inline function get_capacity():cpp.UInt32
	{
		return this.capacity;
	}

	inline function set_capacity(value:cpp.UInt32):cpp.UInt32
	{
		return this.capacity = value;
	}

	var count(get, set):cpp.UInt32;

	inline function get_count():cpp.UInt32
	{
		return this.count;
	}

	inline function set_count(value:cpp.UInt32):cpp.UInt32
	{
		return this.count = value;
	}

	var paths(get, set):cpp.RawPointer<cpp.CastCharStar>;

	inline function get_paths():cpp.RawPointer<cpp.CastCharStar>
	{
		return this.paths;
	}

	inline function set_paths(value:cpp.RawPointer<cpp.CastCharStar>):cpp.RawPointer<cpp.CastCharStar>
	{
		return this.paths = value;
	}

	inline function new():Void
	{
		this = RayFilePathList.alloc();
	}

	@:from
	static public inline function fromNative(value:RayFilePathList):FilePathList
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayFilePathList>
		return cpp.RawConstPointer.addressOf((this : RayFilePathList));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEvent')
extern class RayAutomationEvent
{
	@:native('AutomationEvent')
	static function alloc():RayAutomationEvent;

	var frame:cpp.UInt32;
	var type:cpp.UInt32;
}

extern abstract AutomationEvent(cpp.Struct<RayAutomationEvent>) to cpp.Struct<RayAutomationEvent>
{
	var frame(get, set):cpp.UInt32;

	inline function get_frame():cpp.UInt32
	{
		return this.frame;
	}

	inline function set_frame(value:cpp.UInt32):cpp.UInt32
	{
		return this.frame = value;
	}

	var type(get, set):cpp.UInt32;

	inline function get_type():cpp.UInt32
	{
		return this.type;
	}

	inline function set_type(value:cpp.UInt32):cpp.UInt32
	{
		return this.type = value;
	}

	inline function new():Void
	{
		this = RayAutomationEvent.alloc();
	}

	@:from
	static public inline function fromNative(value:RayAutomationEvent):AutomationEvent
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayAutomationEvent>
		return cpp.RawConstPointer.addressOf((this : RayAutomationEvent));
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
@:structAccess
@:native('AutomationEventList')
extern class RayAutomationEventList
{
	@:native('AutomationEventList')
	static function alloc():RayAutomationEventList;

	var capacity:cpp.UInt32;
	var events:cpp.RawPointer<RayAutomationEvent>;
}

extern abstract AutomationEventList(cpp.Struct<RayAutomationEventList>) to cpp.Struct<RayAutomationEventList>
{
	var capacity(get, set):cpp.UInt32;

	inline function get_capacity():cpp.UInt32
	{
		return this.capacity;
	}

	inline function set_capacity(value:cpp.UInt32):cpp.UInt32
	{
		return this.capacity = value;
	}

	var events(get, set):cpp.RawPointer<RayAutomationEvent>;

	inline function get_events():cpp.RawPointer<RayAutomationEvent>
	{
		return this.events;
	}

	inline function set_events(value:cpp.RawPointer<RayAutomationEvent>):cpp.RawPointer<RayAutomationEvent>
	{
		return this.events = value;
	}

	inline function new():Void
	{
		this = RayAutomationEventList.alloc();
	}

	@:from
	static public inline function fromNative(value:RayAutomationEventList):AutomationEventList
		return cast value;

	@:to extern public inline function toPointer():cpp.RawConstPointer<RayAutomationEventList>
		return cpp.RawConstPointer.addressOf((this : RayAutomationEventList));
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
	static public inline function fromInt(i:Int):ConfigFlags
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):TraceLogLevel
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):KeyboardKey
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):MouseButton
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):MouseCursor
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):GamepadButton
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):GamepadAxis
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):MaterialMapIndex
		return cast i;

	@:to extern public inline function toInt():Int
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

	@:from
	static public inline function fromInt(i:Int):ShaderLocationIndex
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):ShaderUniformDataType
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):ShaderAttributeDataType
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):PixelFormat
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):TextureFilter
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):TextureWrap
		return cast i;

	@:to extern public inline function toInt():Int
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
	@:native('CUBEMAP_LAYOUT_PANORAMA') var CUBEMAP_LAYOUT_PANORAMA;

	@:from
	static public inline function fromInt(i:Int):CubemapLayout
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):FontType
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):BlendMode
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):Gesture
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):CameraMode
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):CameraProjection
		return cast i;

	@:to extern public inline function toInt():Int
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
	static public inline function fromInt(i:Int):NPatchLayout
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:native('NPatchLayout')
private extern class NPatchLayoutImpl {}

typedef TraceLogCallback = cpp.Callable<(logLevel:Int, text:cpp.ConstCharStar, args:cpp.VarList) -> Void>;
typedef LoadFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, dataSize:utils.IntPointer) -> cpp.RawPointer<cpp.UInt8>>;
typedef SaveFileDataCallback = cpp.Callable<(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int) -> Bool>;
typedef LoadFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar) -> cpp.CastCharStar>;
typedef SaveFileTextCallback = cpp.Callable<(fileName:cpp.ConstCharStar, text:cpp.CastCharStar) -> Bool>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raylib.h')
@:unreflective
extern class Raylib
{
	@:native('RAYLIB_VERSION_MAJOR') static var VERSION_MAJOR:Int;
	@:native('RAYLIB_VERSION_MINOR') static var VERSION_MINOR:Int;
	@:native('RAYLIB_VERSION_PATCH') static var VERSION_PATCH:Int;
	@:native('::String(RAYLIB_VERSION)') static var VERSION:String;

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

	@:native('ShowCursor') static function showCursor():Void;
	@:native('HideCursor') static function hideCursor():Void;
	@:native('IsCursorHidden') static function isCursorHidden():Bool;
	@:native('EnableCursor') static function enableCursor():Void;
	@:native('DisableCursor') static function disableCursor():Void;
	@:native('IsCursorOnScreen') static function isCursorOnScreen():Bool;

	@:native('ClearBackground') static function clearBackground(color:RayColor):Void;
	@:native('BeginDrawing') static function beginDrawing():Void;
	@:native('EndDrawing') static function endDrawing():Void;
	@:native('BeginMode2D') static function beginMode2D(camera:RayCamera2D):Void;
	@:native('EndMode2D') static function endMode2D():Void;
	@:native('BeginMode3D') static function beginMode3D(camera:RayCamera3D):Void;
	@:native('EndMode3D') static function endMode3D():Void;
	@:native('BeginTextureMode') static function beginTextureMode(target:RayRenderTexture):Void;
	@:native('EndTextureMode') static function endTextureMode():Void;
	@:native('BeginShaderMode') static function beginShaderMode(shader:RayShader):Void;
	@:native('EndShaderMode') static function endShaderMode():Void;
	@:native('BeginBlendMode') static function beginBlendMode(mode:Int):Void;
	@:native('EndBlendMode') static function endBlendMode():Void;
	@:native('BeginScissorMode') static function beginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
	@:native('EndScissorMode') static function endScissorMode():Void;
	@:native('BeginVrStereoMode') static function beginVrStereoMode(config:RayVrStereoConfig):Void;
	@:native('EndVrStereoMode') static function endVrStereoMode():Void;

	@:native('LoadVrStereoConfig') static function loadVrStereoConfig(device:RayVrDeviceInfo):RayVrStereoConfig;
	@:native('UnloadVrStereoConfig') static function unloadVrStereoConfig(config:RayVrStereoConfig):Void;

	@:native('LoadShader') static function loadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):RayShader;
	@:native('LoadShaderFromMemory') static function loadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):RayShader;
	@:native('IsShaderReady') static function isShaderReady(shader:RayShader):Bool;
	@:native('GetShaderLocation') static function getShaderLocation(shader:RayShader, uniformName:cpp.ConstCharStar):Int;
	@:native('GetShaderLocationAttrib') static function getShaderLocationAttrib(shader:RayShader, attribName:cpp.ConstCharStar):Int;
	@:native('SetShaderValue') static function setShaderValue(shader:RayShader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void;
	@:native('SetShaderValueV') static function setShaderValueV(shader:RayShader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int,
		count:Int):Void;
	@:native('SetShaderValueRayMatrix') static function setShaderValueRayMatrix(shader:RayShader, locIndex:Int, mat:RayMatrix):Void;
	@:native('SetShaderValueTexture') static function setShaderValueTexture(shader:RayShader, locIndex:Int, texture:RayTexture):Void;
	@:native('UnloadShader') static function unloadShader(shader:RayShader):Void;

	@:native('GetMouseRay') static function getMouseRay(mousePosition:RayVector2, camera:RayCamera3D):RlRay;
	@:native('GetScreenToWorldRay') static function getScreenToWorldRay(mousePosition:RayVector2, camera:RayCamera3D):RlRay;
	@:native('GetScreenToWorldRayEx') static function getScreenToWorldRayEx(mousePosition:RayVector2, camera:RayCamera3D, width:Int, height:Int):RlRay;
	@:native('GetWorldToScreen') static function getWorldToScreen(position:RayVector3, camera:RayCamera3D):RayVector2;
	@:native('GetWorldToScreenEx') static function getWorldToScreenEx(position:RayVector3, camera:RayCamera3D, width:Int, height:Int):RayVector2;
	@:native('GetWorldToScreen2D') static function getWorldToScreen2D(position:RayVector2, camera:RayCamera2D):RayVector2;
	@:native('GetScreenToWorld2D') static function getScreenToWorld2D(position:RayVector2, camera:RayCamera2D):RayVector2;
	@:native('GetCameraRayMatrix') static function getCameraRayMatrix(camera:RayCamera3D):RayMatrix;
	@:native('GetCameraRayMatrix2D') static function getCameraRayMatrix2D(camera:RayCamera2D):RayMatrix;

	@:native('SetTargetFPS') static function setTargetFPS(fps:Int):Void;
	@:native('GetFrameTime') static function getFrameTime():Single;
	@:native('GetTime') static function getTime():Float;
	@:native('GetFPS') static function getFPS():Int;

	@:native('SwapScreenBuffer') static function swapScreenBuffer():Void;
	@:native('PollInputEvents') static function pollInputEvents():Void;
	@:native('WaitTime') static function WaitTime(seconds:Float):Void;

	@:native('SetRandomSeed') static function setRandomSeed(seed:cpp.UInt32):Void;
	@:native('GetRandomValue') static function getRandomValue(min:Int, max:Int):Int;
	@:native('LoadRandomSequence') static function loadRandomSequence(count:cpp.UInt32, min:Int, max:Int):utils.IntPointer;
	@:native('UnloadRandomSequence') static function unloadRandomSequence(sequence:utils.IntPointer):Void;

	@:native('TakeScreenshot') static function takeScreenshot(fileName:cpp.ConstCharStar):Void;
	@:native('SetConfigFlags') static function setConfigFlags(flags:cpp.UInt32):Void;
	@:native('OpenURL') static function openURL(url:cpp.ConstCharStar):Void;
	@:native('TraceLog') static function traceLog(logLevel:Int, text:cpp.ConstCharStar, params:cpp.Rest<cpp.VarArg>):Void;
	@:native('SetTraceLogLevel') static function setTraceLogLevel(logLevel:Int):Void;
	@:native('MemAlloc') static function memAlloc(size:cpp.UInt32):cpp.RawPointer<cpp.Void>;
	@:native('MemRealloc') static function memRealloc(ptr:cpp.RawPointer<cpp.Void>, size:cpp.UInt32):cpp.RawPointer<cpp.Void>;
	@:native('MemFree') static function memFree(ptr:cpp.RawPointer<cpp.Void>):Void;

	@:native('SetTraceLogCallback') static function setTraceLogCallback(callback:TraceLogCallback):Void;
	@:native('SetLoadFileDataCallback') static function setLoadFileDataCallback(callback:LoadFileDataCallback):Void;
	@:native('SetSaveFileDataCallback') static function setSaveFileDataCallback(callback:SaveFileDataCallback):Void;
	@:native('SetLoadFileTextCallback') static function setLoadFileTextCallback(callback:LoadFileTextCallback):Void;
	@:native('SetSaveFileTextCallback') static function setSaveFileTextCallback(callback:SaveFileTextCallback):Void;

	@:native('LoadFileData') static function loadFileData(fileName:cpp.ConstCharStar, dataSize:utils.IntPointer):cpp.RawPointer<cpp.UInt8>;
	@:native('UnloadFileData') static function unloadFileData(data:cpp.RawPointer<cpp.UInt8>):Void;
	@:native('SaveFileData') static function saveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, dataSize:Int):Bool;
	@:native('ExportDataAsCode') static function exportDataAsCode(data:cpp.RawPointer<cpp.UInt8>, dataSize:Int, fileName:cpp.ConstCharStar):Bool;
	@:native('LoadFileText') static function loadFileText(fileName:cpp.ConstCharStar):cpp.CastCharStar;
	@:native('UnloadFileText') static function unloadFileText(text:cpp.CastCharStar):Void;
	@:native('SaveFileText') static function saveFileText(fileName:cpp.ConstCharStar, text:cpp.CastCharStar):Bool;

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
	@:native('LoadDirectoryFiles') static function loadDirectoryFiles(dirPath:cpp.ConstCharStar):RayFilePathList;
	@:native('LoadDirectoryFilesEx') static function loadDirectoryFilesEx(basePath:cpp.ConstCharStar, filter:cpp.ConstCharStar,
		scanSubdirs:Bool):RayFilePathList;
	@:native('UnloadDirectoryFiles') static function unloadDirectoryFiles(files:RayFilePathList):Void;
	@:native('IsFileDropped') static function isFileDropped():Bool;
	@:native('LoadDroppedFiles') static function loadDroppedFiles():RayFilePathList;
	@:native('UnloadDroppedFiles') static function unloadDroppedFiles(files:RayFilePathList):Void;
	@:native('GetFileModTime') static function getFileModTime(fileName:cpp.ConstCharStar):cpp.Long;

	@:native('CompressData') static function compressData(data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int,
		compDataSize:utils.IntPointer):cpp.RawPointer<cpp.UInt8>;
	@:native('DecompressData') static function decompressData(compData:cpp.RawConstPointer<cpp.UInt8>, compDataSize:Int,
		dataSize:utils.IntPointer):cpp.RawPointer<cpp.UInt8>;
	@:native('EncodeDataBase64') static function encodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int,
		outputSize:utils.IntPointer):cpp.CastCharStar;
	@:native('DecodeDataBase64') static function decodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>,
		outputSize:utils.IntPointer):cpp.RawPointer<cpp.UInt8>;

	@:native('LoadAutomationEventList') static function loadAutomationEventList(fileName:cpp.ConstCharStar):RayAutomationEventList;
	@:native('UnloadAutomationEventList') static function unloadAutomationEventList(list:RayAutomationEventList):Void;
	@:native('ExportAutomationEventList') static function exportAutomationEventList(list:RayAutomationEventList, fileName:cpp.ConstCharStar):Bool;
	@:native('SetAutomationEventList') static function setAutomationEventList(list:cpp.RawPointer<AutomationEventList>):Void;
	@:native('SetAutomationEventBaseFrame') static function setAutomationEventBaseFrame(frame:Int):Void;
	@:native('StartAutomationEventRecording') static function startAutomationEventRecording():Void;
	@:native('StopAutomationEventRecording') static function stopAutomationEventRecording():Void;
	@:native('PlayAutomationEvent') static function playAutomationEvent(event:RayAutomationEvent):Void;

	@:native('IsKeyPressed') static function isKeyPressed(key:Int):Bool;
	@:native('IsKeyPressedRepeat') static function isKeyPressedRepeat(key:Int):Bool;
	@:native('IsKeyDown') static function isKeyDown(key:Int):Bool;
	@:native('IsKeyReleased') static function isKeyReleased(key:Int):Bool;
	@:native('IsKeyUp') static function isKeyUp(key:Int):Bool;
	@:native('GetKeyPressed') static function getKeyPressed():Int;
	@:native('GetCharPressed') static function getCharPressed():Int;
	@:native('SetExitKey') static function setExitKey(key:Int):Void;

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

	@:native('GetTouchX') static function getTouchX():Int;
	@:native('GetTouchY') static function getTouchY():Int;
	@:native('GetTouchPosition') static function getTouchPosition(index:Int):RayVector2;
	@:native('GetTouchPointId') static function getTouchPointId(index:Int):Int;
	@:native('GetTouchPointCount') static function getTouchPointCount():Int;

	@:native('SetGesturesEnabled') static function setGesturesEnabled(flags:cpp.UInt32):Void;
	@:native('IsGestureDetected') static function isGestureDetected(gesture:cpp.UInt32):Bool;
	@:native('GetGestureDetected') static function getGestureDetected():Int;
	@:native('GetGestureHoldDuration') static function getGestureHoldDuration():Single;
	@:native('GetGestureDragVector') static function getGestureDragVector():RayVector2;
	@:native('GetGestureDragAngle') static function getGestureDragAngle():Single;
	@:native('GetGesturePinchVector') static function getGesturePinchVector():RayVector2;
	@:native('GetGesturePinchAngle') static function getGesturePinchAngle():Single;

	@:native('UpdateCamera') static function updateCamera(camera:cpp.RawPointer<RayCamera3D>, mode:Int):Void;
	@:native('UpdateCameraPro') static function updateCameraPro(camera:cpp.RawPointer<RayCamera3D>, movement:RayVector3, rotation:RayVector3,
		zoom:Single):Void;

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
	@:native('DrawCircleSector') static function drawCircleSector(center:RayVector2, radius:Single, startAngle:Single, endAngle:Single, segments:Int,
		color:RayColor):Void;
	@:native('DrawCircleSectorLines') static function drawCircleSectorLines(center:RayVector2, radius:Single, startAngle:Single, endAngle:Single,
		segments:Int, color:RayColor):Void;
	@:native('DrawCircleGradient') static function drawCircleGradient(centerX:Int, centerY:Int, radius:Single, color1:RayColor, color2:RayColor):Void;
	@:native('DrawCircleV') static function drawCircleV(center:RayVector2, radius:Single, color:RayColor):Void;
	@:native('DrawCircleLines') static function drawCircleLines(centerX:Int, centerY:Int, radius:Single, color:RayColor):Void;
	@:native('DrawCircleLinesV') static function drawCircleLinesV(center:RayVector2, radius:Single, color:RayColor):Void;
	@:native('DrawEllipse') static function drawEllipse(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:RayColor):Void;
	@:native('DrawEllipseLines') static function drawEllipseLines(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:RayColor):Void;
	@:native('DrawRing') static function drawRing(center:RayVector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int,
		color:RayColor):Void;
	@:native('DrawRingLines') static function drawRingLines(center:RayVector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single,
		segments:Int, color:RayColor):Void;
	@:native('DrawRectangle') static function drawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;
	@:native('DrawRectangleV') static function drawRectangleV(position:RayVector2, size:RayVector2, color:RayColor):Void;
	@:native('DrawRectangleRec') static function drawRectangleRec(rec:RayRectangle, color:RayColor):Void;
	@:native('DrawRectanglePro') static function drawRectanglePro(rec:RayRectangle, origin:RayVector2, rotation:Single, color:RayColor):Void;
	@:native('DrawRectangleGradientV') static function drawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor,
		color2:RayColor):Void;
	@:native('DrawRectangleGradientH') static function drawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor,
		color2:RayColor):Void;
	@:native('DrawRectangleGradientEx') static function drawRectangleGradientEx(rec:RayRectangle, col1:RayColor, col2:RayColor, col3:RayColor,
		col4:RayColor):Void;
	@:native('DrawRectangleLines') static function drawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;
	@:native('DrawRectangleLinesEx') static function drawRectangleLinesEx(rec:RayRectangle, lineThick:Single, color:RayColor):Void;
	@:native('DrawRectangleRounded') static function drawRectangleRounded(rec:RayRectangle, roundness:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRectangleRoundedLines') static function drawRectangleRoundedLines(rec:RayRectangle, roundness:Single, segments:Int, color:RayColor):Void;
	@:native('DrawRectangleRoundedLinesEx') static function drawRectangleRoundedLinesEx(rec:RayRectangle, roundness:Single, segments:Int, lineThick:Single,
		color:RayColor):Void;
	@:native('DrawTriangle') static function drawTriangle(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;
	@:native('DrawTriangleLines') static function drawTriangleLines(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;
	@:native('DrawTriangleFan') static function drawTriangleFan(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;
	@:native('DrawTriangleStrip') static function drawTriangleStrip(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;
	@:native('DrawPoly') static function drawPoly(center:RayVector2, sides:Int, radius:Single, rotation:Single, color:RayColor):Void;
	@:native('DrawPolyLines') static function drawPolyLines(center:RayVector2, sides:Int, radius:Single, rotation:Single, color:RayColor):Void;
	@:native('DrawPolyLinesEx') static function drawPolyLinesEx(center:RayVector2, sides:Int, radius:Single, rotation:Single, lineThick:Single,
		color:RayColor):Void;

	@:native('DrawSplineLinear') static function drawSplineLinear(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineBasis') static function drawSplineBasis(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single, color:RayColor):Void;
	@:native('DrawSplineCatmullRom') static function drawSplineCatmullRom(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single,
		color:RayColor):Void;
	@:native('DrawSplineBezierQuadratic') static function drawSplineBezierQuadratic(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single,
		color:RayColor):Void;
	@:native('DrawSplineBezierCubic') static function drawSplineBezierCubic(points:cpp.RawPointer<RayVector2>, pointCount:Int, thick:Single,
		color:RayColor):Void;
	@:native('DrawSplineSegmentLinear') static function drawSplineSegmentLinear(p1:RayVector2, p2:RayVector2, thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentBasis') static function drawSplineSegmentBasis(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, thick:Single,
		color:RayColor):Void;
	@:native('DrawSplineSegmentCatmullRom') static function drawSplineSegmentCatmullRom(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2,
		thick:Single, color:RayColor):Void;
	@:native('DrawSplineSegmentBezierQuadratic') static function drawSplineSegmentBezierQuadratic(p1:RayVector2, c2:RayVector2, p3:RayVector2, thick:Single,
		color:RayColor):Void;
	@:native('DrawSplineSegmentBezierCubic') static function drawSplineSegmentBezierCubic(p1:RayVector2, c2:RayVector2, c3:RayVector2, p4:RayVector2,
		thick:Single, color:RayColor):Void;

	@:native('GetSplinePointLinear') static function getSplinePointLinear(startPos:RayVector2, endPos:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointBasis') static function getSplinePointBasis(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointCatmullRom') static function getSplinePointCatmullRom(p1:RayVector2, p2:RayVector2, p3:RayVector2, p4:RayVector2,
		t:Single):RayVector2;
	@:native('GetSplinePointBezierQuad') static function getSplinePointBezierQuad(p1:RayVector2, c2:RayVector2, p3:RayVector2, t:Single):RayVector2;
	@:native('GetSplinePointBezierCubic') static function getSplinePointBezierCubic(p1:RayVector2, c2:RayVector2, c3:RayVector2, p4:RayVector2,
		t:Single):RayVector2;

	@:native('CheckCollisionRecs') static function checkCollisionRecs(rec1:RayRectangle, rec2:RayRectangle):Bool;
	@:native('CheckCollisionCircles') static function checkCollisionCircles(center1:RayVector2, radius1:Single, center2:RayVector2, radius2:Single):Bool;
	@:native('CheckCollisionCircleRec') static function checkCollisionCircleRec(center:RayVector2, radius:Single, rec:RayRectangle):Bool;
	@:native('CheckCollisionPointRec') static function checkCollisionPointRec(point:RayVector2, rec:RayRectangle):Bool;
	@:native('CheckCollisionPointCircle') static function checkCollisionPointCircle(point:RayVector2, center:RayVector2, radius:Single):Bool;
	@:native('CheckCollisionPointTriangle') static function checkCollisionPointTriangle(point:RayVector2, p1:RayVector2, p2:RayVector2, p3:RayVector2):Bool;
	@:native('CheckCollisionPointPoly') static function checkCollisionPointPoly(point:RayVector2, points:cpp.RawPointer<RayVector2>, pointCount:Int):Bool;
	@:native('CheckCollisionLines') static function checkCollisionLines(startPos1:RayVector2, endPos1:RayVector2, startPos2:RayVector2, endPos2:RayVector2,
		collisionPoint:cpp.RawPointer<RayVector2>):Bool;
	@:native('CheckCollisionPointLine') static function checkCollisionPointLine(point:RayVector2, p1:RayVector2, p2:RayVector2, threshold:Int):Bool;
	@:native('GetCollisionRec') static function getCollisionRec(rec1:RayRectangle, rec2:RayRectangle):RayRectangle;

	@:native('LoadImage') static function loadImage(fileName:cpp.ConstCharStar):RayImage;
	@:native('LoadImageRaw') static function loadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):RayImage;
	@:native('LoadImageSvg') static function loadImageSvg(fileNameOrString:cpp.ConstCharStar, width:Int, height:Int):RayImage;
	@:native('LoadImageAnim') static function loadImageAnim(fileName:cpp.ConstCharStar, frames:utils.IntPointer):RayImage;
	@:native('LoadImageAnimFromMemory') static function loadImageAnimFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>,
		dataSize:Int, frames:utils.IntPointer):RayImage;
	@:native('LoadImageFromMemory') static function loadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>,
		dataSize:Int):RayImage;
	@:native('LoadImageFromTexture') static function loadImageFromTexture(texture:RayTexture):RayImage;
	@:native('LoadImageFromScreen') static function loadImageFromScreen():RayImage;
	@:native('IsImageReady') static function isImageReady(image:RayImage):Bool;
	@:native('UnloadImage') static function unloadImage(image:RayImage):Void;
	@:native('ExportImage') static function exportImage(image:RayImage, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportImageToMemory') static function exportImageToMemory(image:RayImage, fileType:cpp.ConstCharStar,
		fileSize:utils.IntPointer):cpp.RawPointer<cpp.UInt8>;
	@:native('ExportImageAsCode') static function exportImageAsCode(image:RayImage, fileName:cpp.ConstCharStar):Bool;

	@:native('GenImageColor') static function genImageColor(width:Int, height:Int, color:RayColor):RayImage;
	@:native('GenImageGradientLinear') static function genImageGradientLinear(width:Int, height:Int, direction:Int, start:RayColor, end:RayColor):RayImage;
	@:native('GenImageGradientRadial') static function genImageGradientRadial(width:Int, height:Int, density:Single, inner:RayColor, outer:RayColor):RayImage;
	@:native('GenImageGradientSquare') static function genImageGradientSquare(width:Int, height:Int, density:Single, inner:RayColor, outer:RayColor):RayImage;
	@:native('GenImageChecked') static function genImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:RayColor, col2:RayColor):RayImage;
	@:native('GenImageWhiteNoise') static function genImageWhiteNoise(width:Int, height:Int, factor:Single):RayImage;
	@:native('GenImagePerlinNoise') static function genImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Single):RayImage;
	@:native('GenImageCellular') static function genImageCellular(width:Int, height:Int, tileSize:Int):RayImage;
	@:native('GenImageText') static function genImageText(width:Int, height:Int, text:cpp.ConstCharStar):RayImage;

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
	@:native('ImageKernelConvolution') static function imageKernelConvolution(image:cpp.RawPointer<RayImage>, kernel:utils.FloatPointer,
		kernelSize:Int):Void;
	@:native('ImageResize') static function imageResize(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;
	@:native('ImageResizeNN') static function imageResizeNN(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;
	@:native('ImageResizeCanvas') static function imageResizeCanvas(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int,
		fill:RayColor):Void;
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
	@:native('LoadImagePalette') static function loadImagePalette(image:RayImage, maxPaletteSize:Int,
		colorCount:utils.IntPointer):cpp.RawPointer<RayColor>;
	@:native('UnloadImageRayColors') static function unloadImageRayColors(colors:cpp.RawPointer<RayColor>):Void;
	@:native('UnloadImagePalette') static function unloadImagePalette(colors:cpp.RawPointer<RayColor>):Void;
	@:native('GetImageAlphaBorder') static function getImageAlphaBorder(image:RayImage, threshold:Single):RayRectangle;
	@:native('GetImageColor') static function getImageColor(image:RayImage, x:Int, y:Int):RayColor;

	@:native('ImageClearBackground') static function imageClearBackground(dst:cpp.RawPointer<RayImage>, color:RayColor):Void;
	@:native('ImageDrawPixel') static function imageDrawPixel(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, color:RayColor):Void;
	@:native('ImageDrawPixelV') static function imageDrawPixelV(dst:cpp.RawPointer<RayImage>, position:RayVector2, color:RayColor):Void;
	@:native('ImageDrawLine') static function imageDrawLine(dst:cpp.RawPointer<RayImage>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int,
		color:RayColor):Void;
	@:native('ImageDrawLineV') static function imageDrawLineV(dst:cpp.RawPointer<RayImage>, start:RayVector2, end:RayVector2, color:RayColor):Void;
	@:native('ImageDrawCircle') static function imageDrawCircle(dst:cpp.RawPointer<RayImage>, centerX:Int, centerY:Int, radius:Int, color:RayColor):Void;
	@:native('ImageDrawCircleV') static function imageDrawCircleV(dst:cpp.RawPointer<RayImage>, center:RayVector2, radius:Int, color:RayColor):Void;
	@:native('ImageDrawCircleLines') static function imageDrawCircleLines(dst:cpp.RawPointer<RayImage>, centerX:Int, centerY:Int, radius:Int,
		color:RayColor):Void;
	@:native('ImageDrawCircleLinesV') static function imageDrawCircleLinesV(dst:cpp.RawPointer<RayImage>, center:RayVector2, radius:Int, color:RayColor):Void;
	@:native('ImageDrawRectangle') static function imageDrawRectangle(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, width:Int, height:Int,
		color:RayColor):Void;
	@:native('ImageDrawRectangleV') static function imageDrawRectangleV(dst:cpp.RawPointer<RayImage>, position:RayVector2, size:RayVector2,
		color:RayColor):Void;
	@:native('ImageDrawRectangleRec') static function imageDrawRectangleRec(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, color:RayColor):Void;
	@:native('ImageDrawRectangleLines') static function imageDrawRectangleLines(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, thick:Int,
		color:RayColor):Void;
	@:native('ImageDraw') static function imageDraw(dst:cpp.RawPointer<RayImage>, src:RayImage, srcRec:RayRectangle, dstRec:RayRectangle, tint:RayColor):Void;
	@:native('ImageDrawText') static function imageDrawText(dst:cpp.RawPointer<RayImage>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int,
		color:RayColor):Void;
	@:native('ImageDrawTextEx') static function imageDrawTextEx(dst:cpp.RawPointer<RayImage>, font:RayFont, text:cpp.ConstCharStar, position:RayVector2,
		fontSize:Single, spacing:Single, tint:RayColor):Void;

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

	@:native('GenTextureMipmaps') static function genTextureMipmaps(texture:cpp.RawPointer<RayTexture>):Void;
	@:native('SetTextureFilter') static function setTextureFilter(texture:RayTexture, filter:Int):Void;
	@:native('SetTextureWrap') static function setTextureWrap(texture:RayTexture, wrap:Int):Void;

	@:native('DrawTexture') static function drawTexture(texture:RayTexture, posX:Int, posY:Int, tint:RayColor):Void;
	@:native('DrawTextureV') static function drawTextureV(texture:RayTexture, position:RayVector2, tint:RayColor):Void;
	@:native('DrawTextureEx') static function drawTextureEx(texture:RayTexture, position:RayVector2, rotation:Single, scale:Single, tint:RayColor):Void;
	@:native('DrawTextureRec') static function drawTextureRec(texture:RayTexture, source:RayRectangle, position:RayVector2, tint:RayColor):Void;
	@:native('DrawTexturePro') static function drawTexturePro(texture:RayTexture, source:RayRectangle, dest:RayRectangle, origin:RayVector2, rotation:Single,
		tint:RayColor):Void;
	@:native('DrawTextureNPatch') static function drawTextureNPatch(texture:RayTexture, nPatchInfo:RayNPatchInfo, dest:RayRectangle, origin:RayVector2,
		rotation:Single, tint:RayColor):Void;

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

	@:native('GetFontDefault') static function getFontDefault():RayFont;
	@:native('LoadFont') static function loadFont(fileName:cpp.ConstCharStar):RayFont;
	@:native('LoadFontEx') static function loadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, codepoints:utils.IntPointer,
		codepointCount:Int):RayFont;
	@:native('LoadFontFromImage') static function loadFontFromImage(image:RayImage, key:RayColor, firstChar:Int):RayFont;
	@:native('LoadFontFromMemory') static function loadFontFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int,
		fontSize:Int, codepoints:utils.IntPointer, codepointCount:Int):RayFont;
	@:native('IsFontReady') static function isFontReady(font:RayFont):Bool;
	@:native('LoadFontData') static function loadFontData(fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int,
		codepoints:utils.IntPointer, codepointCount:Int, type:Int):cpp.RawPointer<RayGlyphInfo>;
	@:native('GenImageFontAtlas') static function genImageFontAtlas(glyphs:cpp.RawPointer<RayGlyphInfo>,
		glyphRecs:cpp.RawPointer<cpp.RawPointer<RayRectangle>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):RayImage;
	@:native('UnloadFontData') static function unloadFontData(glyphs:cpp.RawPointer<RayGlyphInfo>, glyphCount:Int):Void;
	@:native('UnloadFont') static function unloadFont(font:RayFont):Void;
	@:native('ExportFontAsCode') static function exportFontAsCode(font:RayFont, fileName:cpp.ConstCharStar):Bool;

	@:native('DrawFPS') static function drawFPS(posX:Int, posY:Int):Void;
	@:native('DrawText') static function drawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:RayColor):Void;
	@:native('DrawTextEx') static function drawTextEx(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, fontSize:Single, spacing:Single,
		tint:RayColor):Void;
	@:native('DrawTextPro') static function drawTextPro(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, origin:RayVector2, rotation:Single,
		fontSize:Single, spacing:Single, tint:RayColor):Void;
	@:native('DrawTextCodepoint') static function drawTextCodepoint(font:RayFont, codepoint:Int, position:RayVector2, fontSize:Single, tint:RayColor):Void;
	@:native('DrawTextCodepoints') static function drawTextCodepoints(font:RayFont, codepoints:utils.IntPointer, codepointCount:Int,
		position:RayVector2, fontSize:Single, spacing:Single, tint:RayColor):Void;

	@:native('SetTextLineSpacing') static function setTextLineSpacing(spacing:Int):Void;
	@:native('MeasureText') static function measureText(text:cpp.ConstCharStar, fontSize:Int):Int;
	@:native('MeasureTextEx') static function measureTextEx(font:RayFont, text:cpp.ConstCharStar, fontSize:Single, spacing:Single):RayVector2;
	@:native('GetGlyphIndex') static function getGlyphIndex(font:RayFont, codepoint:Int):Int;
	@:native('GetGlyphInfo') static function getGlyphInfo(font:RayFont, codepoint:Int):RayGlyphInfo;
	@:native('GetGlyphAtlasRec') static function getGlyphAtlasRec(font:RayFont, codepoint:Int):RayRectangle;

	@:native('LoadUTF8') static function loadUTF8(codepoints:utils.IntPointer, length:Int):cpp.ConstCharStar;
	@:native('UnloadUTF8') static function unloadUTF8(text:cpp.ConstCharStar):Void;
	@:native('LoadCodepoints') static function loadCodepoints(text:cpp.ConstCharStar, count:utils.IntPointer):utils.IntPointer;
	@:native('UnloadCodepoints') static function unloadCodepoints(codepoints:utils.IntPointer):Void;
	@:native('GetCodepointCount') static function getCodepointCount(text:cpp.ConstCharStar):Int;
	@:native('GetCodepoint') static function getCodepoint(text:cpp.ConstCharStar, codepointSize:utils.IntPointer):Int;
	@:native('GetCodepointNext') static function getCodepointNext(text:cpp.ConstCharStar, codepointSize:utils.IntPointer):Int;
	@:native('GetCodepointPrevious') static function getCodepointPrevious(text:cpp.ConstCharStar, codepointSize:utils.IntPointer):Int;
	@:native('CodepointToUTF8') static function codepointToUTF8(codepoint:Int, utf8Size:utils.IntPointer):cpp.ConstCharStar;

	@:native('TextCopy') static function textCopy(dst:cpp.RawPointer<cpp.UInt8>, src:cpp.ConstCharStar):Int;
	@:native('TextIsEqual') static function textIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool;
	@:native('TextLength') static function textLength(text:cpp.ConstCharStar):UInt;
	@:native('TextFormat') static function textFormat(text:cpp.ConstCharStar, args:cpp.Rest<cpp.VarArg>):cpp.ConstCharStar;
	@:native('TextSubtext') static function textSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar;
	@:native('TextReplace') static function textReplace(text:cpp.ConstCharStar, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextInsert') static function textInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.ConstCharStar;
	@:native('TextJoin') static function textJoin(textList:cpp.RawPointer<cpp.ConstCharStar>, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextSplit') static function textSplit(text:cpp.ConstCharStar, delimiter:cpp.Char,
		count:utils.IntPointer):cpp.RawPointer<cpp.ConstCharStar>;
	@:native('TextAppend') static function textAppend(text:cpp.RawPointer<cpp.UInt8>, append:cpp.ConstCharStar, position:utils.IntPointer):Void;
	@:native('TextFindIndex') static function textFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int;
	@:native('TextToUpper') static function textToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToLower') static function textToLower(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToPascal') static function textToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar;
	@:native('TextToInteger') static function textToInteger(text:cpp.ConstCharStar):Int;
	@:native('TextToFloat') static function textToFloat(text:cpp.ConstCharStar):Single;

	@:native('DrawLine3D') static function drawLine3D(startPos:RayVector3, endPos:RayVector3, color:RayColor):Void;
	@:native('DrawPoint3D') static function drawPoint3D(position:RayVector3, color:RayColor):Void;
	@:native('DrawCircle3D') static function drawCircle3D(center:RayVector3, radius:Single, rotationAxis:RayVector3, rotationAngle:Single,
		color:RayColor):Void;
	@:native('DrawTriangle3D') static function drawTriangle3D(v1:RayVector3, v2:RayVector3, v3:RayVector3, color:RayColor):Void;
	@:native('DrawTriangleStrip3D') static function drawTriangleStrip3D(points:cpp.RawPointer<RayVector3>, pointCount:Int, color:RayColor):Void;
	@:native('DrawCube') static function drawCube(position:RayVector3, width:Single, height:Single, length:Single, color:RayColor):Void;
	@:native('DrawCubeV') static function drawCubeV(position:RayVector3, size:RayVector3, color:RayColor):Void;
	@:native('DrawCubeWires') static function drawCubeWires(position:RayVector3, width:Single, height:Single, length:Single, color:RayColor):Void;
	@:native('DrawCubeWiresV') static function drawCubeWiresV(position:RayVector3, size:RayVector3, color:RayColor):Void;
	@:native('DrawSphere') static function drawSphere(centerPos:RayVector3, radius:Single, color:RayColor):Void;
	@:native('DrawSphereEx') static function drawSphereEx(centerPos:RayVector3, radius:Single, rings:Int, slices:Int, color:RayColor):Void;
	@:native('DrawSphereWires') static function drawSphereWires(centerPos:RayVector3, radius:Single, rings:Int, slices:Int, color:RayColor):Void;
	@:native('DrawCylinder') static function drawCylinder(position:RayVector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int,
		color:RayColor):Void;
	@:native('DrawCylinderEx') static function drawCylinderEx(startPos:RayVector3, endPos:RayVector3, startRadius:Single, endRadius:Single, sides:Int,
		color:RayColor):Void;
	@:native('DrawCylinderWires') static function drawCylinderWires(position:RayVector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int,
		color:RayColor):Void;
	@:native('DrawCylinderWiresEx') static function drawCylinderWiresEx(startPos:RayVector3, endPos:RayVector3, startRadius:Single, endRadius:Single,
		sides:Int, color:RayColor):Void;
	@:native('DrawCapsule') static function drawCapsule(startPos:RayVector3, endPos:RayVector3, radius:Single, slices:Int, rings:Int, color:RayColor):Void;
	@:native('DrawCapsuleWires') static function drawCapsuleWires(startPos:RayVector3, endPos:RayVector3, radius:Single, slices:Int, rings:Int,
		color:RayColor):Void;
	@:native('DrawPlane') static function drawPlane(centerPos:RayVector3, size:RayVector2, color:RayColor):Void;
	@:native('DrawRay') static function drawRay(ray:RlRay, color:RayColor):Void;
	@:native('DrawGrid') static function drawGrid(slices:Int, spacing:Single):Void;

	@:native('LoadModel') static function loadModel(fileName:cpp.ConstCharStar):RayModel;
	@:native('LoadModelFromMesh') static function loadModelFromMesh(mesh:RayMesh):RayModel;
	@:native('IsModelReady') static function isModelReady(model:RayModel):Bool;
	@:native('UnloadModel') static function unloadModel(model:RayModel):Void;
	@:native('GetModelBoundingBox') static function getModelBoundingBox(model:RayModel):RayBoundingBox;

	@:native('DrawModel') static function drawModel(model:RayModel, position:RayVector3, scale:Single, tint:RayColor):Void;
	@:native('DrawModelEx') static function drawModelEx(model:RayModel, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Single, scale:RayVector3,
		tint:RayColor):Void;
	@:native('DrawModelWires') static function drawModelWires(model:RayModel, position:RayVector3, scale:Single, tint:RayColor):Void;
	@:native('DrawModelWiresEx') static function drawModelWiresEx(model:RayModel, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Single,
		scale:RayVector3, tint:RayColor):Void;
	@:native('DrawBoundingBox') static function drawBoundingBox(box:RayBoundingBox, color:RayColor):Void;
	@:native('DrawBillboard') static function drawBillboard(camera:RayCamera3D, texture:RayTexture, position:RayVector3, size:Single, tint:RayColor):Void;
	@:native('DrawBillboardRec') static function drawBillboardRec(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3,
		size:RayVector2, tint:RayColor):Void;
	@:native('DrawBillboardPro') static function drawBillboardPro(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3,
		up:RayVector3, size:RayVector2, origin:RayVector2, rotation:Single, tint:RayColor):Void;

	@:native('UploadMesh') static function uploadMesh(mesh:RayMesh, dynamicBuffer:Bool):Void;
	@:native('UpdateMeshBuffer') static function updateMeshBuffer(mesh:RayMesh, index:Int, data:cpp.RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;
	@:native('UnloadMesh') static function unloadMesh(mesh:RayMesh):Void;
	@:native('DrawMesh') static function drawMesh(mesh:RayMesh, material:RayMaterial, transform:RayMatrix):Void;
	@:native('DrawMeshInstanced') static function drawMeshInstanced(mesh:RayMesh, material:RayMaterial, transforms:cpp.RawPointer<RayMatrix>,
		instances:Int):Void;
	@:native('GetMeshBoundingBox') static function getMeshBoundingBox(mesh:RayMesh):RayBoundingBox;
	@:native('GenMeshTangents') static function genMeshTangents(mesh:RayMesh):Void;
	@:native('ExportMesh') static function exportMesh(mesh:RayMesh, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportMeshAsCode') static function exportMeshAsCode(mesh:RayMesh, fileName:cpp.ConstCharStar):Bool;

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

	@:native('LoadMaterials') static function loadMaterials(fileName:cpp.ConstCharStar, materialCount:utils.IntPointer):cpp.RawPointer<RayMaterial>;
	@:native('LoadMaterialDefault') static function loadMaterialDefault():RayMaterial;
	@:native('IsMaterialReady') static function isMaterialReady(material:RayMaterial):Bool;
	@:native('UnloadMaterial') static function unloadMaterial(material:RayMaterial):Void;
	@:native('SetMaterialTexture') static function setMaterialTexture(material:cpp.RawPointer<RayMaterial>, mapType:Int, texture:RayTexture):Void;
	@:native('SetModelMeshMaterial') static function setModelMeshMaterial(model:cpp.RawPointer<RayModel>, meshId:Int, materialId:Int):Void;

	@:native('LoadModelAnimations') static function loadModelAnimations(fileName:cpp.ConstCharStar,
		animCount:utils.IntPointer):cpp.RawPointer<RayModelAnimation>;
	@:native('UpdateModelAnimation') static function updateModelAnimation(model:RayModel, anim:RayModelAnimation, frame:Int):Void;
	@:native('UnloadModelAnimation') static function unloadModelAnimation(anim:RayModelAnimation):Void;
	@:native('UnloadModelAnimations') static function unloadModelAnimations(animations:cpp.RawPointer<RayModelAnimation>, animCount:Int):Void;
	@:native('IsModelAnimationValid') static function isModelAnimationValid(model:RayModel, anim:RayModelAnimation):Bool;

	@:native('CheckCollisionSpheres') static function checkCollisionSpheres(center1:RayVector3, radius1:Single, center2:RayVector3, radius2:Single):Bool;
	@:native('CheckCollisionBoxes') static function checkCollisionBoxes(box1:RayBoundingBox, box2:RayBoundingBox):Bool;
	@:native('CheckCollisionBoxSphere') static function checkCollisionBoxSphere(box:RayBoundingBox, center:RayVector3, radius:Single):Bool;
	@:native('GetRayCollisionSphere') static function getRayCollisionSphere(ray:RlRay, center:RayVector3, radius:Single):RlRayCollision;
	@:native('GetRayCollisionBox') static function getRayCollisionBox(ray:RlRay, box:RayBoundingBox):RlRayCollision;
	@:native('GetRayCollisionMesh') static function getRayCollisionMesh(ray:RlRay, mesh:RayMesh, transform:RayMatrix):RlRayCollision;
	@:native('GetRayCollisionTriangle') static function getRayCollisionTriangle(ray:RlRay, p1:RayVector3, p2:RayVector3, p3:RayVector3):RlRayCollision;
	@:native('GetRayCollisionQuad') static function getRayCollisionQuad(ray:RlRay, p1:RayVector3, p2:RayVector3, p3:RayVector3, p4:RayVector3):RlRayCollision;

	@:native('InitAudioDevice') static function initAudioDevice():Void;
	@:native('CloseAudioDevice') static function closeAudioDevice():Void;
	@:native('IsAudioDeviceReady') static function isAudioDeviceReady():Bool;
	@:native('SetMasterVolume') static function setMasterVolume(volume:Single):Void;
	@:native('GetMasterVolume') static function getMasterVolume():Single;

	@:native('LoadWave') static function loadWave(fileName:cpp.ConstCharStar):RayWave;
	@:native('LoadWaveFromMemory') static function loadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>,
		dataSize:Int):RayWave;
	@:native('IsWaveReady') static function isWaveReady(wave:RayWave):Bool;
	@:native('LoadSound') static function loadSound(fileName:cpp.ConstCharStar):RaySound;
	@:native('LoadSoundFromWave') static function loadSoundFromWave(wave:RayWave):RaySound;
	@:native('LoadSoundAlias') static function loadSoundAlias(source:RaySound):RaySound;
	@:native('IsSoundReady') static function isSoundReady(sound:RaySound):Bool;
	@:native('UpdateSound') static function updateSound(sound:RaySound, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void;
	@:native('UnloadWave') static function unloadWave(wave:RayWave):Void;
	@:native('UnloadSound') static function unloadSound(sound:RaySound):Void;
	@:native('UnloadSoundAlias') static function unloadSoundAlias(alias:RaySound):Void;
	@:native('ExportWave') static function exportWave(wave:RayWave, fileName:cpp.ConstCharStar):Bool;
	@:native('ExportWaveAsCode') static function exportWaveAsCode(wave:RayWave, fileName:cpp.ConstCharStar):Bool;

	@:native('PlaySound') static function playSound(sound:RaySound):Void;
	@:native('StopSound') static function stopSound(sound:RaySound):Void;
	@:native('PauseSound') static function pauseSound(sound:RaySound):Void;
	@:native('ResumeSound') static function resumeSound(sound:RaySound):Void;
	@:native('IsSoundPlaying') static function isSoundPlaying(sound:RaySound):Bool;
	@:native('SetSoundVolume') static function setSoundVolume(sound:RaySound, volume:Single):Void;
	@:native('SetSoundPitch') static function setSoundPitch(sound:RaySound, pitch:Single):Void;
	@:native('SetSoundPan') static function setSoundPan(sound:RaySound, pan:Single):Void;
	@:native('WaveCopy') static function WaveCopy(wave:RayWave):RayWave;
	@:native('WaveCrop') static function WaveCrop(wave:cpp.RawPointer<RayWave>, initFrame:Int, finalFrame:Int):Void;
	@:native('WaveFormat') static function WaveFormat(wave:cpp.RawPointer<RayWave>, initSample:Int, finalSample:Int, channels:Int):Void;
	@:native('LoadWaveSamples') static function loadWaveSamples(wave:RayWave):utils.FloatPointer;
	@:native('UnloadWaveSamples') static function unloadWaveSamples(samples:utils.FloatPointer):Void;

	@:native('LoadMusicStream') static function loadMusicStream(fileName:cpp.ConstCharStar):RayMusic;
	@:native('LoadMusicStreamFromMemory') static function loadMusicStreamFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>,
		dataSize:Int):RayMusic;
	@:native('IsMusicReady') static function isMusicReady(music:RayMusic):Bool;
	@:native('UnloadMusicStream') static function unloadMusicStream(music:RayMusic):Void;
	@:native('PlayMusicStream') static function playMusicStream(music:RayMusic):Void;
	@:native('IsMusicStreamPlaying') static function isMusicStreamPlaying(music:RayMusic):Bool;
	@:native('UpdateMusicStream') static function updateMusicStream(music:RayMusic):Void;
	@:native('StopMusicStream') static function stopMusicStream(music:RayMusic):Void;
	@:native('PauseMusicStream') static function pauseMusicStream(music:RayMusic):Void;
	@:native('ResumeMusicStream') static function resumeMusicStream(music:RayMusic):Void;
	@:native('SeekMusicStream') static function seekMusicStream(music:RayMusic, position:Single):Void;
	@:native('SetMusicVolume') static function setMusicVolume(music:RayMusic, volume:Single):Void;
	@:native('SetMusicPitch') static function setMusicPitch(music:RayMusic, pitch:Single):Void;
	@:native('SetMusicPan') static function setMusicPan(music:RayMusic, pan:Single):Void;
	@:native('GetMusicTimeLength') static function getMusicTimeLength(music:RayMusic):Single;
	@:native('GetMusicTimePlayed') static function getMusicTimePlayed(music:RayMusic):Single;

	@:native('LoadAudioStream') static function loadAudioStream(sampleRate:cpp.UInt32, sampleSize:cpp.UInt32, channels:cpp.UInt32):RayAudioStream;
	@:native('IsAudioStreamReady') static function isAudioStreamReady(stream:RayAudioStream):Bool;
	@:native('UnloadAudioStream') static function unloadAudioStream(stream:RayAudioStream):Void;
	@:native('UpdateAudioStream') static function updateAudioStream(stream:RayAudioStream, data:cpp.RawConstPointer<cpp.Void>, samplesCount:Int):Void;
	@:native('IsAudioStreamProcessed') static function isAudioStreamProcessed(stream:RayAudioStream):Bool;
	@:native('PlayAudioStream') static function playAudioStream(stream:RayAudioStream):Void;
	@:native('PauseAudioStream') static function pauseAudioStream(stream:RayAudioStream):Void;
	@:native('ResumeAudioStream') static function resumeAudioStream(stream:RayAudioStream):Void;
	@:native('IsAudioStreamPlaying') static function isAudioStreamPlaying(stream:RayAudioStream):Bool;
	@:native('StopAudioStream') static function stopAudioStream(stream:RayAudioStream):Void;
	@:native('SetAudioStreamVolume') static function setAudioStreamVolume(stream:RayAudioStream, volume:Single):Void;
	@:native('SetAudioStreamPitch') static function setAudioStreamPitch(stream:RayAudioStream, pitch:Single):Void;
	@:native('SetAudioStreamPan') static function setAudioStreamPan(stream:RayAudioStream, pan:Single):Void;
	@:native('SetAudioStreamBufferSizeDefault') static function setAudioStreamBufferSizeDefault(size:Int):Void;
	@:native('SetAudioStreamCallback') static function setAudioStreamCallback(stream:RayAudioStream, callback:AudioCallback):Void;
	@:native('AttachAudioStreamProcessor') static function attachAudioStreamProcessor(stream:RayAudioStream, processor:AudioCallback):Void;
	@:native('DetachAudioStreamProcessor') static function detachAudioStreamProcessor(stream:RayAudioStream, processor:AudioCallback):Void;
	@:native('AttachAudioMixedProcessor') static function attachAudioMixedProcessor(processor:AudioCallback):Void;
	@:native('DetachAudioMixedProcessor') static function detachAudioMixedProcessor(processor:AudioCallback):Void;
}
