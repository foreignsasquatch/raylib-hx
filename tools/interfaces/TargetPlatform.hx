package interfaces;

import utils.Architecture;

interface TargetPlatform
{
    public function setup():Void;
    public function build(excludeArchitectures:Array<Architecture>, test:Bool):Void;
    public function supportedArchitectures():Array<Architecture>;
}
