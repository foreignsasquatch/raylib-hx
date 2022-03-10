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
    static function initWindow(width:Int, height:Int, title:Dynamic):Void;
    static function closeWindow():Void;
    static function windowShouldClose():Bool;
    static function beginDrawing():Void;
    static function endDrawing():Void;
    static function clearBackground(c:Dynamic):Void;
    static function setTraceLogLevel(l:Int):Void;
    static function getScreenWidth():Int;
    static function getScreenHeight():Int;
    static function getMonitorWidth(m:Int):Int;
    static function getMonitorHeight(m:Int):Int;
    static function setTargetFPS(f:Int):Void;
    static function loadTexture(f:String):Dynamic;
    static function drawTexture(t:Dynamic, x:Int, y:Int, c:Dynamic):Void;
}