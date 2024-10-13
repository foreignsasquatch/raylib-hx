package styles;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('terminal/style_terminal.h')
@:unreflective
extern class Terminal
{
	@:native('TERMINAL_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('TERMINAL_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;

	@:native('GuiLoadStyleTerminal')
	static function guiLoadStyle():Void;
}
