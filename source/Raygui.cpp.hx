package;

/**********************************************************************************************
 *
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
 *
**********************************************************************************************/

import cpp.Pointer;
import Rl.Vector2;
import cpp.Star;
import cpp.ConstCharStar;
import Rl.Rectangle;
import Rl.Font;

@:include("raygui.h")
@:native("GuiState")
extern enum abstract GuiState(Int) from Int to Int{
    @:native("STATE_NORMAL")
    public var NORMAL;
    
    @:native("STATE_FOCUSED")
    public var FOCUSED;

    @:native("STATE_PRESSED")
    public var PRESSED;

    @:native("STATE_DISABLED")
    public var DISABLED;
}

@:include("raygui.h")
extern class Raygui {
    @:native("GuiEnable") public static function guiEnable():Void;
    @:native("GuiDisable") public static function guiDisable():Void;
    @:native("GuiLock") public static function guiLock():Void;
    @:native("GuiUnlock") public static function guiUnlock():Void;
    @:native("GuiFade") public static function guiFade(alpha:Float):Void;
    @:native("GuiSetState") public static function guiSetState(state:Int):Void;
    @:native("GuiGetState") public static function guiGetState():Int;

    @:native("GuiSetFont") public static function guiSetFont(font:Font):Void;
    @:native("GuiGetFont") public static function guiGetFont():Font;

    @:native("GuiSetStyle") public static function guiSetStyle(control:Int, property:Int, value:Int):Void;
    @:native("GuiGetStyle") public static function guiGetStyle(control:Int, property:Int):Int;

    @:native("GuiWindowBox") public static function guiWindowBox(bounds:Rectangle, title:ConstCharStar):Bool;
    @:native("GuiGroupBox") public static function guiGroupBox(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiLine") public static function guiLine(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiPanel") public static function guiPanel(bounds:Rectangle):Void;
    @:native("GuiScrollPanel") public static function guiScrollPanel(bounds:Rectangle, content:Rectangle, scroll:cpp.Pointer<Vector2>):Void;

    @:native("GuiButton") static function guiButton(bounds:Rl.Rectangle, text:ConstCharStar):Bool;
    @:native("GuiSlider") static function guiSlider(bounds:Rectangle, textLeft:ConstCharStar, textLeft:ConstCharStar, value:Float, minValue:Float, maxValue:Float):Float;
    @:native("GuiGrid") static function guiGrid(bounds:Rectangle, spacing:Float, subdivs:Int):Vector2;

    @:native("GuiListView") static function guiListView(bounds:Rectangle, text:ConstCharStar, scrollIndex:Pointer<Int>, active:Int):Int;
}