package styles;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('bluish/style_bluish.h')
@:unreflective
extern class Bluish
{
	@:native('BLUISH_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('BLUISH_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleBluish')
	static function guiLoadStyle():Void;
}
