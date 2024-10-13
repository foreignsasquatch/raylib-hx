package styles;

#if !cpp
#error 'Raygui supports only C++ target platforms.'
#end
@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('cyber/style_cyber.h')
@:unreflective
extern class Cyber
{
	@:native('CYBER_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('CYBER_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleCyber')
	static function guiLoadStyle():Void;
}
