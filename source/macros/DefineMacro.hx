package macros;

#if macro
@:nullSafety
class DefineMacro
{
    public static function run():Void
    {
        if (haxe.macro.Context.defined('emscripten') && haxe.macro.Context.defined('RAYLIB_WEB_RESOURCES_PATH'))
        {
            final resourcesPath:Null<String> = haxe.macro.Context.definedValue('RAYLIB_WEB_RESOURCES_PATH');

            if (resourcesPath != null && resourcesPath.length > 0)
                haxe.macro.Compiler.define('RAYLIB_WEB_RESOURCES_PATH', sys.FileSystem.absolutePath(resourcesPath) + '@' + resourcesPath);
        }
    }
}
#end
