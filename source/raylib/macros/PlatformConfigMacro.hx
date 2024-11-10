package raylib.macros;

#if macro
import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Compiler;
import sys.FileSystem;

using StringTools;

@:nullSafety
class PlatformConfigMacro
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
                    Compiler.define('RAYLIB_WEB_RESOURCES_PATH', Path.normalize(FileSystem.absolutePath(resourcesPath)) + '@' + resourcesPath);
            }
        }
        else
        {
            Compiler.define('PLATFORM_DESKTOP');

            if (Context.defined('PLATFORM_DESKTOP_RGFW'))
                Compiler.define('PLATFORM_DESKTOP_RGFW');
            else
                Compiler.define('PLATFORM_DESKTOP_GLFW');

            if (!checkForOpenGLES() && !checkForOpenGL())
                Compiler.define('GRAPHICS_API_OPENGL_33');

            // Tbh, idrk if this is actually intended or not but hey, at least it works now.
            if (Context.defined('resourceFile'))
            {
                final resourceFile:Null<String> = Context.definedValue('resourceFile');

                if (resourceFile != null && resourceFile.length > 0)
                    Compiler.define('resourceFile', Path.normalize(FileSystem.absolutePath(resourceFile)));
            }
        }
    }

    @:noCompletion
    private static function ensureGLES():Void
    {
        if (!Context.defined('GRAPHICS_API_OPENGL_ES3'))
            Compiler.define('GRAPHICS_API_OPENGL_ES2');
    }

    @:noCompletion
    private static function checkForOpenGL():Bool
    {
        for (key => value in Context.getDefines())
        {
            if (key != null && key.startsWith('GRAPHICS_API_OPENGL_') && !key.startsWith('GRAPHICS_API_OPENGL_ES'))
                return true;
        }

        return false;
    }

    @:noCompletion
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
