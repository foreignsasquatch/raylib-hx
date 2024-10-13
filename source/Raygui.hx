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

package;

import Raylib;

extern enum abstract GuiState(GuiStateImpl)
{
    @:native('STATE_NORMAL') var STATE_NORMAL;
    @:native('STATE_FOCUSED') var STATE_FOCUSED;
    @:native('STATE_PRESSED') var STATE_PRESSED;
    @:native('STATE_DISABLED') var STATE_DISABLED;

    @:from
    static public inline function fromInt(i:Int):GuiState
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiState')
private extern class GuiStateImpl {}

extern enum abstract GuiTextAlignment(GuiTextAlignmentImpl)
{
    @:native('TEXT_ALIGN_LEFT') var TEXT_ALIGN_LEFT;
    @:native('TEXT_ALIGN_CENTER') var TEXT_ALIGN_CENTER;
    @:native('TEXT_ALIGN_RIGHT') var TEXT_ALIGN_RIGHT;

    @:from
    static public inline function fromInt(i:Int):GuiTextAlignment
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiTextAlignment')
private extern class GuiTextAlignmentImpl {}

extern enum abstract GuiTextAlignmentVertical(GuiTextAlignmentVerticalImpl)
{
    @:native('TEXT_ALIGN_TOP') var TEXT_ALIGN_TOP;
    @:native('TEXT_ALIGN_MIDDLE') var TEXT_ALIGN_MIDDLE;
    @:native('TEXT_ALIGN_BOTTOM') var TEXT_ALIGN_BOTTOM;

    @:from
    static public inline function fromInt(i:Int):GuiTextAlignmentVertical
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiTextAlignmentVertical')
private extern class GuiTextAlignmentVerticalImpl {}

extern enum abstract GuiTextWrapMode(GuiTextWrapModeImpl)
{
    @:native('TEXT_WRAP_NONE') var TEXT_WRAP_NONE;
    @:native('TEXT_WRAP_CHAR') var TEXT_WRAP_CHAR;
    @:native('TEXT_WRAP_WORD') var TEXT_WRAP_WORD;

    @:from
    static public inline function fromInt(i:Int):GuiTextWrapMode
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiTextWrapMode')
private extern class GuiTextWrapModeImpl {}

extern enum abstract GuiControl(GuiControlImpl)
{
    @:native('DEFAULT') var DEFAULT;
    @:native('LABEL') var LABEL;
    @:native('BUTTON') var BUTTON;
    @:native('TOGGLE') var TOGGLE;
    @:native('SLIDER') var SLIDER;
    @:native('PROGRESSBAR') var PROGRESSBAR;
    @:native('CHECKBOX') var CHECKBOX;
    @:native('COMBOBOX') var COMBOBOX;
    @:native('DROPDOWNBOX') var DROPDOWNBOX;
    @:native('TEXTBOX') var TEXTBOX;
    @:native('VALUEBOX') var VALUEBOX;
    @:native('SPINNER') var SPINNER;
    @:native('LISTVIEW') var LISTVIEW;
    @:native('COLORPICKER') var COLORPICKER;
    @:native('SCROLLBAR') var SCROLLBAR;
    @:native('STATUSBAR') var STATUSBAR;

    @:from
    static public inline function fromInt(i:Int):GuiControl
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiControl')
private extern class GuiControlImpl {}

extern enum abstract GuiControlProperty(GuiControlPropertyImpl)
{
    @:native('BORDER_COLOR_NORMAL') var BORDER_COLOR_NORMAL;
    @:native('BASE_COLOR_NORMAL') var BASE_COLOR_NORMAL;
    @:native('TEXT_COLOR_NORMAL') var TEXT_COLOR_NORMAL;
    @:native('BORDER_COLOR_FOCUSED') var BORDER_COLOR_FOCUSED;
    @:native('BASE_COLOR_FOCUSED') var BASE_COLOR_FOCUSED;
    @:native('TEXT_COLOR_FOCUSED') var TEXT_COLOR_FOCUSED;
    @:native('BORDER_COLOR_PRESSED') var BORDER_COLOR_PRESSED;
    @:native('BASE_COLOR_PRESSED') var BASE_COLOR_PRESSED;
    @:native('TEXT_COLOR_PRESSED') var TEXT_COLOR_PRESSED;
    @:native('BORDER_COLOR_DISABLED') var BORDER_COLOR_DISABLED;
    @:native('BASE_COLOR_DISABLED') var BASE_COLOR_DISABLED;
    @:native('TEXT_COLOR_DISABLED') var TEXT_COLOR_DISABLED;
    @:native('BORDER_WIDTH') var BORDER_WIDTH;
    @:native('TEXT_PADDING') var TEXT_PADDING;
    @:native('TEXT_ALIGNMENT') var TEXT_ALIGNMENT;

    @:from
    static public inline function fromInt(i:Int):GuiControlProperty
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiControlProperty')
private extern class GuiControlPropertyImpl {}

extern enum abstract GuiDefaultProperty(GuiDefaultPropertyImpl)
{
    @:native('TEXT_SIZE') var TEXT_SIZE;
    @:native('TEXT_SPACING') var TEXT_SPACING;
    @:native('LINE_COLOR') var LINE_COLOR;
    @:native('BACKGROUND_COLOR') var BACKGROUND_COLOR;
    @:native('TEXT_LINE_SPACING') var TEXT_LINE_SPACING;
    @:native('TEXT_ALIGNMENT_VERTICAL') var TEXT_ALIGNMENT_VERTICAL;
    @:native('TEXT_WRAP_MODE') var TEXT_WRAP_MODE;

    @:from
    static public inline function fromInt(i:Int):GuiDefaultProperty
        return cast i;

    @:to extern public inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiDefaultProperty')
private extern class GuiDefaultPropertyImpl {}

@:include("raygui.h")
extern class Raygui
{
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

	@:native("GuiLabel") static function guiLabel(bounds:Rectangle, text:ConstCharStar):Void;
	@:native("GuiButton") static function guiButton(bounds:Rectangle, text:ConstCharStar):Bool;
	@:native("GuiLabelButton") static function guiLabelButton(bounds:Rectangle, text:ConstCharStar):Bool;
	@:native("GuiToggle") static function guiToggle(bounds:Rectangle, text:ConstCharStar, active:Bool):Bool;
	@:native("GuiToggleGroup") static function guiToggleGroup(bounds:Rectangle, text:ConstCharStar, active:Int):Int;
	@:native("GuiCheckBox") static function guiCheckBox(bounds:Rectangle, text:ConstCharStar, checked:Bool):Int;
	@:native("GuiComboBox") static function guiComboBox(bounds:Rectangle, text:ConstCharStar, active:Int):Int;
	@:native("GuiDropDownBox") static function guiDropDownBox(bounds:Rectangle, text:ConstCharStar, active:cpp.RawPointer<cpp.Int32>, editMode:Bool):Bool;
	@:native("GuiSpinner") static function guiSpinner(bounds:Rectangle, text:ConstCharStar, value:cpp.RawPointer<cpp.Int32>, minValue:Int, maxValue:Int, editMode:Bool):Bool;
	@:native("GuiValueBox") static function guiValueBox(bounds:Rectangle, text:ConstCharStar, value:Pointer<cpp.Int32>, minValue:Int, maxValue:Int,
		editMode:Bool):Bool;
	@:native("GuiTextBox") static function guiTextBox(bounds:Rectangle, text:CastCharStar, textSize:Int, editMode:Bool):Bool;
	@:native("GuiTextBoxMulti") static function guiTextBoxMulti(bounds:Rectangle, text:CastCharStar, textSize:Int, editMode:Bool):Bool;
	@:native("GuiSlider") static function guiSlider(bounds:Rectangle, textLeft:CastCharStar, textRight:CastCharStar, value:Float, minValue:Float,
		maxValue:Float):Bool;
	@:native("GuiSliderBar") static function guiSliderBar(bounds:Rectangle, textLeft:CastCharStar, textRight:CastCharStar, value:Float, minValue:Float,
		maxValue:Float):Bool;
	@:native("GuiProgressBar") static function guiProgressBar(bounds:Rectangle, textLeft:CastCharStar, textRight:CastCharStar, value:Float, minValue:Float,
		maxValue:Float):Bool;
	@:native("GuiStatusBar") static function guiStatusBar(bounds:Rectangle, text:ConstCharStar):Void;
	@:native("GuiDummyRec") static function guiDummyRec(bounds:Rectangle, text:ConstCharStar):Void;
	@:native("GuiGrid") static function guiGrid(bounds:Rectangle, spacing:Float, subdivs:Int):Vector2;

	@:native("GuiListView") static function guiListView(bounds:Rectangle, text:ConstCharStar, scrollIndex:Pointer<cpp.Int32>, active:Int):Int;
	@:native("GuiListViewEx") static function guiListViewEx(bounds:Rectangle, text:cpp.RawPointer<cpp.RawPointer<ConstCharStar>>, count:Int, focus:cpp.RawPointer<cpp.Int32>,
		scrollIndex:cpp.RawPointer<cpp.Int32>, active:Int):Int;
	@:native("GuiMessageBox") static function guiMessageBox(bounds:Rectangle, title:ConstCharStar, message:ConstCharStar, buttons:ConstCharStar):Int;
	@:native("GuiTextInputBox") static function guiTextInputBox(bounds:Rectangle, title:ConstCharStar, message:ConstCharStar, buttons:ConstCharStar,
		text:CastCharStar, textMaxSize:Int, secretViewActive:cpp.RawPointer<cpp.Int32>):Int;
	@:native("GuiColorPicker") static function guiColorPicker(bounds:Rectangle, text:ConstCharStar, color:Color):Color;
	@:native("GuiColorPanel") static function guiColorPanel(bounds:Rectangle, text:ConstCharStar, color:Color):Color;
	@:native("GuiColorBarAlpha") static function guiColorBarAlpha(bounds:Rectangle, text:ConstCharStar, alpha:Float):Float;
	@:native("GuiColorBarHue") static function guiColorBarHue(bounds:Rectangle, text:ConstCharStar, value:Float):Float;

	@:native("GuiLoadStyle") static function guiLoadStyle(fileName:ConstCharStar):Void;
	@:native("GuiLoadStyleDefault") static function guiLoadStyleDefault():Void;

	@:native("GuiIconText") static function guiIconText(iconId:Int, text:ConstCharStar):ConstCharStar;
}
