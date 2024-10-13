package styles;

@:buildXml('<include name="${haxelib:raygui-impl.h}/project/Build.xml" />')
@:include('enefete/style_enefete.h')
@:unreflective
extern class Enefe
{
	@:native('ENEFETE_STYLE_PROPS_COUNT')
	static var STYLE_PROPS_COUNT:Int;

	@:native('ENEFETE_STYLE_FONT_ATLAS_COMP_SIZE')
	static var STYLE_FONT_ATLAS_COMP_SIZE:Int;
	
	@:native('GuiLoadStyleEnefe')
	static function guiLoadStyle():Void;
}
