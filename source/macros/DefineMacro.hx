package macros;

#if macro
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.FileSystem;

using StringTools;

@:nullSafety
class DefineMacro
{
    public static function run():Void
    {
        if (Context.defined('android'))
        {
            Compiler.define('PLATFORM_ANDROID');

            if (checkForOpenGL())
                Context.fatalError('You can\'t use normal OpenGL while targeting Android', Context.currentPos());

            ensureGLES();
        }
        else if (Context.defined('rpi'))
        {
            Compiler.define('PLATFORM_DRM');

            if (checkForOpenGL())
                Context.fatalError('You can\'t use normal OpenGL while targeting Raspberry Pi', Context.currentPos());

            ensureGLES();
        }
        else if (Context.defined('emscripten'))
        {
            Compiler.define('PLATFORM_WEB');

            if (checkForOpenGL())
                Context.fatalError('You can\'t use normal OpenGL while targeting Emscripten', Context.currentPos());

            ensureGLES();

            if (Context.defined('RAYLIB_WEB_RESOURCES_PATH'))
            {
                final resourcesPath:Null<String> = Context.definedValue('RAYLIB_WEB_RESOURCES_PATH');
                if (resourcesPath != null && resourcesPath.length > 0)
                    Compiler.define('RAYLIB_WEB_RESOURCES_PATH', FileSystem.absolutePath(resourcesPath) + '@' + resourcesPath);
            }
        }
        else
        {
            Compiler.define('PLATFORM_DESKTOP');

            if (checkForOpenGLES())
                Context.fatalError('You can\'t use OpenGLES while targeting Desktop', Context.currentPos());

            if (!checkForOpenGL())
                Compiler.define('GRAPHICS_API_OPENGL_33');
        }
    }

    private static function ensureGLES():Void
    {
        if (!Context.defined('GRAPHICS_API_OPENGL_ES3'))
            Compiler.define('GRAPHICS_API_OPENGL_ES2');
    }

    private static function checkForOpenGL():Bool
    {
        for (key => value in Context.getDefines())
        {
            if (key != null && key.startsWith('GRAPHICS_API_OPENGL_') && !key.startsWith('GRAPHICS_API_OPENGL_ES'))
                return true;
        }

        return false;
    }

    private static function checkForOpenGLES():Bool
    {
        for (key => value in Context.getDefines())
        {
            if (key != null && key.startsWith('GRAPHICS_API_OPENGL_ES'))
                return true;
        }

        return false;
    }
}
#end
