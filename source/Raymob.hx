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

#if android
#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raymob.h')
@:unreflective
extern class Raymob
{
    @:native('GetCacheDir') static function getCacheDir():cpp.CastCharStar;
    @:native('Vibrate') static function vibrate(sec:Single):Void;
    @:native('StartAccelerometerListening') static function startAccelerometerListening():Void;
    @:native('StopAccelerometerListening') static function stopAccelerometerListening():Void;
    @:native('GetAccelerometerAxis') static function getAccelerometerAxis():Vector3Impl;
    @:native('GetAccelerometerX') static function getAccelerometerX():Single;
    @:native('GetAccelerometerY') static function getAccelerometerY():Single;
    @:native('GetAccelerometerZ') static function getAccelerometerZ():Single;
    @:native('ShowSoftKeyboard') static function showSoftKeyboard():Void;
    @:native('HideSoftKeyboard') static function hideSoftKeyboard():Void;
    @:native('IsSoftKeyboardActive') static function isSoftKeyboardActive():Bool;
    @:native('GetLastSoftKeyCode') static function getLastSoftKeyCode():Int;
    @:native('GetLastSoftKeyLabel') static function getLastSoftKeyLabel():cpp.UInt16;
    @:native('GetLastSoftKeyUnicode') static function getLastSoftKeyUnicode():Int;
    @:native('GetLastSoftKeyChar') static function getLastSoftKeyChar():cpp.Char;
    @:native('ClearLastSoftKey') static function clearLastSoftKey():Void;
    @:native('SoftKeyboardEditText') static function softKeyboardEditText(text:cpp.CastCharStar, size:cpp.UInt32):Void;
    @:native('KeepScreenOn') static function keepScreenOn(keepOn:Bool):Void;
}
#end
