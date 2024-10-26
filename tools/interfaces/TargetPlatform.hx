package interfaces;

interface TargetPlatform
{
    public function create():Void;
    public function update():Void;
    public function build():Void;
    public function supportedArchitectures():Array<Architecture>;
}
