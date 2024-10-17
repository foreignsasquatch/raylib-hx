package macros;

#if macro
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.FileSystem;

@:nullSafety
class DefineMacro
{
    public static function run():Void
    {
        if (Context.defined('emscripten') && Context.defined('RAYLIB_WEB_RESOURCES_PATH'))
        {
            final resourcesPath:Null<String> = Context.definedValue('RAYLIB_WEB_RESOURCES_PATH');

            if (resourcesPath != null && resourcesPath.length > 0)
                Compiler.define('RAYLIB_WEB_RESOURCES_PATH', FileSystem.absolutePath(resourcesPath) + '@' + resourcesPath);
        }
    }
}
#end
