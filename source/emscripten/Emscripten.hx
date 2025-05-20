package emscripten;

typedef Em_Callback_Func = cpp.Callable<Void->Void>;
typedef Em_Arg_Callback_Func = cpp.Callable<(raylib.utils.VoidPointer) -> Void>;

@:include('emscripten.h')
extern class Emscripten
{
    @:native('emscripten_set_main_loop')
    static function set_main_loop(func:Em_Callback_Func, fps:Int, simulate_infinite_loop:Bool):Void;

    @:native('EM_TIMING_SETTIMEOUT')
    static var TIMING_SETTIMEOUT:Int;

    @:native('EM_TIMING_RAF')
    static var TIMING_RAF:Int;

    @:native('EM_TIMING_SETIMMEDIATE')
    static var TIMING_SETIMMEDIATE:Int;

    @:native('emscripten_set_main_loop_timing')
    static function set_main_loop_timing(mode:Int, value:Int):Int;

    @:native('emscripten_get_main_loop_timing')
    static function get_main_loop_timing(mode:raylib.utils.IntPointer, value:raylib.utils.IntPointer):Void;

    @:native('emscripten_set_main_loop_arg')
    static function set_main_loop_arg(func:Em_Arg_Callback_Func, arg:raylib.utils.VoidPointer, fps:Int, simulate_infinite_loop:Bool):Void;

    @:native('emscripten_pause_main_loop')
    static function pause_main_loop():Void;

    @:native('emscripten_resume_main_loop')
    static function resume_main_loop():Void;

    @:native('emscripten_cancel_main_loop')
    static function cancel_main_loop():Void;
}
