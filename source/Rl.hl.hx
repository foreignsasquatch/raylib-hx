/*
 *
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   hxRaylib is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
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
 *
*/
abstract ExtDynamic<T>(Dynamic) from T to T {}

class Colors {
    public static var SASQUATCH:Color = {r: 33, g: 33, b: 33, a: 33};
    public static var WHITE:Color = {r: 255, g: 255, b: 255, a: 255};
    public static var BLACK:Color = {r: 0, g: 0, b: 0, a: 255};
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

@:structInit
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

@:structInit
class Vector2 {
    public var x:hl.F32;
    public var y:hl.F32;
}

enum abstract TraceLogLevel(Int) {
    public static var ALL = 0;
    public static var TRACE = 1;
    public static var DEBUG = 2;
    public static var INFO = 3;
    public static var WARNING = 4;
    public static var ERROR = 5;
    public static var FATAL = 6;
    public static var NONE = 7;
}

enum abstract Keys(Int) from Int to Int {
    public var NULL = 0;        // Key: NULL, used for no key pressed

    // Alphanumeric keys
    public var APOSTROPHE      = 39;       // Key: '
    public var COMMA           = 44;       // Key: ,
    public var MINUS           = 45;       // Key: -
    public var PERIOD          = 46;       // Key: .
    public var SLASH           = 47;       // Key: /
    public var ZERO            = 48;       // Key: 0
    public var ONE             = 49;       // Key: 1
    public var TWO             = 50;       // Key: 2
    public var THREE           = 51;       // Key: 3
    public var FOUR            = 52;       // Key: 4
    public var FIVE            = 53;       // Key: 5
    public var SIX             = 54;       // Key: 6
    public var EVEN           = 55;       // Key: 7
    public var EIGHT           = 56;       // Key: 8
    public var NINE            = 57;       // Key: 9
    public var SEMICOLON       = 59;       // Key: ;
    public var EQUAL           = 61;       // Key: =
    public var A:Int               = 65;       // Key: A | a
    public var B               = 66;       // Key: B | b
    public var C               = 67;       // Key: C | c
    public var D               = 68;       // Key: D | d
    public var E               = 69;       // Key: E | e
    public var F               = 70;       // Key: F | f
    public var G               = 71;       // Key: G | g
    public var H               = 72;       // Key: H | h
    public var I               = 73;       // Key: I | i
    public var J               = 74;       // Key: J | j
    public var K               = 75;       // Key: K | k
    public var L               = 76;       // Key: L | l
    public var M               = 77;       // Key: M | m
    public var N               = 78;       // Key: N | n
    public var O               = 79;       // Key: O | o
    public var P               = 80;       // Key: P | p
    public var Q               = 81;       // Key: Q | q
    public var R               = 82;       // Key: R | r
    public var S               = 83;       // Key: S | s
    public var T               = 84;       // Key: T | t
    public var U               = 85;       // Key: U | u
    public var V               = 86;       // Key: V | v
    public var W               = 87;       // Key: W | w
    public var X               = 88;       // Key: X | x
    public var Y               = 89;       // Key: Y | y
    public var Z               = 90;       // Key: Z | z
    public var LEFT_BRACKET    = 91;       // Key: [
    public var BACKSLASH       = 92;       // Key: '\'
    public var RIGHT_BRACKET   = 93;       // Key: ]
    public var GRAVE           = 96;       // Key: `

    // Function key;
    public var SPACE           = 32;       // Key: Space
    public var ESCAPE          = 256;      // Key: Esc
    public var ENTER           = 257;      // Key: Enter
    public var TAB             = 258;      // Key: Tab
    public var BACKSPACE       = 259;      // Key: Backspace
    public var INSERT          = 260;      // Key: Ins
    public var DELETE          = 261;      // Key: Del
    public var RIGHT           = 262;      // Key: Cursor right
    public var LEFT            = 263;      // Key: Cursor left
    public var DOWN            = 264;      // Key: Cursor down
    public var UP              = 265;      // Key: Cursor up
    public var PAGE_UP         = 266;      // Key: Page up
    public var PAGE_DOWN       = 267;      // Key: Page down
    public var HOME            = 268;      // Key: Home
    public var END             = 269;      // Key: End
    public var CAPS_LOCK       = 280;      // Key: Caps lock
    public var SCROLL_LOCK     = 281;      // Key: Scroll down
    public var NUM_LOCK        = 282;      // Key: Num lock
    public var PRINT_SCREEN    = 283;      // Key: Print screen
    public var PAUSE           = 284;      // Key: Pause
    public var F1              = 290;      // Key: F1
    public var F2              = 291;      // Key: F2
    public var F3              = 292;      // Key: F3
    public var F4              = 293;      // Key: F4
    public var F5              = 294;      // Key: F5
    public var F6              = 295;      // Key: F6
    public var F7              = 296;      // Key: F7
    public var F8              = 297;      // Key: F8
    public var F9              = 298;      // Key: F9
    public var F10             = 299;      // Key: F10
    public var F11             = 300;      // Key: F11
    public var F12             = 301;      // Key: F12
    public var LEFT_SHIFT      = 340;      // Key: Shift left
    public var LEFT_CONTROL    = 341;      // Key: Control left
    public var LEFT_ALT        = 342;      // Key: Alt left
    public var LEFT_SUPER      = 343;      // Key: Super left
    public var RIGHT_SHIFT     = 344;      // Key: Shift right
    public var RIGHT_CONTROL   = 345;      // Key: Control right
    public var RIGHT_ALT       = 346;      // Key: Alt right
    public var RIGHT_SUPER     = 347;      // Key: Super right
    public var KB_MENU         = 348;      // Key: KB menu

    //Keypad keys;
    public var KP_0            = 320;      // Key: Keypad 0
    public var KP_1            = 321;      // Key: Keypad 1
    public var KP_2            = 322;      // Key: Keypad 2
    public var KP_3            = 323;      // Key: Keypad 3
    public var KP_4            = 324;      // Key: Keypad 4
    public var KP_5            = 325;      // Key: Keypad 5
    public var KP_6            = 326;      // Key: Keypad 6
    public var KP_7            = 327;      // Key: Keypad 7
    public var KP_8            = 328;      // Key: Keypad 8
    public var KP_9            = 329;      // Key: Keypad 9
    public var KP_DECIMAL      = 330;      // Key: Keypad .
    public var KP_DIVIDE       = 331;      // Key: Keypad /
    public var KP_MULTIPLY     = 332;      // Key: Keypad *
    public var KP_SUBTRACT     = 333;      // Key: Keypad -
    public var KP_ADD          = 334;      // Key: Keypad +
    public var KP_ENTER        = 335;      // Key: Keypad Enter
    public var KP_EQUAL        = 336;      // Key: Keypad =

    // Android key buttons
    public var BACK            = 4;        // Key: Android back button
    public var MENU            = 82;       // Key: Android menu button
    public var VOLUME_UP       = 24;       // Key: Android volume up button
    public var VOLUME_DOWN     = 25;       // Key: Android volume down button
}

@:hlNative("raylib")
extern class Rl {
    static function initWindow(width:Int, height:Int, title:ExtDynamic<String>):Void;
    static function closeWindow():Void;
    static function windowShouldClose():Bool;
    static function getScreenWidth():Int;
    static function getScreenHeight():Int;
    static function getMonitorWidth(m:Int):Int;
    static function getMonitorHeight(m:Int):Int;

    static function beginDrawing():Void;
    static function endDrawing():Void;
    static function clearBackground(c:ExtDynamic<Color>):Void;

    static function setTraceLogLevel(l:Int):Void;

    static function setTargetFPS(f:Int):Void;
    static function getFrameTime():hl.F32;
    static function drawFPS(x:Int, y:Int):Void;

    static function isKeyDown(k:Int):Bool;
    static function isKeyPressed(k:Int):Bool;
    static function setExitKey(k:Int):Void;

    static function loadTexture(f:String):ExtDynamic<Texture>;
    static function drawTexture(t:ExtDynamic<Texture>, x:Int, y:Int, c:ExtDynamic<Color>):Void;
    static function drawTextureRec(t:ExtDynamic<Texture>, s:ExtDynamic<Rectangle>, p:ExtDynamic<Vector2>, c:ExtDynamic<Color>):Void;
    static function unloadTexture(t:ExtDynamic<Texture>):Void;

    static function drawRectangle(x:Int, y:Int, w:Int, h:Int, c:ExtDynamic<Color>):Void;
    static function drawRectangleRec(r:ExtDynamic<Rectangle>, c:ExtDynamic<Color>):Void;

    static function drawText(t:String, x:Int, y:Int, f:Int, c:ExtDynamic<Color>):Void;
}
