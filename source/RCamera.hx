package hxraylib;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rcamera.h')
@:unreflective
extern class RCamera
{
	@:native('GetCameraForward')
	static function GetCameraForward(camera:cpp.RawPointer<RayCamera>):RayVector3;

	@:native('GetCameraUp')
	static function GetCameraUp(camera:cpp.RawPointer<RayCamera>):RayVector3;

	@:native('GetCameraRight')
	static function GetCameraRight(camera:cpp.RawPointer<RayCamera>):RayVector3;

	// Camera movement

	@:native('CameraMoveForward')
	static function CameraMoveForward(camera:cpp.RawPointer<RayCamera3D>, distance:Single, moveInWorldPlane:Bool):Void;

	@:native('CameraMoveUp')
	static function CameraMoveUp(camera:cpp.RawPointer<RayCamera3D>, distance:Single):Void;

	@:native('CameraMoveRight')
	static function CameraMoveRight(camera:cpp.RawPointer<RayCamera3D>, distance:Single, moveInWorldPlane:Bool):Void;

	@:native('CameraMoveToTarget')
	static function CameraMoveToTarget(camera:cpp.RawPointer<RayCamera3D>, delta:Single):Void;

	// Camera rotation

	@:native('CameraYaw')
	static function CameraYaw(camera:cpp.RawPointer<RayCamera3D>, angle:Single, rotateAroundTarget:Bool):Void;

	@:native('CameraPitch')
	static function CameraPitch(camera:cpp.RawPointer<RayCamera3D>, angle:Single, lockView:Bool, rotateAroundTarget:Bool, rotateUp:Bool):Void;

	@:native('CameraRoll')
	static function CameraRoll(camera:cpp.RawPointer<RayCamera3D>, angle:Single):Void;

	@:native('GetCameraViewMatrix')
	static function GetCameraViewMatrix(camera:cpp.RawPointer<RayCamera3D>):RayMatrix;

	@:native('GetCameraProjectionMatrix')
	static function GetCameraProjectionMatrix(camera:cpp.RawPointer<RayCamera3D>, aspect:Single):RayMatrix;
}
