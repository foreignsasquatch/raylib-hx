package styles;

#if !cpp
#error 'Raygui supports only C++ target platforms.'
#end
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('ashes/style_ashes.h')
@:unreflective
extern class Ashes
{
	@:native('ASHES_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('ASHES_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleAshes')
	static function guiLoadStyle():Void;
}
