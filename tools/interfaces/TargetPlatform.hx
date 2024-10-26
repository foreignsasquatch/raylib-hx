package interfaces;

import utils.Architecture;

interface TargetPlatform
{
    public function setup():Void;
    public function build(architecture:Architecture):Bool;
    public function supportedArchitectures():Array<Architecture>;
}
