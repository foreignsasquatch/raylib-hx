package platforms;

import interfaces.TargetPlatform;
import hxp.System;

class AndroidPatform implements TargetPlatform
{
    private var hxml:HXML;

    public function new(hxml:HXML):Void
    {
        this.hxml = hxml;
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
