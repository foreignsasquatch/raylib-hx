/*
 *
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   hxRaylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
 *   BSD-like license that allows static linking with closed source software:
 *
 *   Copyright (c) 2021 Ratul Krisna (@ForeignSasquatch)
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
 *
*/
abstract ExtDynamic<T>(Dynamic) from T to T {}

class Colors {
    public static var SASQUATCH:Color = {r: 33, g: 33, b: 33, a: 33};
    public static var WHITE:Color = {r: 255, g: 255, b: 255, a: 255};
    public static var BLACK:Color = {r: 0, g: 0, b: 0, a: 0};
}

@:structInit
class Color {
    public var r:Int;
    public var g:Int;
    public var b:Int;
    public var a:Int;

    public function new(r:Int, g:Int, b:Int, a:Int) {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }

    public static function create(r:Int, g:Int, b:Int, a:Int):Color {
        return new Color(r, g, b, a);
    }
}

class Rectangle {
    public var x:Float;
    public var y:Float;
    public var width:Float;
    public var height:Float;

    public function new(x:Float, y:Float, width:Float, height:Float) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public static function create(x:Float, y:Float, width:Float, height:Float):Rectangle {
        return new Rectangle(x, y, width, height);
    }
}

typedef Texture =  {
    id:Int,
    width:Int,
    height:Int,
    mipmaps:Int,
    format:Int,
}

enum abstract TraceLogLevel(Int)
{
    public static var ALL:Int = 0;
    public static var TRACE:Int = 1;
    public static var DEBUG:Int = 2;
    public static var INFO:Int = 3;
    public static var WARNING:Int = 4;
    public static var ERROR:Int = 5;
    public static var FATAL:Int = 6;
    public static var NONE:Int = 7;
}

@:hlNative("raylib")
extern class Raylib {
    static function initWindow(width:Int, height:Int, title:ExtDynamic<String>):Void;
    static function closeWindow():Void;
    static function windowShouldClose():Bool;
    static function beginDrawing():Void;
    static function endDrawing():Void;
    static function clearBackground(c:ExtDynamic<Color>):Void;
    static function setTraceLogLevel(l:Int):Void;
    static function getScreenWidth():Int;
    static function getScreenHeight():Int;
    static function getMonitorWidth(m:Int):Int;
    static function getMonitorHeight(m:Int):Int;
    static function setTargetFPS(f:Int):Void;
    static function setExitKey(k:Int):Void;
    static function getFrameTime():hl.F32;
    static function drawFPS(x:Int, y:Int):Void;
    static function loadTexture(f:String):ExtDynamic<Texture>;
    static function drawTexture(t:ExtDynamic<Texture>, x:Int, y:Int, c:ExtDynamic<Color>):Void;
    static function unloadTexture(t:ExtDynamic<Texture>):Void;
}
