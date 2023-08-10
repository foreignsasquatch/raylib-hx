import Rl.Camera;
import cpp.Star;

@:include("rcamera.h")
extern class RCamera {
    @:native("CameraYaw") static function cameraYaw(camera:Star<Camera>, angle:Float, rotateAroundTarget:Bool):Void;
    @:native("CameraPitch") static function cameraPitch(camera:Star<Camera>, angle:Float, lockView:Bool, rotateAroundTarget:Bool, rotateUp:Bool):Void;
}