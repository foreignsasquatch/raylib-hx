package styles;

#if !cpp
#error 'Raygui supports only C++ target platforms.'
#end
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('dark/style_dark.h')
@:unreflective
extern class Dark
{
	@:native('DARK_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('DARK_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleDark')
	static function guiLoadStyle():Void;
}
