package hxraylib;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

extern enum abstract TouchAction(TouchActionImpl)
{
	@:native('TOUCH_ACTION_UP')
	var TOUCH_ACTION_UP;

	@:native('TOUCH_ACTION_DOWN')
	var TOUCH_ACTION_DOWN;

	@:native('TOUCH_ACTION_MOVE')
	var TOUCH_ACTION_MOVE;

	@:native('TOUCH_ACTION_CANCEL')
	var TOUCH_ACTION_CANCEL;

	@:from
	static public inline function fromInt(value:Int):TouchAction
		return cast value;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:buildXml('<include name="${haxelib:hxraylib}/project/Build.xml" />')
@:include('rgestures.h')
@:native('TouchAction')
private extern class TouchActionImpl {}

@:buildXml('<include name="${haxelib:hxraylib}/project/Build.xml" />')
@:include('rgestures.h')
@:unreflective
@:structAccess
@:native('GestureEvent')
extern class RlGestureEvent
{
	@:native('GestureEvent')
	static function alloc():RGestureEvent;

	var touchAction:Int;
	var pointCount:Int;
	var pointId:cpp.RawPointer<Int>;
	var position:cpp.RawPointer<RlVector2>;
}

typedef GestureEvent = cpp.Struct<RlGestureEvent>;

@:buildXml('<include name="${haxelib:hxraylib}/project/Build.xml" />')
@:include('rgestures.h')
@:unreflective
extern class RGestures
{
	// Process gesture event and translate it into gestures
	@:native('ProcessGestureEvent')
	static function ProcessGestureEvent(event:RlGestureEvent):Void;

	// Update gestures detected (must be called every frame)
	@:native('UpdateGestures')
	static function UpdateGestures():Void;
}
