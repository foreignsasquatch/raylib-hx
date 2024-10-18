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
extern class RayLight
{
    @:native('Light')
    static function alloc():RayLight;

    var type:Int;
    var enabled:Bool;
    var position:RayVector3;
    var target:RayVector3;
    var color:RayColor;
    var attenuation:Single;
    var enabledLoc:Int;
    var typeLoc:Int;
    var positionLoc:Int;
    var targetLoc:Int;
    var colorLoc:Int;
    var attenuationLoc:Int;
}

extern abstract Light(cpp.Struct<RayLight>) to cpp.Struct<RayLight>
{
    var type(get, set):Int;

    inline function get_type():Int
    {
        return this.type;
    }

    inline function set_type(value:Int):Int
    {
        return this.type = value;
    }

    var enabled(get, set):Bool;

    inline function get_enabled():Bool
    {
        return this.enabled;
    }

    inline function set_enabled(value:Bool):Bool
    {
        return this.enabled = value;
    }

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

    var color(get, set):RayColor;

    inline function get_color():RayColor
    {
        return this.color;
    }

    inline function set_color(value:RayColor):RayColor
    {
        return this.color = value;
    }

    var attenuation(get, set):Float;

    inline function get_attenuation():Float
    {
        return this.attenuation;
    }

    inline function set_attenuation(value:Float):Float
    {
        return this.attenuation = value;
    }

    var enabledLoc(get, set):Int;

    inline function get_enabledLoc():Int
    {
        return this.enabledLoc;
    }

    inline function set_enabledLoc(value:Int):Int
    {
        return this.enabledLoc = value;
    }

    var typeLoc(get, set):Int;

    inline function get_typeLoc():Int
    {
        return this.typeLoc;
    }

    inline function set_typeLoc(value:Int):Int
    {
        return this.typeLoc = value;
    }

    var positionLoc(get, set):Int;

    inline function get_positionLoc():Int
    {
        return this.positionLoc;
    }

    inline function set_positionLoc(value:Int):Int
    {
        return this.positionLoc = value;
    }

    var targetLoc(get, set):Int;

    inline function get_targetLoc():Int
    {
        return this.targetLoc;
    }

    inline function set_targetLoc(value:Int):Int
    {
        return this.targetLoc = value;
    }

    var colorLoc(get, set):Int;

    inline function get_colorLoc():Int
    {
        return this.colorLoc;
    }

    inline function set_colorLoc(value:Int):Int
    {
        return this.colorLoc = value;
    }

    var attenuationLoc(get, set):Int;

    inline function get_attenuationLoc():Int
    {
        return this.attenuationLoc;
    }

    inline function set_attenuationLoc(value:Int):Int
    {
        return this.attenuationLoc = value;
    }

    inline function new():Void
    {
        this = RayLight.alloc();
    }

    @:from
    static inline function fromNative(value:RayLight):Light
        return cast value;

    @:to
    inline function toPointer():cpp.RawPointer<RayLight>
        return cast cpp.RawPointer.addressOf(this);
}

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
    static function createLight(type:Int, position:RayVector3, target:RayVector3, color:RayColor, shader:RayShader):RayLight;

    @:native('UpdateLightValues')
    static function updateLightValues(shader:RayShader, light:RayLight):Void;
}
