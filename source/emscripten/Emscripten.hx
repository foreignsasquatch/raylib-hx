package emscripten;

@:include("emscripten.h")
/** Use only when using  **/
extern class Emscripten  {
    @:native("emscripten_set_main_loop") static function setMainLoop(func:cpp.Callable<Dynamic>, fps:Int, simulateInfiniteLoop:Int):Void;
}