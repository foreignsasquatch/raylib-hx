package interfaces;

import hxp.HXML;

interface TargetPlatform
{
    public function new(hxml:HXML):Void;

    public function setup():Void;
    public function build(architecture:Architecture):Bool;
    public function supportedArchitectures():Array<Architecture>;
}
