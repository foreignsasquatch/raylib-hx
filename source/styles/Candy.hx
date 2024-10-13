package styles;

@:buildXml('<include name="${haxelib:raygui-impl.h}/project/Build.xml" />')
@:include('candy/style_candy.h')
@:unreflective
extern class Candy
{
	@:native('CANDY_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('CANDY_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleCandy')
	static function guiLoadStyle():Void;
}