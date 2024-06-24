@:include("rlImGui.h")
extern class RlImGui {
	@:native("rlImGuiSetup") static function imGuiSetup(darkTheme:Bool):Void;
	@:native("rlImGuiBegin") static function imGuiBegin():Void;
	@:native("rlImGuiEnd") static function imGuiEnd():Void;
	@:native("rlImGuiShutdown") static function imGuiShutdown():Void;
}
