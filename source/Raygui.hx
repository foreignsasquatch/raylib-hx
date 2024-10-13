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

extern enum abstract GuiToggleProperty(GuiTogglePropertyImpl)
{
	@:native('GROUP_PADDING') var GROUP_PADDING;

	@:from
	static public inline function fromInt(i:Int):GuiToggleProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiToggleProperty')
private extern class GuiTogglePropertyImpl {}

extern enum abstract GuiSliderProperty(GuiSliderPropertyImpl)
{
	@:native('SLIDER_WIDTH') var SLIDER_WIDTH;
	@:native('SLIDER_PADDING') var SLIDER_PADDING;

	@:from
	static public inline function fromInt(i:Int):GuiSliderProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiSliderProperty')
private extern class GuiSliderPropertyImpl {}

extern enum abstract GuiProgressBarProperty(GuiProgressBarPropertyImpl)
{
	@:native('PROGRESS_PADDING') var PROGRESS_PADDING;

	@:from
	static public inline function fromInt(i:Int):GuiProgressBarProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiProgressBarProperty')
private extern class GuiProgressBarPropertyImpl {}

extern enum abstract GuiScrollBarProperty(GuiScrollBarPropertyImpl)
{
	@:native('ARROWS_SIZE') var ARROWS_SIZE;
	@:native('ARROWS_VISIBLE') var ARROWS_VISIBLE;
	@:native('SCROLL_SLIDER_PADDING') var SCROLL_SLIDER_PADDING;
	@:native('SCROLL_SLIDER_SIZE') var SCROLL_SLIDER_SIZE;
	@:native('SCROLL_PADDING') var SCROLL_PADDING;
	@:native('SCROLL_SPEED') var SCROLL_SPEED;

	@:from
	static public inline function fromInt(i:Int):GuiScrollBarProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiScrollBarProperty')
private extern class GuiScrollBarPropertyImpl {}

extern enum abstract GuiCheckBoxProperty(GuiCheckBoxPropertyImpl)
{
	@:native('CHECK_PADDING') var CHECK_PADDING;

	@:from
	static public inline function fromInt(i:Int):GuiCheckBoxProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiCheckBoxProperty')
private extern class GuiCheckBoxPropertyImpl {}

extern enum abstract GuiComboBoxProperty(GuiComboBoxPropertyImpl)
{
	@:native('COMBO_BUTTON_WIDTH') var COMBO_BUTTON_WIDTH;
	@:native('COMBO_BUTTON_SPACING') var COMBO_BUTTON_SPACING;

	@:from
	static public inline function fromInt(i:Int):GuiComboBoxProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiComboBoxProperty')
private extern class GuiComboBoxPropertyImpl {}

extern enum abstract GuiDropdownBoxProperty(GuiDropdownBoxPropertyImpl)
{
	@:native('ARROW_PADDING') var ARROW_PADDING;
	@:native('DROPDOWN_ITEMS_SPACING') var DROPDOWN_ITEMS_SPACING;

	@:from
	static public inline function fromInt(i:Int):GuiDropdownBoxProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiDropdownBoxProperty')
private extern class GuiDropdownBoxPropertyImpl {}

extern enum abstract GuiTextBoxProperty(GuiTextBoxPropertyImpl)
{
	@:native('TEXT_READONLY') var TEXT_READONLY;

	@:from
	static public inline function fromInt(i:Int):GuiTextBoxProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiTextBoxProperty')
private extern class GuiTextBoxPropertyImpl {}

extern enum abstract GuiSpinnerProperty(GuiSpinnerPropertyImpl)
{
	@:native('SPIN_BUTTON_WIDTH') var SPIN_BUTTON_WIDTH;
	@:native('SPIN_BUTTON_SPACING') var SPIN_BUTTON_SPACING;

	@:from
	static public inline function fromInt(i:Int):GuiSpinnerProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiSpinnerProperty')
private extern class GuiSpinnerPropertyImpl {}

extern enum abstract GuiListViewProperty(GuiListViewPropertyImpl)
{
	@:native('LIST_ITEMS_HEIGHT') var LIST_ITEMS_HEIGHT;
	@:native('LIST_ITEMS_SPACING') var LIST_ITEMS_SPACING;
	@:native('SCROLLBAR_WIDTH') var SCROLLBAR_WIDTH;
	@:native('SCROLLBAR_SIDE') var SCROLLBAR_SIDE;

	@:from
	static public inline function fromInt(i:Int):GuiListViewProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiListViewProperty')
private extern class GuiListViewPropertyImpl {}

extern enum abstract GuiColorPickerProperty(GuiColorPickerPropertyImpl)
{
	@:native('COLOR_SELECTOR_SIZE') var COLOR_SELECTOR_SIZE;
	@:native('HUEBAR_WIDTH') var HUEBAR_WIDTH;
	@:native('HUEBAR_PADDING') var HUEBAR_PADDING;
	@:native('HUEBAR_SELECTOR_HEIGHT') var HUEBAR_SELECTOR_HEIGHT;
	@:native('HUEBAR_SELECTOR_OVERFLOW') var HUEBAR_SELECTOR_OVERFLOW;

	@:from
	static public inline function fromInt(i:Int):GuiColorPickerProperty
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:native('GuiColorPickerProperty')
private extern class GuiColorPickerPropertyImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raygui.h')
@:unreflective
extern class Raygui
{
}
