package styles;

#if !cpp
#error 'Raygui supports only C++ target platforms.'
#end
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('lavanda/style_lavanda.h')
@:unreflective
extern class Lavanda
{
	@:native('LAVANDA_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('LAVANDA_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleLavanda')
	static function guiLoadStyle():Void;
}
