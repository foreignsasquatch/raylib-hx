package hxraylib;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

extern enum abstract TouchAction(TouchActionImpl)
{
	@:native('TOUCH_ACTION_UP') var TOUCH_ACTION_UP;
	@:native('TOUCH_ACTION_DOWN') var TOUCH_ACTION_DOWN;
	@:native('TOUCH_ACTION_MOVE') var TOUCH_ACTION_MOVE;
	@:native('TOUCH_ACTION_CANCEL') var TOUCH_ACTION_CANCEL;

	@:from
	static public inline function fromInt(i:Int):TouchAction
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rgestures.h')
@:native('TouchAction')
private extern class TouchActionImpl {}

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rgestures.h')
@:unreflective
@:structAccess
@:native('GestureEvent')
extern class RayGestureEvent
{
	@:native('GestureEvent')
	static function alloc():RayGestureEvent;

	var touchAction:Int;
	var pointCount:Int;
	var pointId:cpp.RawPointer<cpp.Int32>;
	var position:cpp.RawPointer<RayVector2>;
}

typedef GestureEvent = cpp.Struct<RayGestureEvent>;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rgestures.h')
@:unreflective
extern class RGestures
{
	// Process gesture event and translate it into gestures
	@:native('ProcessGestureEvent')
	static function ProcessGestureEvent(event:RayGestureEvent):Void;

	// Update gestures detected (must be called every frame)
	@:native('UpdateGestures')
	static function UpdateGestures():Void;
}
