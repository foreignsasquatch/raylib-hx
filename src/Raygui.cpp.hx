/**********************************************************************************************
 *
 *   hxRaylib - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   TODO: Test all the features
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
**********************************************************************************************/

import Raylib.Vector2;
import cpp.Star;
import cpp.ConstCharStar;
import Raylib.Rectangle;
import Raylib.Font;

@:include("raygui.h")
extern class Raygui
{
    @:native("GuiEnable") public static function GuiEnable():Void;
    @:native("GuiDisbale") public static function GuiDisable():Void;
    @:native("GuiLock") public static function GuiLock():Void;
    @:native("GuiUnlock") public static function GuiUnlock():Void;
    @:native("GuiFade") public static function GuiFade(alpha:Float):Void;
    @:native("GuiSetState") public static function GuiSetState(state:Int):Void;
    @:native("GuiGetState") public static function GuiGetState():Int;

    @:native("GuiSetFont") public static function GuiSetFont(font:Font):Void;
    @:native("GuiGetFont") public static function GuiGetFont():Font;
    
    @:native("GuiSetStyle") public static function GuiSetStyle(control:Int, property:Int, value:Int):Void;
    @:native("GuiGetStyle") public static function GuiGetStyle(control:Int, property:Int):Void;

    @:native("GuiWindowBox") public static function GuiWindowBox(bounds:Rectangle, title:ConstCharStar):Bool;
    @:native("GuiGroupBox") public static function GuiGroupBox(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiLine") public static function GuiLine(bounds:Rectangle, text:ConstCharStar):Void;
    @:native("GuiPanel") public static function GuiPanel(bounds:Rectangle):Void;
    @:native("GuiScrollPanel") public static function GuiScrollPanel(bounds:Rectangle, content:Rectangle, scroll:cpp.Pointer<Vector2>):Void;
}