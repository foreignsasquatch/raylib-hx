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

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlights-impl.h')
@:unreflective
@:structAccess
@:native('Light')
extern class LightImpl
{
    var type:Int;
    var enabled:Bool;
    var position:Vector3Impl;
    var target:Vector3Impl;
    var color:ColorImpl;
    var attenuation:Single;
    var enabledLoc:Int;
    var typeLoc:Int;
    var positionLoc:Int;
    var targetLoc:Int;
    var colorLoc:Int;
    var attenuationLoc:Int;

    function new():Void;
}

@:forward
@:nullSafety
extern abstract Light(cpp.Struct<LightImpl>) to cpp.Struct<LightImpl>
{
    inline function new():Void
    {
        this = new LightImpl();
    }

    @:from
    static inline function fromNative(value:LightImpl):Light
        return cast value;

    @:to
    inline function toConstPointer():cpp.RawConstPointer<LightImpl>
        return cast cpp.RawConstPointer.addressOf(this);

    @:to
    inline function toPointer():cpp.RawPointer<LightImpl>
        return cast cpp.RawPointer.addressOf(this);
}

typedef LightReference = cpp.Reference<Light>;

extern enum abstract LightType(LightTypeImpl)
{
    @:native('LIGHT_DIRECTIONAL') var LIGHT_DIRECTIONAL;
    @:native('LIGHT_POINT') var LIGHT_POINT;

    @:from
    public static inline function fromInt(i:Int):LightType
        return cast i;

    @:to
    public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlights-impl.h')
@:native('LightType')
private extern class LightTypeImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/rlights-impl.h')
@:unreflective
extern class RLights
{
    @:native('CreateLight')
    static function createLight(type:Int, position:Vector3Impl, target:Vector3Impl, color:ColorImpl, shader:ShaderImpl):LightImpl;

    @:native('UpdateLightValues')
    static function updateLightValues(shader:ShaderImpl, light:LightImpl):Void;
}
