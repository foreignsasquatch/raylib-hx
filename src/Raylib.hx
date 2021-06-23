package;

import cpp.ConstCharStar;
import cpp.RawPointer;

@:buildXml("<include name='../Raylib.xml'/>")
@:include("raylib.h")
extern class Raylib
{
    @:native("InitWindow")              public static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;
    @:native("WindowShouldClose")       public static function WindowShouldClose():Bool;
    @:native("CloseWindow")             public static function CloseWindow():Bool;
    
    @:native("SetTargetFPS")            public static function SetTargetFPS(fps:Int):Void;
    @:native("BeginDrawing")            public static function BeginDrawing():Void;
    @:native("EndDrawing")              public static function EndDrawing():Void;
    
    @:native("ClearBackground")         public static function ClearBackground(color:Color):Void;
    @:native("DrawText")                public static function DrawText(text:ConstCharStar, x:Int, y:Int, fontSize:Int, color:Color):Void;
    @:native("MeasureText")             public static function MeasureText(text:ConstCharStar, fontSize:Int):Int;
    
    @:native("SetCameraMode")           public static function SetCameraMode(camera:Camera, mode:Int):Void;
    @:native("UpdateCamera")            public static function UpdateCamera(camera:RawPointer<Camera>):Void;
    
    @:native("GetWorldToScreen")        public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    
    @:native("BeginMode3D")             public static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D")               public static function EndMode3D():Void;
    
    @:native("DrawCube")                public static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawCubeWires")           public static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    @:native("DrawGrid")                public static function DrawGrid(slices:Int, spacing:Int):Void;
}

@:include("raylib.h")
@:native("Color")
extern class Color
{
    var r:Int;
    var g:Int;
    var b:Int;
    var a:Int;
}

@:include("raylib.h")
extern class Rectangle
{
    var x:Float;
    var y:Float;
    var w:Float;
    var h:Float;
}

@:include("raylib.h")
extern class Image
{
    var data:Void;
    var w:Int;
    var h:Int;
    var mipmaps:Int;
    var format:Int;
}

@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2
{
    var x:Float;
    var y:Float;
    
    public static inline function create(x:Float, y:Float):Vector2 {
        return untyped __cpp__("{ (float){0}, (float){1} }", x, y);
    }
}

@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern class Vector3
{
    var x:Float;
    var y:Float;
    var z:Float;
    
    public static inline function create(x:Float, y:Float, z:Float):Vector3
    {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
    }
}

@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern class Vector4
{
    var x:Float;
    var y:Float;
    var z:Float;
    var w:Float;
}

@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D
{
    var position:Vector3;
    var target:Vector3;
    var up:Vector3;
    var fovy:Float;
    var projection:Int;
    
    public static inline function create():Camera
    {
        return untyped __cpp__("{ 0 }");
    }
}

typedef Camera = Camera3D;

@:include("raylib.h")
extern class Colors
{
    @:native("RAYWHITE")    public static var RAYWHITE:Color;
    @:native("LIGHTGRAY")   public static var LIGHTGRAY:Color;
    @:native("BLACK")       public static var BLACK:Color;
    @:native("GRAY")        public static var GRAY:Color;
    @:native("RED")         public static var RED:Color;
    @:native("MAROON")      public static var MAROON:Color;
    @:native("DARKGRAY")    public static var DARKGRAY:Color;
    @:native("YELLOW")      public static var YELLOW:Color;
    @:native("GOLD")        public static var GOLD:Color;
    @:native("ORANGE")      public static var ORANGE:Color;
    @:native("PINK")        public static var PINK:Color;
    @:native("GREEN")       public static var GREEN:Color;
    @:native("LIME")        public static var LIME:Color;
    @:native("DARKGREEN")   public static var DARKGREEN:Color;
    @:native("SKYBLUE")     public static var SKYBLUE:Color;
    @:native("BLUE")        public static var BLUE:Color;
    @:native("DARKBLUE")    public static var DARKBLUE:Color;
    @:native("PURPLE")      public static var PURPLE:Color;
    @:native("VIOLET")      public static var VIOLET:Color;
    @:native("DARKPURPLE")  public static var DARKPURPLE:Color;
    @:native("BEIGE")       public static var BEIGE:Color;
    @:native("BROWN")       public static var BROWN:Color;
    @:native("DARKBROWN")   public static var DARKBROWN:Color;
    @:native("WHITE")       public static var WHITE:Color;
    @:native("BLANK")       public static var BLANK:Color;
    @:native("MAGENTA")     public static var MAGENTA:Color;
}

@:include("raylib.h")
extern class CameraProjections
{
    @:native("CAMERA_PERSPECTIVE")      public static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")     public static var CAMERA_ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern class CameraModes
{
    @:native("CAMERA_CUSTOM")           public static var CAMERA_CUSTOM:Int;
    @:native("CAMERA_FREE")             public static var CAMERA_FREE:Int;
    @:native("CAMERA_ORBITAL")          public static var CAMERA_ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")     public static var CAMERA_FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")     public static var CAMERA_THIRD_PERSON:Int;
}
