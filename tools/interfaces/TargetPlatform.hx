package interfaces;

import utils.Architecture;

interface TargetPlatform
{
    public function setup():Void;
    public function build(architectures:Array<Architecture>):Bool;
    public function supportedArchitectures():Array<Architecture>;
}
