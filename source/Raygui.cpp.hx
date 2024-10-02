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
import Rl.Color;
import Rl.Font;
import Rl.Rectangle;
import Rl.Vector2;
import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Star;

@:include("raygui.h")
@:native("GuiControlState")
extern enum abstract GuiControlState(Int) from Int to Int
{
	@:native("GUI_STATE_NORMAL")
	public var NORMAL;
	@:native("GUI_STATE_FOCUSED")
	public var FOCUSED;
	@:native("GUI_STATE_PRESSED")
	public var PRESSED;
	@:native("GUI_STATE_DISABLED")
	public var DISABLED;
}

@:include("raygui.h")
@:native("GuiTextAlignment")
extern enum abstract GuiTextAlignment(Int) from Int to Int
{
	@:native("GUI_TEXT_ALIGN_LEFT")
	public var LEFT;
	@:native("GUI_TEXT_ALIGN_CENTER")
	public var CENTER;
	@:native("GUI_TEXT_ALIGN_RIGHT")
	public var RIGHT;
}

@:include("raygui.h")
@:native("GuiControl")
extern enum abstract GuiControl(Int) from Int to Int
{
	@:native("DEFAULT")
	public var DEFAULT;
	@:native("LABEL")
	public var LABEL;
	@:native("BUTTON")
	public var BUTTON;
	@:native("TOGGLE")
	public var TOGGLE;
	@:native("SLIDER")
	public var SLIDER;
	@:native("PROGRESSBAR")
	public var PROGRESSBAR;
	@:native("CHECKBOX")
	public var CHECKBOX;
	@:native("COMBOBOX")
	public var COMBOBOX;
	@:native("DROPDOWNBOX")
	public var DROPDOWNBOX;
	@:native("TEXTBOX")
	public var TEXTBOX;
	@:native("VALUEBOX")
	public var VALUEBOX;
	@:native("SPINNER")
	public var SPINNER;
	@:native("LISTVIEW")
	public var LISTVIEW;
	@:native("COLORPICKER")
	public var COLORPICKER;
	@:native("SCROLLBAR")
	public var SCROLLBAR;
	@:native("STATUSBAR")
	public var STATUSBAR;
}

@:include("raygui.h")
@:native("GuiControlProperty")
extern enum abstract GuiControlProperty(Int) from Int to Int
{
	@:native("BORDER_COLOR_NORMAL")
	public var BORDER_COLOR_NORMAL;
	@:native("BASE_COLOR_NORMAL")
	public var BASE_COLOR_NORMAL;
	@:native("TEXT_COLOR_NORMAL")
	public var TEXT_COLOR_NORMAL;
	@:native("BORDER_COLOR_FOCUSED")
	public var BORDER_COLOR_FOCUSED;
	@:native("BASE_COLOR_FOCUSED")
	public var BASE_COLOR_FOCUSED;
	@:native("TEXT_COLOR_FOCUSED")
	public var TEXT_COLOR_FOCUSED;
	@:native("BORDER_COLOR_PRESSED")
	public var BORDER_COLOR_PRESSED;
	@:native("BASE_COLOR_PRESSED")
	public var BASE_COLOR_PRESSED;
	@:native("TEXT_COLOR_PRESSED")
	public var TEXT_COLOR_PRESSED;
	@:native("BORDER_COLOR_DISABLED")
	public var BORDER_COLOR_DISABLED;
	@:native("BASE_COLOR_DISABLED")
	public var BASE_COLOR_DISABLED;
	@:native("TEXT_COLOR_DISABLED")
	public var TEXT_COLOR_DISABLED;
	@:native("BORDER_WIDTH")
	public var BORDER_WIDTH;
	@:native("TEXT_PADDING")
	public var TEXT_PADDING;
	@:native("TEXT_ALIGNMENT")
	public var TEXT_ALIGNMENT;
	@:native("RESERVED")
	public var RESERVED;
}

@:include("raygui.h")
@:native("GuiDefaultProperty")
extern enum abstract GuiDefaultProperty(Int) from Int to Int
{
	@:native("TEXT_SIZE")
	public var TEXT_SIZE;
	@:native("TEXT_SPACING")
	public var TEXT_SPACING;
	@:native("LINE_COLOR")
	public var LINE_COLOR;
	@:native("BACKGROUND_COLOR")
	public var BACKGROUND_COLOR;
}

@:include("raygui.h")
@:native("GuiToggleProperty")
extern enum abstract GuiToggleProperty(Int) from Int to Int
{
	@:native("GROUP_PADDING")
	public var GROUP_PADDING;
}

@:include("raygui.h")
@:native("GuiSliderProperty")
extern enum abstract GuiSliderProperty(Int) from Int to Int
{
	@:native("SLIDER_WIDTH")
	public var SLIDER_WIDTH;
	@:native("SLIDER_PADDING")
	public var SLIDER_PADDING;
}

@:include("raygui.h")
@:native("GuiProgressBarProperty")
extern enum abstract GuiProgressBarProperty(Int) from Int to Int
{
	@:native("PROGRESS_PADDING")
	public var PROGRESS_PADDING;
}

@:include("raygui.h")
@:native("GuiCheckBoxProperty")
extern enum abstract GuiCheckBoxProperty(Int) from Int to Int
{
	@:native("CHECK_PADDING")
	public var CHECK_PADDING;
}

@:include("raygui.h")
@:native("GuiComboBoxProperty")
extern enum abstract GuiComboBoxProperty(Int) from Int to Int
{
	@:native("COMBO_BUTTON_WIDTH")
	public var COMBO_BUTTON_WIDTH;
	@:native("COMBO_BUTTON_PADDING")
	public var COMBO_BUTTON_PADDING;
}

@:include("raygui.h")
@:native("GuiDropdownBoxProperty")
extern enum abstract GuiDropdownBoxProperty(Int) from Int to Int
{
	@:native("ARROW_PADDING")
	public var ARROW_PADDING;
	@:native("DROPDOWN_ITEMS_PADDING")
	public var DROPDOWN_ITEMS_PADDING;
}

@:include("raygui.h")
@:native("GuiTextBoxProperty")
extern enum abstract GuiTextBoxProperty(Int) from Int to Int
{
	@:native("TEXT_INNER_PADDING")
	public var TEXT_INNER_PADDING;
	@:native("TEXT_LINES_PADDING")
	public var TEXT_LINES_PADDING;
	@:native("COLOR_SELECTED_FG")
	public var COLOR_SELECTED_FG;
	@:native("COLOR_SELECTED_BG")
	public var COLOR_SELECTED_BG;
}

@:include("raygui.h")
@:native("GuiSpinnerProperty")
extern enum abstract GuiSpinnerProperty(Int) from Int to Int
{
	@:native("SPIN_BUTTON_WIDTH")
	public var SPIN_BUTTON_WIDTH;
	@:native("SPIN_BUTTON_PADDING")
	public var SPIN_BUTTON_PADDING;
}

@:include("raygui.h")
@:native("GuiScrollBarProperty")
extern enum abstract GuiScrollBarProperty(Int) from Int to Int
{
	@:native("ARROWS_SIZE")
	public var ARROWS_SIZE;
	@:native("ARROWS_VISIBLE")
	public var ARROWS_VISIBLE;
	@:native("SCROLL_SLIDER_PADDING")
	public var SCROLL_SLIDER_PADDING;
	@:native("SCROLL_SLIDER_SIZE")
	public var SCROLL_SLIDER_SIZE;
	@:native("SCROLL_PADDING")
	public var SCROLL_PADDING;
	@:native("SCROLL_SPEED")
	public var SCROLL_SPEED;
}

@:include("raygui.h")
@:native("GuiScrollBarSide")
extern enum abstract GuiScrollBarSide(Int) from Int to Int
{
	@:native("SCROLLBAR_LEFT_SIDE")
	public var SCROLLBAR_LEFT_SIDE;
	@:native("SCROLLBAR_RIGHT_SIDE")
	public var SCROLLBAR_RIGHT_SIDE;
}

@:include("raygui.h")
@:native("GuiListViewProperty")
extern enum abstract GuiListViewProperty(Int) from Int to Int
{
	@:native("LIST_ITEMS_HEIGHT")
	public var LIST_ITEMS_HEIGHT;
	@:native("LIST_ITEMS_PADDING")
	public var LIST_ITEMS_PADDING;
	@:native("SCROLLBAR_WIDTH")
	public var SCROLLBAR_WIDTH;
	@:native("SCROLLBAR_SIDE")
	public var SCROLLBAR_SIDE;
}

@:include("raygui.h")
@:native("GuiColorPickerProperty")
extern enum abstract GuiColorPickerProperty(Int) from Int to Int
{
	@:native("COLOR_SELECTOR_SIZE")
	public var COLOR_SELECTOR_SIZE;
	@:native("HUEBAR_WIDTH")
	public var HUEBAR_WIDTH;
	@:native("HUEBAR_PADDING")
	public var HUEBAR_PADDING;
	@:native("HUEBAR_SELECTOR_HEIGHT")
	public var HUEBAR_SELECTOR_HEIGHT;
	@:native("HUEBAR_SELECTOR_OVERFLOW")
	public var HUEBAR_SELECTOR_OVERFLOW;
}

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
