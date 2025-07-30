package raylib.macros;

#if macro
import haxe.macro.Context;

class CheckMacro
{
    public static function run():Void
    {
        if (!Context.defined('cpp'))
            Context.fatalError('Raylib supports only C++ target platforms.', (macro null).pos);
    }
}
#end
