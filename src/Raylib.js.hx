import js.Browser;
import web.internal.rlgl.GL as RLGL;

typedef Vector2 = web.internal.Types.Vector2;
typedef Color = web.internal.Types.Color;

@:expose
class Raylib
{
    static var rlgl:RLGL;

    public static function InitWindow(width:Int, height:Int, title:String)
    {
        rlgl = new RLGL(width, height, title);
    }

    public static function CloseWindow()
    {
    }

    public static inline function IsWindowReady():Bool
    {
        return true;
    }

    public static inline function IsWindowFullscreen():Bool
    {
        return Browser.document.fullscreenElement != null;
    }

    // FIXME Resolve JS error "Cannot read properties of null (reading 'requestFullscreen')"
    public static function ToggleFullScreen()
    {
        if (IsWindowFullscreen())
            Browser.document.exitFullscreen();
        else
            Browser.document.fullscreenElement.requestFullscreen();
    }

    public static function GetScreenWidth():Int
    {
        return 0;
    }

    public static function GetScreenHeight():Int
    {
        return 0;
    }

    public static function SetClipboardText(text:String)
    {
        Browser.navigator.clipboard.writeText(text);
    }

    public static function GetClipboardText():String
    {
        var result:String;
        Browser.navigator.clipboard.readText().then((text:String) ->
        {
            result = text;
        });
        return result;
    }

    public static function ClearBackground(color:Color)
    {
        rlgl.clearColor(color.r, color.g, color.b, color.a);
        rlgl.clearScreenBuffers();
    }

    public static function BeginDrawing()
    {
    }

    public static function EndDrawing()
    {
    }
}
