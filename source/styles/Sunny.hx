package styles;

@:buildXml('<include name="${haxelib:raygui-impl.h}/project/Build.xml" />')
@:include('sunny/style_sunny.h')
@:unreflective
extern class Sunny
{
	@:native('SUNNY_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('SUNNY_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleSunny')
	static function guiLoadStyle():Void;
}
