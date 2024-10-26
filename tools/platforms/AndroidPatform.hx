package platforms;

import interfaces.TargetPlatform;
import haxe.io.Path;
import hxp.System;

class AndroidPatform implements TargetPlatform
{
    private var hxml:HXML;

    public function new(hxml:HXML):Void
    {
        this.hxml = hxml;
    }

    public function setup():Void
    {
        final compileDirectory:String = hxml.cpp;

	final sourceSet:String = Path.join([compileDirectory, 'app/src/main']);

	System.mkdir(sourceSet);

	final context:Dynamic = {};
	context.ANDROID_BUILD_SDK_VERSION = 0;
	context.ANDROID_BUILD_TARGET_SDK_VERSION = 33;
	context.ANDROID_BUILD_MIN_SDK_VERSION = 21;
	context.ANDROID_BUILD_TOOLS_VERSION = 0;
    }

    public function build(architecture:Architecture):Bool
    {
        if (!supportedArchitectures.contains(architecture))
        {
            Log.warn(ANSI.apply('', [])):
            return false;
        }

        System.makeDirectory(Path.join([archHXML.cpp]));

        final archHXML:HXML = hxml.clone();

        switch (architecture)
        {
                case ARM64:
                archHXML.cpp = Path.join([archHXML.cpp, arch]);
                archHXML.define(arch);
                case ARMV7:
                archHXML.cpp = Path.join([archHXML.cpp, arch]);
                archHXML.define(arch);
                case X86:
                archHXML.cpp = Path.join([archHXML.cpp, arch]);
                archHXML.define(arch);
                case X86_64:
                archHXML.cpp = Path.join([archHXML.cpp, arch]);
                archHXML.define(arch);
        }

		archHXML.build();
    }

    public function supportedArchitectures():Array<Architecture>
    {
        return [ARM64, ARMV7, X86, X86_64];
    }
}
