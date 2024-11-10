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

#if !cpp
#error 'Raygui supports only C++ target platforms.'
#end
import Raylib;

extern enum abstract GuiState(GuiStateImpl)
{
    @:native('STATE_NORMAL') var STATE_NORMAL;
    @:native('STATE_FOCUSED') var STATE_FOCUSED;
    @:native('STATE_PRESSED') var STATE_PRESSED;
    @:native('STATE_DISABLED') var STATE_DISABLED;

    @:from
    static inline function fromInt(i:Int):GuiState
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiState')
private extern class GuiStateImpl {}

extern enum abstract GuiTextAlignment(GuiTextAlignmentImpl)
{
    @:native('TEXT_ALIGN_LEFT') var TEXT_ALIGN_LEFT;
    @:native('TEXT_ALIGN_CENTER') var TEXT_ALIGN_CENTER;
    @:native('TEXT_ALIGN_RIGHT') var TEXT_ALIGN_RIGHT;

    @:from
    static inline function fromInt(i:Int):GuiTextAlignment
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiTextAlignment')
private extern class GuiTextAlignmentImpl {}

extern enum abstract GuiTextAlignmentVertical(GuiTextAlignmentVerticalImpl)
{
    @:native('TEXT_ALIGN_TOP') var TEXT_ALIGN_TOP;
    @:native('TEXT_ALIGN_MIDDLE') var TEXT_ALIGN_MIDDLE;
    @:native('TEXT_ALIGN_BOTTOM') var TEXT_ALIGN_BOTTOM;

    @:from
    static inline function fromInt(i:Int):GuiTextAlignmentVertical
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiTextAlignmentVertical')
private extern class GuiTextAlignmentVerticalImpl {}

extern enum abstract GuiTextWrapMode(GuiTextWrapModeImpl)
{
    @:native('TEXT_WRAP_NONE') var TEXT_WRAP_NONE;
    @:native('TEXT_WRAP_CHAR') var TEXT_WRAP_CHAR;
    @:native('TEXT_WRAP_WORD') var TEXT_WRAP_WORD;

    @:from
    static inline function fromInt(i:Int):GuiTextWrapMode
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
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
    static inline function fromInt(i:Int):GuiControl
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
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
    static inline function fromInt(i:Int):GuiControlProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
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
    static inline function fromInt(i:Int):GuiDefaultProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiDefaultProperty')
private extern class GuiDefaultPropertyImpl {}

extern enum abstract GuiToggleProperty(GuiTogglePropertyImpl)
{
    @:native('GROUP_PADDING') var GROUP_PADDING;

    @:from
    static inline function fromInt(i:Int):GuiToggleProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiToggleProperty')
private extern class GuiTogglePropertyImpl {}

extern enum abstract GuiSliderProperty(GuiSliderPropertyImpl)
{
    @:native('SLIDER_WIDTH') var SLIDER_WIDTH;
    @:native('SLIDER_PADDING') var SLIDER_PADDING;

    @:from
    static inline function fromInt(i:Int):GuiSliderProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiSliderProperty')
private extern class GuiSliderPropertyImpl {}

extern enum abstract GuiProgressBarProperty(GuiProgressBarPropertyImpl)
{
    @:native('PROGRESS_PADDING') var PROGRESS_PADDING;

    @:from
    static inline function fromInt(i:Int):GuiProgressBarProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
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
    static inline function fromInt(i:Int):GuiScrollBarProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiScrollBarProperty')
private extern class GuiScrollBarPropertyImpl {}

extern enum abstract GuiCheckBoxProperty(GuiCheckBoxPropertyImpl)
{
    @:native('CHECK_PADDING') var CHECK_PADDING;

    @:from
    static inline function fromInt(i:Int):GuiCheckBoxProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiCheckBoxProperty')
private extern class GuiCheckBoxPropertyImpl {}

extern enum abstract GuiComboBoxProperty(GuiComboBoxPropertyImpl)
{
    @:native('COMBO_BUTTON_WIDTH') var COMBO_BUTTON_WIDTH;
    @:native('COMBO_BUTTON_SPACING') var COMBO_BUTTON_SPACING;

    @:from
    static inline function fromInt(i:Int):GuiComboBoxProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiComboBoxProperty')
private extern class GuiComboBoxPropertyImpl {}

extern enum abstract GuiDropdownBoxProperty(GuiDropdownBoxPropertyImpl)
{
    @:native('ARROW_PADDING') var ARROW_PADDING;
    @:native('DROPDOWN_ITEMS_SPACING') var DROPDOWN_ITEMS_SPACING;
    @:native('DROPDOWN_ARROW_HIDDEN') var DROPDOWN_ITEMS_SPACING;
    @:native('DROPDOWN_ROLL_UP') var DROPDOWN_ITEMS_SPACING;

    @:from
    static inline function fromInt(i:Int):GuiDropdownBoxProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiDropdownBoxProperty')
private extern class GuiDropdownBoxPropertyImpl {}

extern enum abstract GuiTextBoxProperty(GuiTextBoxPropertyImpl)
{
    @:native('TEXT_READONLY') var TEXT_READONLY;

    @:from
    static inline function fromInt(i:Int):GuiTextBoxProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiTextBoxProperty')
private extern class GuiTextBoxPropertyImpl {}

extern enum abstract GuiSpinnerProperty(GuiSpinnerPropertyImpl)
{
    @:native('SPIN_BUTTON_WIDTH') var SPIN_BUTTON_WIDTH;
    @:native('SPIN_BUTTON_SPACING') var SPIN_BUTTON_SPACING;

    @:from
    static inline function fromInt(i:Int):GuiSpinnerProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiSpinnerProperty')
private extern class GuiSpinnerPropertyImpl {}

extern enum abstract GuiListViewProperty(GuiListViewPropertyImpl)
{
    @:native('LIST_ITEMS_HEIGHT') var LIST_ITEMS_HEIGHT;
    @:native('LIST_ITEMS_SPACING') var LIST_ITEMS_SPACING;
    @:native('SCROLLBAR_WIDTH') var SCROLLBAR_WIDTH;
    @:native('SCROLLBAR_SIDE') var SCROLLBAR_SIDE;
    @:native('LIST_ITEMS_BORDER_WIDTH') var LIST_ITEMS_BORDER_WIDTH;

    @:from
    static inline function fromInt(i:Int):GuiListViewProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
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
    static inline function fromInt(i:Int):GuiColorPickerProperty
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiColorPickerProperty')
private extern class GuiColorPickerPropertyImpl {}

#if (!RAYGUI_NO_ICONS && !RAYGUI_CUSTOM_ICONS)
extern enum abstract GuiIconName(GuiIconNameImpl)
{
    @:native('ICON_NONE') var ICON_NONE;
    @:native('ICON_FOLDER_FILE_OPEN') var ICON_FOLDER_FILE_OPEN;
    @:native('ICON_FILE_SAVE_CLASSIC') var ICON_FILE_SAVE_CLASSIC;
    @:native('ICON_FOLDER_OPEN') var ICON_FOLDER_OPEN;
    @:native('ICON_FOLDER_SAVE') var ICON_FOLDER_SAVE;
    @:native('ICON_FILE_OPEN') var ICON_FILE_OPEN;
    @:native('ICON_FILE_SAVE') var ICON_FILE_SAVE;
    @:native('ICON_FILE_EXPORT') var ICON_FILE_EXPORT;
    @:native('ICON_FILE_ADD') var ICON_FILE_ADD;
    @:native('ICON_FILE_DELETE') var ICON_FILE_DELETE;
    @:native('ICON_FILETYPE_TEXT') var ICON_FILETYPE_TEXT;
    @:native('ICON_FILETYPE_AUDIO') var ICON_FILETYPE_AUDIO;
    @:native('ICON_FILETYPE_IMAGE') var ICON_FILETYPE_IMAGE;
    @:native('ICON_FILETYPE_PLAY') var ICON_FILETYPE_PLAY;
    @:native('ICON_FILETYPE_VIDEO') var ICON_FILETYPE_VIDEO;
    @:native('ICON_FILETYPE_INFO') var ICON_FILETYPE_INFO;
    @:native('ICON_FILE_COPY') var ICON_FILE_COPY;
    @:native('ICON_FILE_CUT') var ICON_FILE_CUT;
    @:native('ICON_FILE_PASTE') var ICON_FILE_PASTE;
    @:native('ICON_CURSOR_HAND') var ICON_CURSOR_HAND;
    @:native('ICON_CURSOR_POINTER') var ICON_CURSOR_POINTER;
    @:native('ICON_CURSOR_CLASSIC') var ICON_CURSOR_CLASSIC;
    @:native('ICON_PENCIL') var ICON_PENCIL;
    @:native('ICON_PENCIL_BIG') var ICON_PENCIL_BIG;
    @:native('ICON_BRUSH_CLASSIC') var ICON_BRUSH_CLASSIC;
    @:native('ICON_BRUSH_PAINTER') var ICON_BRUSH_PAINTER;
    @:native('ICON_WATER_DROP') var ICON_WATER_DROP;
    @:native('ICON_COLOR_PICKER') var ICON_COLOR_PICKER;
    @:native('ICON_RUBBER') var ICON_RUBBER;
    @:native('ICON_COLOR_BUCKET') var ICON_COLOR_BUCKET;
    @:native('ICON_TEXT_T') var ICON_TEXT_T;
    @:native('ICON_TEXT_A') var ICON_TEXT_A;
    @:native('ICON_SCALE') var ICON_SCALE;
    @:native('ICON_RESIZE') var ICON_RESIZE;
    @:native('ICON_FILTER_POINT') var ICON_FILTER_POINT;
    @:native('ICON_FILTER_BILINEAR') var ICON_FILTER_BILINEAR;
    @:native('ICON_CROP') var ICON_CROP;
    @:native('ICON_CROP_ALPHA') var ICON_CROP_ALPHA;
    @:native('ICON_SQUARE_TOGGLE') var ICON_SQUARE_TOGGLE;
    @:native('ICON_SYMMETRY') var ICON_SYMMETRY;
    @:native('ICON_SYMMETRY_HORIZONTAL') var ICON_SYMMETRY_HORIZONTAL;
    @:native('ICON_SYMMETRY_VERTICAL') var ICON_SYMMETRY_VERTICAL;
    @:native('ICON_LENS') var ICON_LENS;
    @:native('ICON_LENS_BIG') var ICON_LENS_BIG;
    @:native('ICON_EYE_ON') var ICON_EYE_ON;
    @:native('ICON_EYE_OFF') var ICON_EYE_OFF;
    @:native('ICON_FILTER_TOP') var ICON_FILTER_TOP;
    @:native('ICON_FILTER') var ICON_FILTER;
    @:native('ICON_TARGET_POINT') var ICON_TARGET_POINT;
    @:native('ICON_TARGET_SMALL') var ICON_TARGET_SMALL;
    @:native('ICON_TARGET_BIG') var ICON_TARGET_BIG;
    @:native('ICON_TARGET_MOVE') var ICON_TARGET_MOVE;
    @:native('ICON_CURSOR_MOVE') var ICON_CURSOR_MOVE;
    @:native('ICON_CURSOR_SCALE') var ICON_CURSOR_SCALE;
    @:native('ICON_CURSOR_SCALE_RIGHT') var ICON_CURSOR_SCALE_RIGHT;
    @:native('ICON_CURSOR_SCALE_LEFT') var ICON_CURSOR_SCALE_LEFT;
    @:native('ICON_UNDO') var ICON_UNDO;
    @:native('ICON_REDO') var ICON_REDO;
    @:native('ICON_REREDO') var ICON_REREDO;
    @:native('ICON_MUTATE') var ICON_MUTATE;
    @:native('ICON_ROTATE') var ICON_ROTATE;
    @:native('ICON_REPEAT') var ICON_REPEAT;
    @:native('ICON_SHUFFLE') var ICON_SHUFFLE;
    @:native('ICON_EMPTYBOX') var ICON_EMPTYBOX;
    @:native('ICON_TARGET') var ICON_TARGET;
    @:native('ICON_TARGET_SMALL_FILL') var ICON_TARGET_SMALL_FILL;
    @:native('ICON_TARGET_BIG_FILL') var ICON_TARGET_BIG_FILL;
    @:native('ICON_TARGET_MOVE_FILL') var ICON_TARGET_MOVE_FILL;
    @:native('ICON_CURSOR_MOVE_FILL') var ICON_CURSOR_MOVE_FILL;
    @:native('ICON_CURSOR_SCALE_FILL') var ICON_CURSOR_SCALE_FILL;
    @:native('ICON_CURSOR_SCALE_RIGHT_FILL') var ICON_CURSOR_SCALE_RIGHT_FILL;
    @:native('ICON_CURSOR_SCALE_LEFT_FILL') var ICON_CURSOR_SCALE_LEFT_FILL;
    @:native('ICON_UNDO_FILL') var ICON_UNDO_FILL;
    @:native('ICON_REDO_FILL') var ICON_REDO_FILL;
    @:native('ICON_REREDO_FILL') var ICON_REREDO_FILL;
    @:native('ICON_MUTATE_FILL') var ICON_MUTATE_FILL;
    @:native('ICON_ROTATE_FILL') var ICON_ROTATE_FILL;
    @:native('ICON_REPEAT_FILL') var ICON_REPEAT_FILL;
    @:native('ICON_SHUFFLE_FILL') var ICON_SHUFFLE_FILL;
    @:native('ICON_EMPTYBOX_SMALL') var ICON_EMPTYBOX_SMALL;
    @:native('ICON_BOX') var ICON_BOX;
    @:native('ICON_BOX_TOP') var ICON_BOX_TOP;
    @:native('ICON_BOX_TOP_RIGHT') var ICON_BOX_TOP_RIGHT;
    @:native('ICON_BOX_RIGHT') var ICON_BOX_RIGHT;
    @:native('ICON_BOX_BOTTOM_RIGHT') var ICON_BOX_BOTTOM_RIGHT;
    @:native('ICON_BOX_BOTTOM') var ICON_BOX_BOTTOM;
    @:native('ICON_BOX_BOTTOM_LEFT') var ICON_BOX_BOTTOM_LEFT;
    @:native('ICON_BOX_LEFT') var ICON_BOX_LEFT;
    @:native('ICON_BOX_TOP_LEFT') var ICON_BOX_TOP_LEFT;
    @:native('ICON_BOX_CENTER') var ICON_BOX_CENTER;
    @:native('ICON_BOX_CIRCLE_MASK') var ICON_BOX_CIRCLE_MASK;
    @:native('ICON_POT') var ICON_POT;
    @:native('ICON_ALPHA_MULTIPLY') var ICON_ALPHA_MULTIPLY;
    @:native('ICON_ALPHA_CLEAR') var ICON_ALPHA_CLEAR;
    @:native('ICON_DITHERING') var ICON_DITHERING;
    @:native('ICON_MIPMAPS') var ICON_MIPMAPS;
    @:native('ICON_BOX_GRID') var ICON_BOX_GRID;
    @:native('ICON_GRID') var ICON_GRID;
    @:native('ICON_BOX_CORNERS_SMALL') var ICON_BOX_CORNERS_SMALL;
    @:native('ICON_BOX_CORNERS_BIG') var ICON_BOX_CORNERS_BIG;
    @:native('ICON_FOUR_BOXES') var ICON_FOUR_BOXES;
    @:native('ICON_GRID_FILL') var ICON_GRID_FILL;
    @:native('ICON_BOX_MULTISIZE') var ICON_BOX_MULTISIZE;
    @:native('ICON_ZOOM_SMALL') var ICON_ZOOM_SMALL;
    @:native('ICON_ZOOM_MEDIUM') var ICON_ZOOM_MEDIUM;
    @:native('ICON_ZOOM_BIG') var ICON_ZOOM_BIG;
    @:native('ICON_ZOOM_ALL') var ICON_ZOOM_ALL;
    @:native('ICON_ZOOM_CENTER') var ICON_ZOOM_CENTER;
    @:native('ICON_BOX_DOTS_SMALL') var ICON_BOX_DOTS_SMALL;
    @:native('ICON_BOX_DOTS_BIG') var ICON_BOX_DOTS_BIG;
    @:native('ICON_BOX_CONCENTRIC') var ICON_BOX_CONCENTRIC;
    @:native('ICON_BOX_GRID_BIG') var ICON_BOX_GRID_BIG;
    @:native('ICON_OK_TICK') var ICON_OK_TICK;
    @:native('ICON_CROSS') var ICON_CROSS;
    @:native('ICON_ARROW_LEFT') var ICON_ARROW_LEFT;
    @:native('ICON_ARROW_RIGHT') var ICON_ARROW_RIGHT;
    @:native('ICON_ARROW_DOWN') var ICON_ARROW_DOWN;
    @:native('ICON_ARROW_UP') var ICON_ARROW_UP;
    @:native('ICON_ARROW_LEFT_FILL') var ICON_ARROW_LEFT_FILL;
    @:native('ICON_ARROW_RIGHT_FILL') var ICON_ARROW_RIGHT_FILL;
    @:native('ICON_ARROW_DOWN_FILL') var ICON_ARROW_DOWN_FILL;
    @:native('ICON_ARROW_UP_FILL') var ICON_ARROW_UP_FILL;
    @:native('ICON_AUDIO') var ICON_AUDIO;
    @:native('ICON_FX') var ICON_FX;
    @:native('ICON_WAVE') var ICON_WAVE;
    @:native('ICON_WAVE_SINUS') var ICON_WAVE_SINUS;
    @:native('ICON_WAVE_SQUARE') var ICON_WAVE_SQUARE;
    @:native('ICON_WAVE_TRIANGULAR') var ICON_WAVE_TRIANGULAR;
    @:native('ICON_CROSS_SMALL') var ICON_CROSS_SMALL;
    @:native('ICON_PLAYER_PREVIOUS') var ICON_PLAYER_PREVIOUS;
    @:native('ICON_PLAYER_PLAY_BACK') var ICON_PLAYER_PLAY_BACK;
    @:native('ICON_PLAYER_PLAY') var ICON_PLAYER_PLAY;
    @:native('ICON_PLAYER_PAUSE') var ICON_PLAYER_PAUSE;
    @:native('ICON_PLAYER_STOP') var ICON_PLAYER_STOP;
    @:native('ICON_PLAYER_NEXT') var ICON_PLAYER_NEXT;
    @:native('ICON_PLAYER_RECORD') var ICON_PLAYER_RECORD;
    @:native('ICON_MAGNET') var ICON_MAGNET;
    @:native('ICON_LOCK_CLOSE') var ICON_LOCK_CLOSE;
    @:native('ICON_LOCK_OPEN') var ICON_LOCK_OPEN;
    @:native('ICON_CLOCK') var ICON_CLOCK;
    @:native('ICON_TOOLS') var ICON_TOOLS;
    @:native('ICON_GEAR') var ICON_GEAR;
    @:native('ICON_GEAR_BIG') var ICON_GEAR_BIG;
    @:native('ICON_BIN') var ICON_BIN;
    @:native('ICON_HAND_POINTER') var ICON_HAND_POINTER;
    @:native('ICON_LASER') var ICON_LASER;
    @:native('ICON_COIN') var ICON_COIN;
    @:native('ICON_EXPLOSION') var ICON_EXPLOSION;
    @:native('ICON_1UP') var ICON_1UP;
    @:native('ICON_PLAYER') var ICON_PLAYER;
    @:native('ICON_PLAYER_JUMP') var ICON_PLAYER_JUMP;
    @:native('ICON_KEY') var ICON_KEY;
    @:native('ICON_DEMON') var ICON_DEMON;
    @:native('ICON_TEXT_POPUP') var ICON_TEXT_POPUP;
    @:native('ICON_GEAR_EX') var ICON_GEAR_EX;
    @:native('ICON_CRACK') var ICON_CRACK;
    @:native('ICON_CRACK_POINTS') var ICON_CRACK_POINTS;
    @:native('ICON_STAR') var ICON_STAR;
    @:native('ICON_DOOR') var ICON_DOOR;
    @:native('ICON_EXIT') var ICON_EXIT;
    @:native('ICON_MODE_2D') var ICON_MODE_2D;
    @:native('ICON_MODE_3D') var ICON_MODE_3D;
    @:native('ICON_CUBE') var ICON_CUBE;
    @:native('ICON_CUBE_FACE_TOP') var ICON_CUBE_FACE_TOP;
    @:native('ICON_CUBE_FACE_LEFT') var ICON_CUBE_FACE_LEFT;
    @:native('ICON_CUBE_FACE_FRONT') var ICON_CUBE_FACE_FRONT;
    @:native('ICON_CUBE_FACE_BOTTOM') var ICON_CUBE_FACE_BOTTOM;
    @:native('ICON_CUBE_FACE_RIGHT') var ICON_CUBE_FACE_RIGHT;
    @:native('ICON_CUBE_FACE_BACK') var ICON_CUBE_FACE_BACK;
    @:native('ICON_CAMERA') var ICON_CAMERA;
    @:native('ICON_SPECIAL') var ICON_SPECIAL;
    @:native('ICON_LINK_NET') var ICON_LINK_NET;
    @:native('ICON_LINK_BOXES') var ICON_LINK_BOXES;
    @:native('ICON_LINK_MULTI') var ICON_LINK_MULTI;
    @:native('ICON_LINK') var ICON_LINK;
    @:native('ICON_LINK_BROKE') var ICON_LINK_BROKE;
    @:native('ICON_TEXT_NOTES') var ICON_TEXT_NOTES;
    @:native('ICON_NOTEBOOK') var ICON_NOTEBOOK;
    @:native('ICON_SUITCASE') var ICON_SUITCASE;
    @:native('ICON_SUITCASE_ZIP') var ICON_SUITCASE_ZIP;
    @:native('ICON_MAILBOX') var ICON_MAILBOX;
    @:native('ICON_MONITOR') var ICON_MONITOR;
    @:native('ICON_PRINTER') var ICON_PRINTER;
    @:native('ICON_PHOTO_CAMERA') var ICON_PHOTO_CAMERA;
    @:native('ICON_PHOTO_CAMERA_FLASH') var ICON_PHOTO_CAMERA_FLASH;
    @:native('ICON_HOUSE') var ICON_HOUSE;
    @:native('ICON_HEART') var ICON_HEART;
    @:native('ICON_CORNER') var ICON_CORNER;
    @:native('ICON_VERTICAL_BARS') var ICON_VERTICAL_BARS;
    @:native('ICON_VERTICAL_BARS_FILL') var ICON_VERTICAL_BARS_FILL;
    @:native('ICON_LIFE_BARS') var ICON_LIFE_BARS;
    @:native('ICON_INFO') var ICON_INFO;
    @:native('ICON_CROSSLINE') var ICON_CROSSLINE;
    @:native('ICON_HELP') var ICON_HELP;
    @:native('ICON_FILETYPE_ALPHA') var ICON_FILETYPE_ALPHA;
    @:native('ICON_FILETYPE_HOME') var ICON_FILETYPE_HOME;
    @:native('ICON_LAYERS_VISIBLE') var ICON_LAYERS_VISIBLE;
    @:native('ICON_LAYERS') var ICON_LAYERS;
    @:native('ICON_WINDOW') var ICON_WINDOW;
    @:native('ICON_HIDPI') var ICON_HIDPI;
    @:native('ICON_FILETYPE_BINARY') var ICON_FILETYPE_BINARY;
    @:native('ICON_HEX') var ICON_HEX;
    @:native('ICON_SHIELD') var ICON_SHIELD;
    @:native('ICON_FILE_NEW') var ICON_FILE_NEW;
    @:native('ICON_FOLDER_ADD') var ICON_FOLDER_ADD;
    @:native('ICON_ALARM') var ICON_ALARM;
    @:native('ICON_CPU') var ICON_CPU;
    @:native('ICON_ROM') var ICON_ROM;
    @:native('ICON_STEP_OVER') var ICON_STEP_OVER;
    @:native('ICON_STEP_INTO') var ICON_STEP_INTO;
    @:native('ICON_STEP_OUT') var ICON_STEP_OUT;
    @:native('ICON_RESTART') var ICON_RESTART;
    @:native('ICON_BREAKPOINT_ON') var ICON_BREAKPOINT_ON;
    @:native('ICON_BREAKPOINT_OFF') var ICON_BREAKPOINT_OFF;
    @:native('ICON_BURGER_MENU') var ICON_BURGER_MENU;
    @:native('ICON_CASE_SENSITIVE') var ICON_CASE_SENSITIVE;
    @:native('ICON_REG_EXP') var ICON_REG_EXP;
    @:native('ICON_FOLDER') var ICON_FOLDER;
    @:native('ICON_FILE') var ICON_FILE;
    @:native('ICON_SAND_TIMER') var ICON_SAND_TIMER;
    @:native('ICON_WARNING') var ICON_WARNING;
    @:native('ICON_HELP_BOX') var ICON_HELP_BOX;
    @:native('ICON_INFO_BOX') var ICON_INFO_BOX;
    @:native('ICON_PRIORITY') var ICON_PRIORITY;
    @:native('ICON_LAYERS_ISO') var ICON_LAYERS_ISO;
    @:native('ICON_LAYERS2') var ICON_LAYERS2;
    @:native('ICON_MLAYERS') var ICON_MLAYERS;
    @:native('ICON_MAPS') var ICON_MAPS;
    @:native('ICON_HOT') var ICON_HOT;
    @:native('ICON_229') var ICON_229;
    @:native('ICON_230') var ICON_230;
    @:native('ICON_231') var ICON_231;
    @:native('ICON_232') var ICON_232;
    @:native('ICON_233') var ICON_233;
    @:native('ICON_234') var ICON_234;
    @:native('ICON_235') var ICON_235;
    @:native('ICON_236') var ICON_236;
    @:native('ICON_237') var ICON_237;
    @:native('ICON_238') var ICON_238;
    @:native('ICON_239') var ICON_239;
    @:native('ICON_240') var ICON_240;
    @:native('ICON_241') var ICON_241;
    @:native('ICON_242') var ICON_242;
    @:native('ICON_243') var ICON_243;
    @:native('ICON_244') var ICON_244;
    @:native('ICON_245') var ICON_245;
    @:native('ICON_246') var ICON_246;
    @:native('ICON_247') var ICON_247;
    @:native('ICON_248') var ICON_248;
    @:native('ICON_249') var ICON_249;
    @:native('ICON_250') var ICON_250;
    @:native('ICON_251') var ICON_251;
    @:native('ICON_252') var ICON_252;
    @:native('ICON_253') var ICON_253;
    @:native('ICON_254') var ICON_254;
    @:native('ICON_255') var ICON_255;

    @:from
    static inline function fromInt(i:Int):GuiIconName
        return cast i;

    @:to
    inline function toInt():Int
        return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:native('GuiIconName')
private extern class GuiIconNameImpl {}
#end

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('impl/raygui-impl.h')
@:unreflective
extern class Raygui
{
    @:native('RAYGUI_VERSION_MAJOR') static var VERSION_MAJOR:Int;
    @:native('RAYGUI_VERSION_MINOR') static var VERSION_MINOR:Int;
    @:native('RAYGUI_VERSION_PATCH') static var VERSION_PATCH:Int;
    @:native('::String(RAYGUI_VERSION)') static var VERSION:String;

    @:native('SCROLLBAR_LEFT_SIDE') static var SCROLLBAR_LEFT_SIDE:Int;
    @:native('SCROLLBAR_RIGHT_SIDE') static var SCROLLBAR_RIGHT_SIDE:Int;

    @:native('GuiEnable') static function guiEnable():Void;
    @:native('GuiDisable') static function guiDisable():Void;
    @:native('GuiLock') static function guiLock():Void;
    @:native('GuiUnlock') static function guiUnlock():Void;
    @:native('GuiIsLocked') static function guiIsLocked():Bool;
    @:native('GuiSetAlpha') static function guiSetAlpha(alpha:Single):Void;
    @:native('GuiSetState') static function guiSetState(state:Int):Void;
    @:native('GuiGetState') static function guiGetState():Int;
    @:native('GuiSetFont') static function guiSetFont(font:FontImpl):Void;
    @:native('GuiGetFont') static function guiGetFont():FontImpl;
    @:native('GuiSetStyle') static function guiSetStyle(control:Int, property:Int, value:Int):Void;
    @:native('GuiGetStyle') static function guiGetStyle(control:Int, property:Int):Int;
    @:native('GuiLoadStyle') static function guiLoadStyle(fileName:cpp.ConstCharStar):Void;
    @:native('GuiLoadStyleDefault') static function guiLoadStyleDefault():Void;
    @:native('GuiEnableTooltip') static function guiEnableTooltip():Void;
    @:native('GuiDisableTooltip') static function guiDisableTooltip():Void;
    @:native('GuiSetTooltip') static function guiSetTooltip(tooltip:cpp.ConstCharStar):Void;
    @:native('GuiIconText') static function guiIconText(iconId:Int, text:cpp.ConstCharStar):cpp.ConstCharStar;
    #if !RAYGUI_NO_ICONS
    @:native('GuiSetIconScale') static function guiSetIconScale(scale:Int):Void;
    @:native('GuiGetIcons') static function guiGetIcons():utils.UnsignedPointer;
    @:native('GuiLoadIcons') static function guiLoadIcons(fileName:cpp.ConstCharStar, loadIconsName:Bool):cpp.RawPointer<cpp.CastCharStar>;
    @:native('GuiDrawIcon') static function guiDrawIcon(iconId:Int, posX:Int, posY:Int, pixelSize:Int, color:ColorImpl):Void;
    #end
    @:native('GuiWindowBox') static function guiWindowBox(bounds:RectangleImpl, title:cpp.ConstCharStar):Int;
    @:native('GuiGroupBox') static function guiGroupBox(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiLine') static function guiLine(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiPanel') static function guiPanel(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiTabBar') static function guiTabBar(bounds:RectangleImpl, text:utils.ConstCharStarPointer, count:Int, active:utils.IntPointer):Int;
    @:native('GuiScrollPanel') static function guiScrollPanel(bounds:RectangleImpl, text:cpp.ConstCharStar, content:RectangleImpl,
        scroll:cpp.RawPointer<Vector2Impl>, view:cpp.RawPointer<RectangleImpl>):Int;
    @:native('GuiLabel') static function guiLabel(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiButton') static function guiButton(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiLabelButton') static function guiLabelButton(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiToggle') static function guiToggle(bounds:RectangleImpl, text:cpp.ConstCharStar, active:utils.BoolPointer):Int;
    @:native('GuiToggleGroup') static function guiToggleGroup(bounds:RectangleImpl, text:cpp.ConstCharStar, active:utils.IntPointer):Int;
    @:native('GuiToggleSlider') static function guiToggleSlider(bounds:RectangleImpl, text:cpp.ConstCharStar, active:utils.IntPointer):Int;
    @:native('GuiCheckBox') static function guiCheckBox(bounds:RectangleImpl, text:cpp.ConstCharStar, checked:utils.BoolPointer):Int;
    @:native('GuiComboBox') static function guiComboBox(bounds:RectangleImpl, text:cpp.ConstCharStar, active:utils.IntPointer):Int;
    @:native('GuiDropdownBox') static function guiDropdownBox(bounds:RectangleImpl, text:cpp.ConstCharStar, active:utils.IntPointer, editMode:Bool):Int;
    @:native('GuiSpinner') static function guiSpinner(bounds:RectangleImpl, text:cpp.ConstCharStar, value:utils.IntPointer, minValue:Int, maxValue:Int,
        editMode:Bool):Int;
    @:native('GuiValueBox') static function guiValueBox(bounds:RectangleImpl, text:cpp.ConstCharStar, value:utils.IntPointer, minValue:Int, maxValue:Int,
        editMode:Bool):Int;
    @:native('GuiValueBoxFloat') static function guiValueBoxFloat(bounds:RectangleImpl, text:cpp.ConstCharStar, textValue:cpp.CastCharStar, value:utils.FloatPointer,
        editMode:Bool):Int;
    @:native('GuiTextBox') static function guiTextBox(bounds:RectangleImpl, text:cpp.CastCharStar, textSize:Int, editMode:Bool):Int;
    @:native('GuiSlider') static function guiSlider(bounds:RectangleImpl, textLeft:cpp.ConstCharStar, textRight:cpp.ConstCharStar, value:utils.FloatPointer,
        minValue:Single, maxValue:Single):Int;
    @:native('GuiSliderBar') static function guiSliderBar(bounds:RectangleImpl, textLeft:cpp.ConstCharStar, textRight:cpp.ConstCharStar,
        value:utils.FloatPointer, minValue:Single, maxValue:Single):Int;
    @:native('GuiProgressBar') static function guiProgressBar(bounds:RectangleImpl, textLeft:cpp.ConstCharStar, textRight:cpp.ConstCharStar,
        value:utils.FloatPointer, minValue:Single, maxValue:Single):Int;
    @:native('GuiStatusBar') static function guiStatusBar(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiDummyRec') static function guiDummyRec(bounds:RectangleImpl, text:cpp.ConstCharStar):Int;
    @:native('GuiGrid') static function guiGrid(bounds:RectangleImpl, text:cpp.ConstCharStar, spacing:Single, subdivs:Int,
        mouseCell:cpp.RawPointer<Vector2Impl>):Int;
    @:native('GuiListView') static function guiListView(bounds:RectangleImpl, text:cpp.ConstCharStar, scrollIndex:utils.IntPointer, active:utils.IntPointer):Int;
    @:native('GuiListViewEx') static function guiListViewEx(bounds:RectangleImpl, text:utils.ConstCharStarPointer, count:Int,
        scrollIndex:utils.IntPointer, active:utils.IntPointer, focus:utils.IntPointer):Int;
    @:native('GuiMessageBox') static function guiMessageBox(bounds:RectangleImpl, title:cpp.ConstCharStar, message:cpp.ConstCharStar,
        buttons:cpp.ConstCharStar):Int;
    @:native('GuiTextInputBox') static function guiTextInputBox(bounds:RectangleImpl, title:cpp.ConstCharStar, message:cpp.ConstCharStar,
        buttons:cpp.ConstCharStar, text:cpp.CastCharStar, textMaxSize:Int, secretViewActive:utils.BoolPointer):Int;
    @:native('GuiColorPicker') static function guiColorPicker(bounds:RectangleImpl, text:cpp.ConstCharStar, color:cpp.RawPointer<ColorImpl>):Int;
    @:native('GuiColorPanel') static function guiColorPanel(bounds:RectangleImpl, text:cpp.ConstCharStar, color:cpp.RawPointer<ColorImpl>):Int;
    @:native('GuiColorBarAlpha') static function guiColorBarAlpha(bounds:RectangleImpl, text:cpp.ConstCharStar, alpha:utils.FloatPointer):Int;
    @:native('GuiColorBarHue') static function guiColorBarHue(bounds:RectangleImpl, text:cpp.ConstCharStar, value:utils.FloatPointer):Int;
    @:native('GuiColorPickerHSV') static function guiColorPickerHSV(bounds:RectangleImpl, text:cpp.ConstCharStar, colorHsv:cpp.RawPointer<Vector3Impl>):Int;
    @:native('GuiColorPanelHSV') static function guiColorPanelHSV(bounds:RectangleImpl, text:cpp.ConstCharStar, colorHsv:cpp.RawPointer<Vector3Impl>):Int;
}
