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

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.Struct;
import cpp.Void;

import raylib.Types;
import raylib.utils.IntPointer;

extern enum abstract TouchAction(TouchActionImpl)
{
    @:native('TOUCH_ACTION_UP')
    var TOUCH_ACTION_UP;

    @:native('TOUCH_ACTION_DOWN')
    var TOUCH_ACTION_DOWN;

    @:native('TOUCH_ACTION_MOVE')
    var TOUCH_ACTION_MOVE;

    @:native('TOUCH_ACTION_CANCEL')
    var TOUCH_ACTION_CANCEL;

    @:from
    static inline function fromInt(i:Int):TouchAction
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rgestures-impl.h')
@:native('TouchAction')
private extern class TouchActionImpl {}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rgestures-impl.h')
@:structAccess
@:native('GestureEvent')
extern class GestureEventImpl
{
    var touchAction:Int;
    var pointCount:Int;
    var pointId:IntPointer;
    var position:RawPointer<Vector2Impl>;

    function new():Void;
}

@:forward
extern abstract GestureEvent(Struct<GestureEventImpl>) to Struct<GestureEventImpl>
{
    inline function new():Void
    {
        this = new GestureEventImpl();
    }

    @:from
    static inline function fromNative(value:GestureEventImpl):GestureEvent
        return cast value;

    @:to
    inline function toConstPointer():RawConstPointer<GestureEventImpl>
        return cast Pointer.addressOf(this).constRaw;

    @:to
    inline function toPointer():RawPointer<GestureEventImpl>
        return cast Pointer.addressOf(this).raw;
}

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('rgestures-impl.h')
extern class RGestures
{
    @:native('ProcessGestureEvent')
    static function ProcessGestureEvent(event:GestureEventImpl):Void;

    @:native('UpdateGestures')
    static function UpdateGestures():Void;
}
