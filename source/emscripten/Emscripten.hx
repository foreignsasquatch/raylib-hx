package emscripten;

import cpp.RawPointer;

/**
 * Function type for simple callbacks with no arguments
 */
typedef Em_Callback_Func = cpp.Callable<Void->Void>;

/**
 * Function type for callbacks that accept a pointer argument
 */
typedef Em_Arg_Callback_Func = cpp.Callable<RawPointer<cpp.Void>->Void>;

/**
 * Bindings to Emscripten's runtime API for WebAssembly applications.
 */
@:include('emscripten.h')
extern class Emscripten
{
    /**
     * Sets a C function as the main event loop for the application.
     * 
     * The function is called repeatedly at the specified frequency (FPS).
     * 
     * @param func The function to be called each frame
     * @param fps Frames per second. Use 0 for browser's optimal refresh rate
     * @param simulate_infinite_loop If true, this function does not return (blocks the call stack)
     */
    @:native('emscripten_set_main_loop')
    static function set_main_loop(func:Em_Callback_Func, fps:Int, simulate_infinite_loop:Bool):Void;

    /**
     * Timing mode using setTimeout for the main loop.
     */
    @:native('EM_TIMING_SETTIMEOUT')
    static var TIMING_SETTIMEOUT:Int;

    /**
     * Timing mode using requestAnimationFrame for the main loop (recommended for animations).
     */
    @:native('EM_TIMING_RAF')
    static var TIMING_RAF:Int;

    /**
     * Timing mode using setImmediate for the main loop (immediate execution).
     */
    @:native('EM_TIMING_SETIMMEDIATE')
    static var TIMING_SETIMMEDIATE:Int;

    /**
     * Sets the timing mode for the main loop.
     * 
     * @param mode The timing mode to use (TIMING_SETTIMEOUT, TIMING_RAF, or TIMING_SETIMMEDIATE)
     * @param value Additional timing value (depends on mode)
     * @return Error code (0 on success)
     */
    @:native('emscripten_set_main_loop_timing')
    static function set_main_loop_timing(mode:Int, value:Int):Int;

    /**
     * Gets the current timing mode for the main loop.
     * 
     * @param mode Pointer to store the current timing mode
     * @param value Pointer to store the current timing value
     */
    @:native('emscripten_get_main_loop_timing')
    static function get_main_loop_timing(mode:RawPointer<Int>, value:RawPointer<Int>):Void;

    /**
     * Sets a C function as the main event loop for the application with a custom argument.
     * 
     * The function is called repeatedly at the specified frequency (FPS).
     * 
     * @param func The function to be called each frame (receives arg as parameter)
     * @param arg Custom argument to pass to the function
     * @param fps Frames per second. Use 0 for browser's optimal refresh rate
     * @param simulate_infinite_loop If true, this function does not return (blocks the call stack)
     */
    @:native('emscripten_set_main_loop_arg')
    static function set_main_loop_arg(func:Em_Arg_Callback_Func, arg:RawPointer<cpp.Void>, fps:Int, simulate_infinite_loop:Bool):Void;

    /**
     * Pauses the execution of the main loop.
     */
    @:native('emscripten_pause_main_loop')
    static function pause_main_loop():Void;

    /**
     * Resumes a previously paused main loop.
     */
    @:native('emscripten_resume_main_loop')
    static function resume_main_loop():Void;

    /**
     * Cancels the main loop permanently.
     */
    @:native('emscripten_cancel_main_loop')
    static function cancel_main_loop():Void;
}
