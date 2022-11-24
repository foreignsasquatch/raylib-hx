package emscripten;

#if wasm
@:include("emscripten.h")
extern class Emscripten  {
    @:native("emscripten_set_main_loop") static function setMainLoop(func:cpp.Callable<Dynamic>, fps:Int, simulateInfiniteLoop:Int):Void;
}
#end