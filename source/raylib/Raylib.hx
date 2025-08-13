/**
 *   raylib-hx - a Haxe binding for the library raylib, a simple and easy-to-use library to enjoy videogames programming
 *
 *   LICENSE: zlib/libpng
 *
 *   raylib-hx is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
 *   BSD-like license that allows static linking with closed source software:
 *
 *   Copyright (c) 2021-2022 Ratul Krisna (@ForeignSasquatch)
 *
 *   This software is provided "as-is", without any express or implied warranty. In no event
 *   will the authors be held liable for any damages arising from the use of this software.
 *
 *   Permission is granted to anyone to use this software for any purpose, including commercial
 *   applications, and to alter it and redistribute it freely, subject to the following restrictions:
 *
 *     1. The origin of this software must not be misrepresented; you must not claim that you
 *     wrote the original software. If you use this software in a product, an acknowledgment
 *     in the product documentation would be appreciated but is not required.
 *
 *     2. Altered source versions must be plainly marked as such, and must not be misrepresented
 *     as being the original software.
 *
 *     3. This notice may not be removed or altered from any source distribution.
 */

package raylib;

import cpp.UInt8;
import cpp.CastCharStar;
import cpp.Char;
import cpp.ConstCharStar;
import cpp.Long;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.Rest;
import cpp.UInt32;
import cpp.VarArg;

import raylib.Types;

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('raylib.h')
extern class Raylib
{
    @:native('RAYLIB_VERSION_MAJOR')
    static var RAYLIB_VERSION_MAJOR:UInt32;

    @:native('RAYLIB_VERSION_MINOR')
    static var RAYLIB_VERSION_MINOR:UInt32;

    @:native('RAYLIB_VERSION_PATCH')
    static var RAYLIB_VERSION_PATCH:UInt32;

    @:native('RAYLIB_VERSION')
    static var RAYLIB_VERSION:ConstCharStar;

    @:native('LIGHTGRAY')
    static var LIGHTGRAY:Color;

    @:native('GRAY')
    static var GRAY:Color;

    @:native('DARKGRAY')
    static var DARKGRAY:Color;

    @:native('YELLOW')
    static var YELLOW:Color;

    @:native('GOLD')
    static var GOLD:Color;

    @:native('ORANGE')
    static var ORANGE:Color;

    @:native('PINK')
    static var PINK:Color;

    @:native('RED')
    static var RED:Color;

    @:native('MAROON')
    static var MAROON:Color;

    @:native('GREEN')
    static var GREEN:Color;

    @:native('LIME')
    static var LIME:Color;

    @:native('DARKGREEN')
    static var DARKGREEN:Color;

    @:native('SKYBLUE')
    static var SKYBLUE:Color;

    @:native('BLUE')
    static var BLUE:Color;

    @:native('DARKBLUE')
    static var DARKBLUE:Color;

    @:native('PURPLE')
    static var PURPLE:Color;

    @:native('VIOLET')
    static var VIOLET:Color;

    @:native('DARKPURPLE')
    static var DARKPURPLE:Color;

    @:native('BEIGE')
    static var BEIGE:Color;

    @:native('BROWN')
    static var BROWN:Color;

    @:native('DARKBROWN')
    static var DARKBROWN:Color;

    @:native('WHITE')
    static var WHITE:Color;

    @:native('BLACK')
    static var BLACK:Color;

    @:native('BLANK')
    static var BLANK:Color;

    @:native('MAGENTA')
    static var MAGENTA:Color;

    @:native('RAYWHITE')
    static var RAYWHITE:Color;

    @:native('InitWindow')
    static function InitWindow(width:Int, height:Int, title:ConstCharStar):Void;

    @:native('CloseWindow')
    static function CloseWindow():Void;

    @:native('WindowShouldClose')
    static function WindowShouldClose():Bool;

    @:native('IsWindowReady')
    static function IsWindowReady():Bool;

    @:native('IsWindowFullscreen')
    static function IsWindowFullscreen():Bool;

    @:native('IsWindowHidden')
    static function IsWindowHidden():Bool;

    @:native('IsWindowMinimized')
    static function IsWindowMinimized():Bool;

    @:native('IsWindowMaximized')
    static function IsWindowMaximized():Bool;

    @:native('IsWindowFocused')
    static function IsWindowFocused():Bool;

    @:native('IsWindowResized')
    static function IsWindowResized():Bool;

    @:native('IsWindowState')
    static function IsWindowState(flag:UInt32):Bool;

    @:native('SetWindowState')
    static function SetWindowState(flags:UInt32):Void;

    @:native('ClearWindowState')
    static function ClearWindowState(flags:UInt32):Void;

    @:native('ToggleFullscreen')
    static function ToggleFullscreen():Void;

    @:native('ToggleBorderlessWindowed')
    static function ToggleBorderlessWindowed():Void;

    @:native('MaximizeWindow')
    static function MaximizeWindow():Void;

    @:native('MinimizeWindow')
    static function MinimizeWindow():Void;

    @:native('RestoreWindow')
    static function RestoreWindow():Void;

    @:native('SetWindowIcon')
    static function SetWindowIcon(image:Image):Void;

    @:native('SetWindowIcons')
    static function SetWindowIcons(images:RawPointer<Image>, count:Int):Void;

    @:native('SetWindowTitle')
    static function SetWindowTitle(title:ConstCharStar):Void;

    @:native('SetWindowPosition')
    static function SetWindowPosition(x:Int, y:Int):Void;

    @:native('SetWindowMonitor')
    static function SetWindowMonitor(monitor:Int):Void;

    @:native('SetWindowMinSize')
    static function SetWindowMinSize(width:Int, height:Int):Void;

    @:native('SetWindowMaxSize')
    static function SetWindowMaxSize(width:Int, height:Int):Void;

    @:native('SetWindowSize')
    static function SetWindowSize(width:Int, height:Int):Void;

    @:native('SetWindowOpacity')
    static function SetWindowOpacity(opacity:Single):Void;

    @:native('SetWindowFocused')
    static function SetWindowFocused():Void;

    @:native('GetWindowHandle')
    static function GetWindowHandle():RawPointer<cpp.Void>;

    @:native('GetScreenWidth')
    static function GetScreenWidth():Int;

    @:native('GetScreenHeight')
    static function GetScreenHeight():Int;

    @:native('GetRenderWidth')
    static function GetRenderWidth():Int;

    @:native('GetRenderHeight')
    static function GetRenderHeight():Int;

    @:native('GetMonitorCount')
    static function GetMonitorCount():UInt32;

    @:native('GetCurrentMonitor')
    static function GetCurrentMonitor():UInt32;

    @:native('GetMonitorPosition')
    static function GetMonitorPosition(monitor:Int):Vector2;

    @:native('GetMonitorWidth')
    static function GetMonitorWidth(monitor:Int):Int;

    @:native('GetMonitorHeight')
    static function GetMonitorHeight(monitor:Int):Int;

    @:native('GetMonitorPhysicalWidth')
    static function GetMonitorPhysicalWidth(monitor:Int):Int;

    @:native('GetMonitorPhysicalHeight')
    static function GetMonitorPhysicalHeight(monitor:Int):Int;

    @:native('GetMonitorRefreshRate')
    static function GetMonitorRefreshRate(monitor:Int):Int;

    @:native('GetWindowPosition')
    static function GetWindowPosition():Vector2;

    @:native('GetWindowScaleDPI')
    static function GetWindowScaleDPI():Vector2;

    @:native('GetMonitorName')
    static function GetMonitorName(monitor:Int):ConstCharStar;

    @:native('SetClipboardText')
    static function SetClipboardText(text:ConstCharStar):Void;

    @:native('GetClipboardText')
    static function GetClipboardText():ConstCharStar;

    @:native('EnableEventWaiting')
    static function EnableEventWaiting():Void;

    @:native('DisableEventWaiting')
    static function DisableEventWaiting():Void;

    @:native('ShowCursor')
    static function ShowCursor():Void;

    @:native('HideCursor')
    static function HideCursor():Void;

    @:native('IsCursorHidden')
    static function IsCursorHidden():Bool;

    @:native('EnableCursor')
    static function EnableCursor():Void;

    @:native('DisableCursor')
    static function DisableCursor():Void;

    @:native('IsCursorOnScreen')
    static function IsCursorOnScreen():Bool;

    @:native('ClearBackground')
    static function ClearBackground(color:Color):Void;

    @:native('BeginDrawing')
    static function BeginDrawing():Void;

    @:native('EndDrawing')
    static function EndDrawing():Void;

    @:native('BeginMode2D')
    static function BeginMode2D(camera:Camera2D):Void;

    @:native('EndMode2D')
    static function EndMode2D():Void;

    @:native('BeginMode3D')
    static function BeginMode3D(camera:Camera3D):Void;

    @:native('EndMode3D')
    static function EndMode3D():Void;

    @:native('BeginTextureMode')
    static function BeginTextureMode(target:RenderTexture):Void;

    @:native('EndTextureMode')
    static function EndTextureMode():Void;

    @:native('BeginShaderMode')
    static function BeginShaderMode(shader:Shader):Void;

    @:native('EndShaderMode')
    static function EndShaderMode():Void;

    @:native('BeginBlendMode')
    static function BeginBlendMode(mode:Int):Void;

    @:native('EndBlendMode')
    static function EndBlendMode():Void;

    @:native('BeginScissorMode')
    static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;

    @:native('EndScissorMode')
    static function EndScissorMode():Void;

    @:native('BeginVrStereoMode')
    static function BeginVrStereoMode(config:VrStereoConfig):Void;

    @:native('EndVrStereoMode')
    static function EndVrStereoMode():Void;

    @:native('LoadVrStereoConfig')
    static function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;

    @:native('UnloadVrStereoConfig')
    static function UnloadVrStereoConfig(config:VrStereoConfig):Void;

    @:native('LoadShader')
    static function LoadShader(vsFileName:ConstCharStar, fsFileName:ConstCharStar):Shader;

    @:native('LoadShaderFromMemory')
    static function LoadShaderFromMemory(vsCode:ConstCharStar, fsCode:ConstCharStar):Shader;

    @:native('IsShaderValid')
    static function IsShaderValid(shader:Shader):Bool;

    @:native('GetShaderLocation')
    static function GetShaderLocation(shader:Shader, uniformName:ConstCharStar):Int;

    @:native('GetShaderLocationAttrib')
    static function GetShaderLocationAttrib(shader:Shader, attribName:ConstCharStar):Int;

    @:native('SetShaderValue')
    static function SetShaderValue(shader:Shader, locIndex:Int, value:RawConstPointer<cpp.Void>, uniformType:Int):Void;

    @:native('SetShaderValueV')
    static function SetShaderValueV(shader:Shader, locIndex:Int, value:RawConstPointer<cpp.Void>, uniformType:Int, count:Int):Void;

    @:native('SetShaderValueMatrix')
    static function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;

    @:native('SetShaderValueTexture')
    static function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture):Void;

    @:native('UnloadShader')
    static function UnloadShader(shader:Shader):Void;

    @:native('GetMouseRay')
    static function GetMouseRay(position:Vector2, camera:Camera3D):Ray;

    @:native('GetScreenToWorldRay')
    static function GetScreenToWorldRay(position:Vector2, camera:Camera3D):Ray;

    @:native('GetScreenToWorldRayEx')
    static function GetScreenToWorldRayEx(position:Vector2, camera:Camera3D, width:Int, height:Int):Ray;

    @:native('GetWorldToScreen')
    static function GetWorldToScreen(position:Vector3, camera:Camera3D):Vector2;

    @:native('GetWorldToScreenEx')
    static function GetWorldToScreenEx(position:Vector3, camera:Camera3D, width:Int, height:Int):Vector2;

    @:native('GetWorldToScreen2D')
    static function GetWorldToScreen2D(position:Vector2, camera:Camera2D):Vector2;

    @:native('GetScreenToWorld2D')
    static function GetScreenToWorld2D(position:Vector2, camera:Camera2D):Vector2;

    @:native('GetCameraMatrix')
    static function GetCameraMatrix(camera:Camera3D):Matrix;

    @:native('GetCameraMatrix2D')
    static function GetCameraMatrix2D(camera:Camera2D):Matrix;

    @:native('SetTargetFPS')
    static function SetTargetFPS(fps:Int):Void;

    @:native('GetFrameTime')
    static function GetFrameTime():Single;

    @:native('GetTime')
    static function GetTime():Float;

    @:native('GetFPS')
    static function GetFPS():Int;

    @:native('SwapScreenBuffer')
    static function SwapScreenBuffer():Void;

    @:native('PollInputEvents')
    static function PollInputEvents():Void;

    @:native('WaitTime')
    static function WaitTime(seconds:Float):Void;

    @:native('SetRandomSeed')
    static function SetRandomSeed(seed:UInt32):Void;

    @:native('GetRandomValue')
    static function GetRandomValue(min:Int, max:Int):Int;

    @:native('LoadRandomSequence')
    static function LoadRandomSequence(count:UInt32, min:Int, max:Int):RawPointer<Int>;

    @:native('UnloadRandomSequence')
    static function UnloadRandomSequence(sequence:RawPointer<Int>):Void;

    @:native('TakeScreenshot')
    static function TakeScreenshot(fileName:ConstCharStar):Void;

    @:native('SetConfigFlags')
    static function SetConfigFlags(flags:UInt32):Void;

    @:native('OpenURL')
    static function OpenURL(url:ConstCharStar):Void;

    @:native('TraceLog')
    static function TraceLog(logLevel:Int, text:ConstCharStar, params:Rest<VarArg>):Void;

    @:native('SetTraceLogLevel')
    static function SetTraceLogLevel(logLevel:Int):Void;

    @:native('MemAlloc')
    static function MemAlloc(size:UInt32):RawPointer<cpp.Void>;

    @:native('MemRealloc')
    static function MemRealloc(ptr:RawPointer<cpp.Void>, size:UInt32):RawPointer<cpp.Void>;

    @:native('MemFree')
    static function MemFree(ptr:RawPointer<cpp.Void>):Void;

    @:native('SetTraceLogCallback')
    static function SetTraceLogCallback(callback:TraceLogCallback):Void;

    @:native('SetLoadFileDataCallback')
    static function SetLoadFileDataCallback(callback:LoadFileDataCallback):Void;

    @:native('SetSaveFileDataCallback')
    static function SetSaveFileDataCallback(callback:SaveFileDataCallback):Void;

    @:native('SetLoadFileTextCallback')
    static function SetLoadFileTextCallback(callback:LoadFileTextCallback):Void;

    @:native('SetSaveFileTextCallback')
    static function SetSaveFileTextCallback(callback:SaveFileTextCallback):Void;

    @:native('LoadFileData')
    static function LoadFileData(fileName:ConstCharStar, dataSize:RawPointer<Int>):RawPointer<UInt8>;

    @:native('UnloadFileData')
    static function UnloadFileData(data:RawPointer<UInt8>):Void;

    @:native('SaveFileData')
    static function SaveFileData(fileName:ConstCharStar, data:RawPointer<cpp.Void>, dataSize:Int):Bool;

    @:native('ExportDataAsCode')
    static function ExportDataAsCode(data:RawPointer<UInt8>, dataSize:Int, fileName:ConstCharStar):Bool;

    @:native('LoadFileText')
    static function LoadFileText(fileName:ConstCharStar):CastCharStar;

    @:native('UnloadFileText')
    static function UnloadFileText(text:CastCharStar):Void;

    @:native('SaveFileText')
    static function SaveFileText(fileName:ConstCharStar, text:ConstCharStar):Bool;

    @:native('FileExists')
    static function FileExists(fileName:ConstCharStar):Bool;

    @:native('DirectoryExists')
    static function DirectoryExists(dirPath:ConstCharStar):Bool;

    @:native('IsFileExtension')
    static function IsFileExtension(fileName:ConstCharStar, ext:ConstCharStar):Bool;

    @:native('GetFileLength')
    static function GetFileLength(fileName:ConstCharStar):Int;

    @:native('GetFileExtension')
    static function GetFileExtension(fileName:ConstCharStar):ConstCharStar;

    @:native('GetFileName')
    static function GetFileName(filePath:ConstCharStar):ConstCharStar;

    @:native('GetFileNameWithoutExt')
    static function GetFileNameWithoutExt(filePath:ConstCharStar):ConstCharStar;

    @:native('GetDirectoryPath')
    static function GetDirectoryPath(filePath:ConstCharStar):ConstCharStar;

    @:native('GetPrevDirectoryPath')
    static function GetPrevDirectoryPath(dirPath:ConstCharStar):ConstCharStar;

    @:native('GetWorkingDirectory')
    static function GetWorkingDirectory():ConstCharStar;

    @:native('GetApplicationDirectory')
    static function GetApplicationDirectory():ConstCharStar;

    @:native('MakeDirectory')
    static function MakeDirectory(dirPath:ConstCharStar):Int;

    @:native('ChangeDirectory')
    static function ChangeDirectory(dir:ConstCharStar):Bool;

    @:native('IsPathFile')
    static function IsPathFile(path:ConstCharStar):Bool;

    @:native('IsFileNameValid')
    static function IsFileNameValid(fileName:ConstCharStar):Bool;

    @:native('LoadDirectoryFiles')
    static function LoadDirectoryFiles(dirPath:ConstCharStar):FilePathList;

    @:native('LoadDirectoryFilesEx')
    static function LoadDirectoryFilesEx(basePath:ConstCharStar, filter:ConstCharStar, scanSubdirs:Bool):FilePathList;

    @:native('UnloadDirectoryFiles')
    static function UnloadDirectoryFiles(files:FilePathList):Void;

    @:native('IsFileDropped')
    static function IsFileDropped():Bool;

    @:native('LoadDroppedFiles')
    static function LoadDroppedFiles():FilePathList;

    @:native('UnloadDroppedFiles')
    static function UnloadDroppedFiles(files:FilePathList):Void;

    @:native('GetFileModTime')
    static function GetFileModTime(fileName:ConstCharStar):Long;

    @:native('CompressData')
    static function CompressData(data:RawConstPointer<UInt8>, dataSize:Int, compDataSize:RawPointer<Int>):RawPointer<UInt8>;

    @:native('DecompressData')
    static function DecompressData(compData:RawConstPointer<UInt8>, compDataSize:Int, dataSize:RawPointer<Int>):RawPointer<UInt8>;

    @:native('EncodeDataBase64')
    static function EncodeDataBase64(data:RawConstPointer<UInt8>, dataSize:Int, outputSize:RawPointer<Int>):CastCharStar;

    @:native('DecodeDataBase64')
    static function DecodeDataBase64(data:RawConstPointer<UInt8>, outputSize:RawPointer<Int>):RawPointer<UInt8>;

    @:native('ComputeCRC32')
    static function ComputeCRC32(data:RawConstPointer<UInt8>, dataSize:Int):UInt32;

    @:native('ComputeMD5')
    static function ComputeMD5(data:RawConstPointer<UInt8>, dataSize:Int):RawPointer<UInt32>;

    @:native('ComputeSHA1')
    static function ComputeSHA1(data:RawConstPointer<UInt8>, dataSize:Int):RawPointer<UInt32>;

    @:native('LoadAutomationEventList')
    static function LoadAutomationEventList(fileName:ConstCharStar):AutomationEventList;

    @:native('UnloadAutomationEventList')
    static function UnloadAutomationEventList(list:AutomationEventList):Void;

    @:native('ExportAutomationEventList')
    static function ExportAutomationEventList(list:AutomationEventList, fileName:ConstCharStar):Bool;

    @:native('SetAutomationEventList')
    static function SetAutomationEventList(list:RawPointer<AutomationEventList>):Void;

    @:native('SetAutomationEventBaseFrame')
    static function SetAutomationEventBaseFrame(frame:Int):Void;

    @:native('StartAutomationEventRecording')
    static function StartAutomationEventRecording():Void;

    @:native('StopAutomationEventRecording')
    static function StopAutomationEventRecording():Void;

    @:native('PlayAutomationEvent')
    static function PlayAutomationEvent(event:AutomationEvent):Void;

    @:native('IsKeyPressed')
    static function IsKeyPressed(key:Int):Bool;

    @:native('IsKeyPressedRepeat')
    static function IsKeyPressedRepeat(key:Int):Bool;

    @:native('IsKeyDown')
    static function IsKeyDown(key:Int):Bool;

    @:native('IsKeyReleased')
    static function IsKeyReleased(key:Int):Bool;

    @:native('IsKeyUp')
    static function IsKeyUp(key:Int):Bool;

    @:native('GetKeyPressed')
    static function GetKeyPressed():Int;

    @:native('GetCharPressed')
    static function GetCharPressed():Int;

    @:native('GetKeyName')
    static function GetKeyName(key:Int):ConstCharStar;

    @:native('SetExitKey')
    static function SetExitKey(key:Int):Void;

    @:native('IsGamepadAvailable')
    static function IsGamepadAvailable(gamepad:Int):Bool;

    @:native('GetGamepadName')
    static function GetGamepadName(gamepad:Int):ConstCharStar;

    @:native('IsGamepadButtonPressed')
    static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonDown')
    static function IsGamepadButtonDown(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonReleased')
    static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;

    @:native('IsGamepadButtonUp')
    static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;

    @:native('GetGamepadButtonPressed')
    static function GetGamepadButtonPressed():Int;

    @:native('GetGamepadAxisCount')
    static function GetGamepadAxisCount(gamepad:Int):Int;

    @:native('GetGamepadAxisMovement')
    static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Single;

    @:native('SetGamepadMappings')
    static function SetGamepadMappings(mappings:ConstCharStar):Int;

    @:native('SetGamepadVibration')
    static function SetGamepadVibration(gamepad:Int, leftMotor:Single, rightMotor:Single, duration:Single):Void;

    @:native('IsMouseButtonPressed')
    static function IsMouseButtonPressed(button:Int):Bool;

    @:native('IsMouseButtonDown')
    static function IsMouseButtonDown(button:Int):Bool;

    @:native('IsMouseButtonReleased')
    static function IsMouseButtonReleased(button:Int):Bool;

    @:native('IsMouseButtonUp')
    static function IsMouseButtonUp(button:Int):Bool;

    @:native('GetMouseX')
    static function GetMouseX():Int;

    @:native('GetMouseY')
    static function GetMouseY():Int;

    @:native('GetMousePosition')
    static function GetMousePosition():Vector2;

    @:native('GetMouseDelta')
    static function GetMouseDelta():Vector2;

    @:native('SetMousePosition')
    static function SetMousePosition(x:Int, y:Int):Void;

    @:native('SetMouseOffset')
    static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;

    @:native('SetMouseScale')
    static function SetMouseScale(scaleX:Single, scaleY:Single):Void;

    @:native('GetMouseWheelMove')
    static function GetMouseWheelMove():Single;

    @:native('GetMouseWheelMoveV')
    static function GetMouseWheelMoveV():Vector2;

    @:native('SetMouseCursor')
    static function SetMouseCursor(cursor:Int):Void;

    @:native('GetTouchX')
    static function GetTouchX():Int;

    @:native('GetTouchY')
    static function GetTouchY():Int;

    @:native('GetTouchPosition')
    static function GetTouchPosition(index:Int):Vector2;

    @:native('GetTouchPointId')
    static function GetTouchPointId(index:Int):Int;

    @:native('GetTouchPointCount')
    static function GetTouchPointCount():Int;

    @:native('SetGesturesEnabled')
    static function SetGesturesEnabled(flags:UInt32):Void;

    @:native('IsGestureDetected')
    static function IsGestureDetected(gesture:UInt32):Bool;

    @:native('GetGestureDetected')
    static function GetGestureDetected():Int;

    @:native('GetGestureHoldDuration')
    static function GetGestureHoldDuration():Single;

    @:native('GetGestureDragVector')
    static function GetGestureDragVector():Vector2;

    @:native('GetGestureDragAngle')
    static function GetGestureDragAngle():Single;

    @:native('GetGesturePinchVector')
    static function GetGesturePinchVector():Vector2;

    @:native('GetGesturePinchAngle')
    static function GetGesturePinchAngle():Single;

    @:native('UpdateCamera')
    static function UpdateCamera(camera:RawPointer<Camera3D>, mode:Int):Void;

    @:native('UpdateCameraPro')
    static function UpdateCameraPro(camera:RawPointer<Camera3D>, movement:Vector3, rotation:Vector3, zoom:Single):Void;

    @:native('SetShapesTexture')
    static function SetShapesTexture(texture:Texture, source:Rectangle):Void;

    @:native('GetShapesTexture')
    static function GetShapesTexture():Texture;

    @:native('GetShapesTextureRectangleImpl')
    static function GetShapesTextureRectangleImpl():Rectangle;

    @:native('DrawPixel')
    static function DrawPixel(posX:Int, posY:Int, color:Color):Void;

    @:native('DrawPixelV')
    static function DrawPixelV(position:Vector2, color:Color):Void;

    @:native('DrawLine')
    static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;

    @:native('DrawLineV')
    static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;

    @:native('DrawLineEx')
    static function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Single, color:Color):Void;

    @:native('DrawLineStrip')
    static function DrawLineStrip(points:RawConstPointer<Vector2>, pointCount:Int, color:Color):Void;

    @:native('DrawLineBezier')
    static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Single, color:Color):Void;

    @:native('DrawCircle')
    static function DrawCircle(centerX:Int, centerY:Int, radius:Single, color:Color):Void;

    @:native('DrawCircleSector')
    static function DrawCircleSector(center:Vector2, radius:Single, startAngle:Single, endAngle:Single, segments:Int, color:Color):Void;

    @:native('DrawCircleSectorLines')
    static function DrawCircleSectorLines(center:Vector2, radius:Single, startAngle:Single, endAngle:Single, segments:Int, color:Color):Void;

    @:native('DrawCircleGradient')
    static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Single, inner:Color, outer:Color):Void;

    @:native('DrawCircleV')
    static function DrawCircleV(center:Vector2, radius:Single, color:Color):Void;

    @:native('DrawCircleLines')
    static function DrawCircleLines(centerX:Int, centerY:Int, radius:Single, color:Color):Void;

    @:native('DrawCircleLinesV')
    static function DrawCircleLinesV(center:Vector2, radius:Single, color:Color):Void;

    @:native('DrawEllipse')
    static function DrawEllipse(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:Color):Void;

    @:native('DrawEllipseV')
    static function DrawEllipseV(center:Vector2, radiusH:Single, radiusV:Single, color:Color):Void;

    @:native('DrawEllipseLines')
    static function DrawEllipseLines(centerX:Int, centerY:Int, radiusH:Single, radiusV:Single, color:Color):Void;

    @:native('DrawEllipseLinesV')
    static function DrawEllipseLinesV(center:Vector2, radiusH:Single, radiusV:Single, color:Color):Void;

    @:native('DrawRing')
    static function DrawRing(center:Vector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int, color:Color):Void;

    @:native('DrawRingLines')
    static function DrawRingLines(center:Vector2, innerRadius:Single, outerRadius:Single, startAngle:Single, endAngle:Single, segments:Int, color:Color):Void;

    @:native('DrawRectangle')
    static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

    @:native('DrawRectangleV')
    static function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;

    @:native('DrawRectangleRec')
    static function DrawRectangleRec(rec:Rectangle, color:Color):Void;

    @:native('DrawRectanglePro')
    static function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Single, color:Color):Void;

    @:native('DrawRectangleGradientV')
    static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, top:Color, bottom:Color):Void;

    @:native('DrawRectangleGradientH')
    static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, left:Color, right:Color):Void;

    @:native('DrawRectangleGradientEx')
    static function DrawRectangleGradientEx(rec:Rectangle, topLeft:Color, bottomLeft:Color, bottomRight:Color, topRight:Color):Void;

    @:native('DrawRectangleLines')
    static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

    @:native('DrawRectangleLinesEx')
    static function DrawRectangleLinesEx(rec:Rectangle, lineThick:Single, color:Color):Void;

    @:native('DrawRectangleRounded')
    static function DrawRectangleRounded(rec:Rectangle, roundness:Single, segments:Int, color:Color):Void;

    @:native('DrawRectangleRoundedLines')
    static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Single, segments:Int, color:Color):Void;

    @:native('DrawRectangleRoundedLinesEx')
    static function DrawRectangleRoundedLinesEx(rec:Rectangle, roundness:Single, segments:Int, lineThick:Single, color:Color):Void;

    @:native('DrawTriangle')
    static function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

    @:native('DrawTriangleLines')
    static function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

    @:native('DrawTriangleFan')
    static function DrawTriangleFan(points:RawConstPointer<Vector2>, pointCount:Int, color:Color):Void;

    @:native('DrawTriangleStrip')
    static function DrawTriangleStrip(points:RawConstPointer<Vector2>, pointCount:Int, color:Color):Void;

    @:native('DrawPoly')
    static function DrawPoly(center:Vector2, sides:Int, radius:Single, rotation:Single, color:Color):Void;

    @:native('DrawPolyLines')
    static function DrawPolyLines(center:Vector2, sides:Int, radius:Single, rotation:Single, color:Color):Void;

    @:native('DrawPolyLinesEx')
    static function DrawPolyLinesEx(center:Vector2, sides:Int, radius:Single, rotation:Single, lineThick:Single, color:Color):Void;

    @:native('DrawSplineLinear')
    static function DrawSplineLinear(points:RawConstPointer<Vector2>, pointCount:Int, thick:Single, color:Color):Void;

    @:native('DrawSplineBasis')
    static function DrawSplineBasis(points:RawConstPointer<Vector2>, pointCount:Int, thick:Single, color:Color):Void;

    @:native('DrawSplineCatmullRom')
    static function DrawSplineCatmullRom(points:RawConstPointer<Vector2>, pointCount:Int, thick:Single, color:Color):Void;

    @:native('DrawSplineBezierQuadratic')
    static function DrawSplineBezierQuadratic(points:RawConstPointer<Vector2>, pointCount:Int, thick:Single, color:Color):Void;

    @:native('DrawSplineBezierCubic')
    static function DrawSplineBezierCubic(points:RawConstPointer<Vector2>, pointCount:Int, thick:Single, color:Color):Void;

    @:native('DrawSplineSegmentLinear')
    static function DrawSplineSegmentLinear(p1:Vector2, p2:Vector2, thick:Single, color:Color):Void;

    @:native('DrawSplineSegmentBasis')
    static function DrawSplineSegmentBasis(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, thick:Single, color:Color):Void;

    @:native('DrawSplineSegmentCatmullRom')
    static function DrawSplineSegmentCatmullRom(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, thick:Single, color:Color):Void;

    @:native('DrawSplineSegmentBezierQuadratic')
    static function DrawSplineSegmentBezierQuadratic(p1:Vector2, c2:Vector2, p3:Vector2, thick:Single, color:Color):Void;

    @:native('DrawSplineSegmentBezierCubic')
    static function DrawSplineSegmentBezierCubic(p1:Vector2, c2:Vector2, c3:Vector2, p4:Vector2, thick:Single, color:Color):Void;

    @:native('GetSplinePointLinear')
    static function GetSplinePointLinear(startPos:Vector2, endPos:Vector2, t:Single):Vector2;

    @:native('GetSplinePointBasis')
    static function GetSplinePointBasis(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, t:Single):Vector2;

    @:native('GetSplinePointCatmullRom')
    static function GetSplinePointCatmullRom(p1:Vector2, p2:Vector2, p3:Vector2, p4:Vector2, t:Single):Vector2;

    @:native('GetSplinePointBezierQuad')
    static function GetSplinePointBezierQuad(p1:Vector2, c2:Vector2, p3:Vector2, t:Single):Vector2;

    @:native('GetSplinePointBezierCubic')
    static function GetSplinePointBezierCubic(p1:Vector2, c2:Vector2, c3:Vector2, p4:Vector2, t:Single):Vector2;

    @:native('CheckCollisionRecs')
    static function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;

    @:native('CheckCollisionCircles')
    static function CheckCollisionCircles(center1:Vector2, radius1:Single, center2:Vector2, radius2:Single):Bool;

    @:native('CheckCollisionCircleRec')
    static function CheckCollisionCircleRec(center:Vector2, radius:Single, rec:Rectangle):Bool;

    @:native('CheckCollisionCircleLine')
    static function CheckCollisionCircleLine(center:Vector2, radius:Single, p1:Vector2, p2:Vector2):Bool;

    @:native('CheckCollisionPointRec')
    static function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;

    @:native('CheckCollisionPointCircle')
    static function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Single):Bool;

    @:native('CheckCollisionPointTriangle')
    static function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;

    @:native('CheckCollisionPointLine')
    static function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;

    @:native('CheckCollisionPointPoly')
    static function CheckCollisionPointPoly(point:Vector2, points:RawPointer<Vector2>, pointCount:Int):Bool;

    @:native('CheckCollisionLines')
    static function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2, collisionPoint:RawPointer<Vector2>):Bool;

    @:native('GetCollisionRec')
    static function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;

    @:native('LoadImage')
    static function LoadImage(fileName:ConstCharStar):Image;

    @:native('LoadImageRaw')
    static function LoadImageRaw(fileName:ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;

    @:native('LoadImageAnim')
    static function LoadImageAnim(fileName:ConstCharStar, frames:RawPointer<Int>):Image;

    @:native('LoadImageAnimFromMemory')
    static function LoadImageAnimFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<UInt8>, dataSize:Int, frames:RawPointer<Int>):Image;

    @:native('LoadImageFromMemory')
    static function LoadImageFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<UInt8>, dataSize:Int):Image;

    @:native('LoadImageFromTexture')
    static function LoadImageFromTexture(texture:Texture):Image;

    @:native('LoadImageFromScreen')
    static function LoadImageFromScreen():Image;

    @:native('IsImageValid')
    static function IsImageValid(image:Image):Bool;

    @:native('UnloadImage')
    static function UnloadImage(image:Image):Void;

    @:native('ExportImage')
    static function ExportImage(image:Image, fileName:ConstCharStar):Bool;

    @:native('ExportImageToMemory')
    static function ExportImageToMemory(image:Image, fileType:ConstCharStar, fileSize:RawPointer<Int>):RawPointer<UInt8>;

    @:native('ExportImageAsCode')
    static function ExportImageAsCode(image:Image, fileName:ConstCharStar):Bool;

    @:native('GenImageColor')
    static function GenImageColor(width:Int, height:Int, color:Color):Image;

    @:native('GenImageGradientLinear')
    static function GenImageGradientLinear(width:Int, height:Int, direction:Int, start:Color, end:Color):Image;

    @:native('GenImageGradientRadial')
    static function GenImageGradientRadial(width:Int, height:Int, density:Single, inner:Color, outer:Color):Image;

    @:native('GenImageGradientSquare')
    static function GenImageGradientSquare(width:Int, height:Int, density:Single, inner:Color, outer:Color):Image;

    @:native('GenImageChecked')
    static function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image;

    @:native('GenImageWhiteNoise')
    static function GenImageWhiteNoise(width:Int, height:Int, factor:Single):Image;

    @:native('GenImagePerlinNoise')
    static function GenImagePerlinNoise(width:Int, height:Int, offsetX:Int, offsetY:Int, scale:Single):Image;

    @:native('GenImageCellular')
    static function GenImageCellular(width:Int, height:Int, tileSize:Int):Image;

    @:native('GenImageText')
    static function GenImageText(width:Int, height:Int, text:ConstCharStar):Image;

    @:native('ImageCopy')
    static function ImageCopy(image:Image):Image;

    @:native('ImageFromImage')
    static function ImageFromImage(image:Image, rec:Rectangle):Image;

    @:native('ImageFromChannel')
    static function ImageFromChannel(image:Image, selectedChannel:Int):Image;

    @:native('ImageText')
    static function ImageText(text:ConstCharStar, fontSize:Int, color:Color):Image;

    @:native('ImageTextEx')
    static function ImageTextEx(font:Font, text:ConstCharStar, fontSize:Single, spacing:Single, tint:Color):Image;

    @:native('ImageFormat')
    static function ImageFormat(image:RawPointer<Image>, newFormat:Int):Void;

    @:native('ImageToPOT')
    static function ImageToPOT(image:RawPointer<Image>, fill:Color):Void;

    @:native('ImageCrop')
    static function ImageCrop(image:RawPointer<Image>, crop:Rectangle):Void;

    @:native('ImageAlphaCrop')
    static function ImageAlphaCrop(image:RawPointer<Image>, threshold:Single):Void;

    @:native('ImageAlphaClear')
    static function ImageAlphaClear(image:RawPointer<Image>, color:Color, threshold:Single):Void;

    @:native('ImageAlphaMask')
    static function ImageAlphaMask(image:RawPointer<Image>, alphaMask:Image):Void;

    @:native('ImageAlphaPremultiply')
    static function ImageAlphaPremultiply(image:RawPointer<Image>):Void;

    @:native('ImageBlurGaussian')
    static function ImageBlurGaussian(image:RawPointer<Image>, blurSize:Int):Void;

    @:native('ImageKernelConvolution')
    static function ImageKernelConvolution(image:RawPointer<Image>, kernel:RawConstPointer<Single>, kernelSize:Int):Void;

    @:native('ImageResize')
    static function ImageResize(image:RawPointer<Image>, newWidth:Int, newHeight:Int):Void;

    @:native('ImageResizeNN')
    static function ImageResizeNN(image:RawPointer<Image>, newWidth:Int, newHeight:Int):Void;

    @:native('ImageResizeCanvas')
    static function ImageResizeCanvas(image:RawPointer<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void;

    @:native('ImageMipmaps')
    static function ImageMipmaps(image:RawPointer<Image>):Void;

    @:native('ImageDither')
    static function ImageDither(image:RawPointer<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;

    @:native('ImageFlipVertical')
    static function ImageFlipVertical(image:RawPointer<Image>):Void;

    @:native('ImageFlipHorizontal')
    static function ImageFlipHorizontal(image:RawPointer<Image>):Void;

    @:native('ImageRotate')
    static function ImageRotate(image:RawPointer<Image>, degrees:Int):Void;

    @:native('ImageRotateCW')
    static function ImageRotateCW(image:RawPointer<Image>):Void;

    @:native('ImageRotateCCW')
    static function ImageRotateCCW(image:RawPointer<Image>):Void;

    @:native('ImageColorTint')
    static function ImageColorTint(image:RawPointer<Image>, color:Color):Void;

    @:native('ImageColorInvert')
    static function ImageColorInvert(image:RawPointer<Image>):Void;

    @:native('ImageColorGrayscale')
    static function ImageColorGrayscale(image:RawPointer<Image>):Void;

    @:native('ImageColorContrast')
    static function ImageColorContrast(image:RawPointer<Image>, contrast:Single):Void;

    @:native('ImageColorBrightness')
    static function ImageColorBrightness(image:RawPointer<Image>, brightness:Int):Void;

    @:native('ImageColorReplace')
    static function ImageColorReplace(image:RawPointer<Image>, color:Color, replace:Color):Void;

    @:native('LoadImageColors')
    static function LoadImageColors(image:Image):RawPointer<Color>;

    @:native('LoadImagePalette')
    static function LoadImagePalette(image:Image, maxPaletteSize:Int, colorCount:RawPointer<Int>):RawPointer<Color>;

    @:native('UnloadImageColors')
    static function UnloadImageColors(colors:RawPointer<Color>):Void;

    @:native('UnloadImagePalette')
    static function UnloadImagePalette(colors:RawPointer<Color>):Void;

    @:native('GetImageAlphaBorder')
    static function GetImageAlphaBorder(image:Image, threshold:Single):Rectangle;

    @:native('GetImageColor')
    static function GetImageColor(image:Image, x:Int, y:Int):Color;

    @:native('ImageClearBackground')
    static function ImageClearBackground(dst:RawPointer<Image>, color:Color):Void;

    @:native('ImageDrawPixel')
    static function ImageDrawPixel(dst:RawPointer<Image>, posX:Int, posY:Int, color:Color):Void;

    @:native('ImageDrawPixelV')
    static function ImageDrawPixelV(dst:RawPointer<Image>, position:Vector2, color:Color):Void;

    @:native('ImageDrawLine')
    static function ImageDrawLine(dst:RawPointer<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;

    @:native('ImageDrawLineV')
    static function ImageDrawLineV(dst:RawPointer<Image>, start:Vector2, end:Vector2, color:Color):Void;

    @:native('ImageDrawLineEx')
    static function ImageDrawLineEx(dst:RawPointer<Image>, start:Vector2, end:Vector2, thick:Int, color:Color):Void;

    @:native('ImageDrawCircle')
    static function ImageDrawCircle(dst:RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;

    @:native('ImageDrawCircleV')
    static function ImageDrawCircleV(dst:RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void;

    @:native('ImageDrawCircleLines')
    static function ImageDrawCircleLines(dst:RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;

    @:native('ImageDrawCircleLinesV')
    static function ImageDrawCircleLinesV(dst:RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void;

    @:native('ImageDrawRectangle')
    static function ImageDrawRectangle(dst:RawPointer<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;

    @:native('ImageDrawRectangleV')
    static function ImageDrawRectangleV(dst:RawPointer<Image>, position:Vector2, size:Vector2, color:Color):Void;

    @:native('ImageDrawRectangleRec')
    static function ImageDrawRectangleRec(dst:RawPointer<Image>, rec:Rectangle, color:Color):Void;

    @:native('ImageDrawRectangleLines')
    static function ImageDrawRectangleLines(dst:RawPointer<Image>, rec:Rectangle, thick:Int, color:Color):Void;

    @:native('ImageDrawTriangle')
    static function ImageDrawTriangle(dst:RawPointer<Image>, v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

    @:native('ImageDrawTriangleEx')
    static function ImageDrawTriangleEx(dst:RawPointer<Image>, v1:Vector2, v2:Vector2, v3:Vector2, c1:Color, c2:Color, c3:Color):Void;

    @:native('ImageDrawTriangleLines')
    static function ImageDrawTriangleLines(dst:RawPointer<Image>, v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;

    @:native('ImageDrawTriangleFan')
    static function ImageDrawTriangleFan(dst:RawPointer<Image>, points:RawConstPointer<Vector2>, pointCount:Int, color:Color):Void;

    @:native('ImageDrawTriangleStrip')
    static function ImageDrawTriangleStrip(dst:RawPointer<Image>, points:RawConstPointer<Vector2>, pointCount:Int, color:Color):Void;

    @:native('ImageDraw')
    static function ImageDraw(dst:RawPointer<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;

    @:native('ImageDrawText')
    static function ImageDrawText(dst:RawPointer<Image>, text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;

    @:native('ImageDrawTextEx')
    static function ImageDrawTextEx(dst:RawPointer<Image>, font:Font, text:ConstCharStar, position:Vector2, fontSize:Single, spacing:Single, tint:Color):Void;

    @:native('LoadTexture')
    static function LoadTexture(fileName:ConstCharStar):Texture;

    @:native('LoadTextureFromImage')
    static function LoadTextureFromImage(image:Image):Texture;

    @:native('LoadTextureCubemap')
    static function LoadTextureCubemap(image:Image, layout:Int):Texture;

    @:native('LoadRenderTexture')
    static function LoadRenderTexture(width:Int, height:Int):RenderTexture;

    @:native('IsTextureValid')
    static function IsTextureValid(texture:Texture):Bool;

    @:native('UnloadTexture')
    static function UnloadTexture(texture:Texture):Void;

    @:native('IsRenderTextureValid')
    static function IsRenderTextureValid(target:RenderTexture):Bool;

    @:native('UnloadRenderTexture')
    static function UnloadRenderTexture(target:RenderTexture):Void;

    @:native('UpdateTexture')
    static function UpdateTexture(texture:Texture, pixels:RawConstPointer<cpp.Void>):Void;

    @:native('UpdateTextureRec')
    static function UpdateTextureRec(texture:Texture, rec:Rectangle, pixels:RawConstPointer<cpp.Void>):Void;

    @:native('GenTextureMipmaps')
    static function GenTextureMipmaps(texture:RawPointer<Texture>):Void;

    @:native('SetTextureFilter')
    static function SetTextureFilter(texture:Texture, filter:Int):Void;

    @:native('SetTextureWrap')
    static function SetTextureWrap(texture:Texture, wrap:Int):Void;

    @:native('DrawTexture')
    static function DrawTexture(texture:Texture, posX:Int, posY:Int, tint:Color):Void;

    @:native('DrawTextureV')
    static function DrawTextureV(texture:Texture, position:Vector2, tint:Color):Void;

    @:native('DrawTextureEx')
    static function DrawTextureEx(texture:Texture, position:Vector2, rotation:Single, scale:Single, tint:Color):Void;

    @:native('DrawTextureRec')
    static function DrawTextureRec(texture:Texture, source:Rectangle, position:Vector2, tint:Color):Void;

    @:native('DrawTexturePro')
    static function DrawTexturePro(texture:Texture, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Single, tint:Color):Void;

    @:native('DrawTextureNPatch')
    static function DrawTextureNPatch(texture:Texture, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Single, tint:Color):Void;

    @:native('ColorIsEqual')
    static function ColorIsEqual(col1:Color, col2:Color):Bool;

    @:native('Fade')
    static function Fade(color:Color, alpha:Single):Color;

    @:native('ColorToInt')
    static function ColorToInt(color:Color):Int;

    @:native('ColorNormalize')
    static function ColorNormalize(color:Color):Vector4;

    @:native('ColorFromNormalized')
    static function ColorFromNormalized(normalized:Vector4):Color;

    @:native('ColorToHSV')
    static function ColorToHSV(color:Color):Vector3;

    @:native('ColorFromHSV')
    static function ColorFromHSV(hue:Single, saturation:Single, value:Single):Color;

    @:native('ColorTint')
    static function ColorTint(color:Color, tint:Color):Color;

    @:native('ColorBrightness')
    static function ColorBrightness(color:Color, factor:Single):Color;

    @:native('ColorContrast')
    static function ColorContrast(color:Color, contrast:Single):Color;

    @:native('ColorAlpha')
    static function ColorAlpha(color:Color, alpha:Single):Color;

    @:native('ColorAlphaBlend')
    static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;

    @:native('ColorLerp')
    static function ColorLerp(color1:Color, color2:Color, factor:Single):Color;

    @:native('GetColor')
    static function GetColor(hexValue:UInt):Color;

    @:native('GetPixelColor')
    static function GetPixelColor(srcPtr:RawPointer<cpp.Void>, format:Int):Color;

    @:native('SetPixelColor')
    static function SetPixelColor(dstPtr:RawPointer<cpp.Void>, color:Color, format:Int):Void;

    @:native('GetPixelDataSize')
    static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

    @:native('GetFontDefault')
    static function GetFontDefault():Font;

    @:native('LoadFont')
    static function LoadFont(fileName:ConstCharStar):Font;

    @:native('LoadFontEx')
    static function LoadFontEx(fileName:ConstCharStar, fontSize:Int, codepoints:RawPointer<Int>, codepointCount:Int):Font;

    @:native('LoadFontFromImage')
    static function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font;

    @:native('LoadFontFromMemory')
    static function LoadFontFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<UInt8>, dataSize:Int, fontSize:Int, codepoints:RawPointer<Int>,
        codepointCount:Int):Font;

    @:native('IsFontValid')
    static function IsFontValid(font:Font):Bool;

    @:native('LoadFontData')
    static function LoadFontData(fileData:RawConstPointer<UInt8>, dataSize:Int, fontSize:Int, codepoints:RawPointer<Int>, codepointCount:Int,
        type:Int):RawPointer<GlyphInfo>;

    @:native('GenImageFontAtlas')
    static function GenImageFontAtlas(glyphs:RawPointer<GlyphInfo>, glyphRecs:RawPointer<RawPointer<Rectangle>>, glyphCount:Int, fontSize:Int, padding:Int,
        packMethod:Int):Image;

    @:native('UnloadFontData')
    static function UnloadFontData(glyphs:RawPointer<GlyphInfo>, glyphCount:Int):Void;

    @:native('UnloadFont')
    static function UnloadFont(font:Font):Void;

    @:native('ExportFontAsCode')
    static function ExportFontAsCode(font:Font, fileName:ConstCharStar):Bool;

    @:native('DrawFPS')
    static function DrawFPS(posX:Int, posY:Int):Void;

    @:native('DrawText')
    static function DrawText(text:ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;

    @:native('DrawTextEx')
    static function DrawTextEx(font:Font, text:ConstCharStar, position:Vector2, fontSize:Single, spacing:Single, tint:Color):Void;

    @:native('DrawTextPro')
    static function DrawTextPro(font:Font, text:ConstCharStar, position:Vector2, origin:Vector2, rotation:Single, fontSize:Single, spacing:Single,
        tint:Color):Void;

    @:native('DrawTextCodepoint')
    static function DrawTextCodepoint(font:Font, codepoint:Int, position:Vector2, fontSize:Single, tint:Color):Void;

    @:native('DrawTextCodepoints')
    static function DrawTextCodepoints(font:Font, codepoints:RawPointer<Int>, codepointCount:Int, position:Vector2, fontSize:Single, spacing:Single,
        tint:Color):Void;

    @:native('SetTextLineSpacing')
    static function SetTextLineSpacing(spacing:Int):Void;

    @:native('MeasureText')
    static function MeasureText(text:ConstCharStar, fontSize:Int):Int;

    @:native('MeasureTextEx')
    static function MeasureTextEx(font:Font, text:ConstCharStar, fontSize:Single, spacing:Single):Vector2;

    @:native('GetGlyphIndex')
    static function GetGlyphIndex(font:Font, codepoint:Int):Int;

    @:native('GetGlyphInfo')
    static function GetGlyphInfo(font:Font, codepoint:Int):GlyphInfo;

    @:native('GetGlyphAtlasRec')
    static function GetGlyphAtlasRec(font:Font, codepoint:Int):Rectangle;

    @:native('LoadUTF8')
    static function LoadUTF8(codepoints:RawPointer<Int>, length:Int):ConstCharStar;

    @:native('UnloadUTF8')
    static function UnloadUTF8(text:ConstCharStar):Void;

    @:native('LoadCodepoints')
    static function LoadCodepoints(text:ConstCharStar, count:RawPointer<Int>):RawPointer<Int>;

    @:native('UnloadCodepoints')
    static function UnloadCodepoints(codepoints:RawPointer<Int>):Void;

    @:native('GetCodepointCount')
    static function GetCodepointCount(text:ConstCharStar):Int;

    @:native('GetCodepoint')
    static function GetCodepoint(text:ConstCharStar, codepointSize:RawPointer<Int>):Int;

    @:native('GetCodepointNext')
    static function GetCodepointNext(text:ConstCharStar, codepointSize:RawPointer<Int>):Int;

    @:native('GetCodepointPrevious')
    static function GetCodepointPrevious(text:ConstCharStar, codepointSize:RawPointer<Int>):Int;

    @:native('CodepointToUTF8')
    static function CodepointToUTF8(codepoint:Int, utf8Size:RawPointer<Int>):ConstCharStar;

    @:native('TextCopy')
    static function TextCopy(dst:RawPointer<UInt8>, src:ConstCharStar):Int;

    @:native('TextIsEqual')
    static function TextIsEqual(text1:ConstCharStar, text2:ConstCharStar):Bool;

    @:native('TextLength')
    static function TextLength(text:ConstCharStar):UInt;

    @:native('TextFormat')
    static function TextFormat(text:ConstCharStar, args:Rest<VarArg>):ConstCharStar;

    @:native('TextSubtext')
    static function TextSubtext(text:ConstCharStar, position:Int, length:Int):ConstCharStar;

    @:native('TextReplace')
    static function TextReplace(text:ConstCharStar, replace:ConstCharStar, by:ConstCharStar):ConstCharStar;

    @:native('TextInsert')
    static function TextInsert(text:ConstCharStar, insert:ConstCharStar, position:Int):ConstCharStar;

    @:native('TextJoin')
    static function TextJoin(textList:RawPointer<CastCharStar>, count:Int, delimiter:ConstCharStar):CastCharStar;

    @:native('TextSplit')
    static function TextSplit(text:ConstCharStar, delimiter:Char, count:RawPointer<Int>):RawPointer<CastCharStar>;

    @:native('TextAppend')
    static function TextAppend(text:RawPointer<UInt8>, append:ConstCharStar, position:RawPointer<Int>):Void;

    @:native('TextFindIndex')
    static function TextFindIndex(text:ConstCharStar, find:ConstCharStar):Int;

    @:native('TextToUpper')
    static function TextToUpper(text:ConstCharStar):ConstCharStar;

    @:native('TextToLower')
    static function TextToLower(text:ConstCharStar):ConstCharStar;

    @:native('TextToPascal')
    static function TextToPascal(text:ConstCharStar):ConstCharStar;

    @:native('TextToSnake')
    static function TextToSnake(text:ConstCharStar):ConstCharStar;

    @:native('TextToCamel')
    static function TextToCamel(text:ConstCharStar):ConstCharStar;

    @:native('TextToInteger')
    static function TextToInteger(text:ConstCharStar):Int;

    @:native('TextToFloat')
    static function TextToFloat(text:ConstCharStar):Single;

    @:native('DrawLine3D')
    static function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;

    @:native('DrawPoint3D')
    static function DrawPoint3D(position:Vector3, color:Color):Void;

    @:native('DrawCircle3D')
    static function DrawCircle3D(center:Vector3, radius:Single, rotationAxis:Vector3, rotationAngle:Single, color:Color):Void;

    @:native('DrawTriangle3D')
    static function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;

    @:native('DrawTriangleStrip3D')
    static function DrawTriangleStrip3D(points:RawConstPointer<Vector3>, pointCount:Int, color:Color):Void;

    @:native('DrawCube')
    static function DrawCube(position:Vector3, width:Single, height:Single, length:Single, color:Color):Void;

    @:native('DrawCubeV')
    static function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;

    @:native('DrawCubeWires')
    static function DrawCubeWires(position:Vector3, width:Single, height:Single, length:Single, color:Color):Void;

    @:native('DrawCubeWiresV')
    static function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;

    @:native('DrawSphere')
    static function DrawSphere(centerPos:Vector3, radius:Single, color:Color):Void;

    @:native('DrawSphereEx')
    static function DrawSphereEx(centerPos:Vector3, radius:Single, rings:Int, slices:Int, color:Color):Void;

    @:native('DrawSphereWires')
    static function DrawSphereWires(centerPos:Vector3, radius:Single, rings:Int, slices:Int, color:Color):Void;

    @:native('DrawCylinder')
    static function DrawCylinder(position:Vector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int, color:Color):Void;

    @:native('DrawCylinderEx')
    static function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Single, endRadius:Single, sides:Int, color:Color):Void;

    @:native('DrawCylinderWires')
    static function DrawCylinderWires(position:Vector3, radiusTop:Single, radiusBottom:Single, height:Single, slices:Int, color:Color):Void;

    @:native('DrawCylinderWiresEx')
    static function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Single, endRadius:Single, sides:Int, color:Color):Void;

    @:native('DrawCapsule')
    static function DrawCapsule(startPos:Vector3, endPos:Vector3, radius:Single, slices:Int, rings:Int, color:Color):Void;

    @:native('DrawCapsuleWires')
    static function DrawCapsuleWires(startPos:Vector3, endPos:Vector3, radius:Single, slices:Int, rings:Int, color:Color):Void;

    @:native('DrawPlane')
    static function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;

    @:native('DrawRay')
    static function DrawRay(ray:Ray, color:Color):Void;

    @:native('DrawGrid')
    static function DrawGrid(slices:Int, spacing:Single):Void;

    @:native('LoadModel')
    static function LoadModel(fileName:ConstCharStar):Model;

    @:native('LoadModelFromMesh')
    static function LoadModelFromMesh(mesh:Mesh):Model;

    @:native('IsModelValid')
    static function IsModelValid(model:Model):Bool;

    @:native('UnloadModel')
    static function UnloadModel(model:Model):Void;

    @:native('GetModelBoundingBox')
    static function GetModelBoundingBox(model:Model):BoundingBox;

    @:native('DrawModel')
    static function DrawModel(model:Model, position:Vector3, scale:Single, tint:Color):Void;

    @:native('DrawModelEx')
    static function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Single, scale:Vector3, tint:Color):Void;

    @:native('DrawModelWires')
    static function DrawModelWires(model:Model, position:Vector3, scale:Single, tint:Color):Void;

    @:native('DrawModelWiresEx')
    static function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Single, scale:Vector3, tint:Color):Void;

    @:native('DrawModelPoints')
    static function DrawModelPoints(model:Model, position:Vector3, scale:Single, tint:Color):Void;

    @:native('DrawModelPointsEx')
    static function DrawModelPointsEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Single, scale:Vector3, tint:Color):Void;

    @:native('DrawBoundingBox')
    static function DrawBoundingBox(box:BoundingBox, color:Color):Void;

    @:native('DrawBillboard')
    static function DrawBillboard(camera:Camera3D, texture:Texture, position:Vector3, scale:Single, tint:Color):Void;

    @:native('DrawBillboardRec')
    static function DrawBillboardRec(camera:Camera3D, texture:Texture, source:Rectangle, position:Vector3, size:Vector2, tint:Color):Void;

    @:native('DrawBillboardPro')
    static function DrawBillboardPro(camera:Camera3D, texture:Texture, source:Rectangle, position:Vector3, up:Vector3, size:Vector2, origin:Vector2,
        rotation:Single, tint:Color):Void;

    @:native('UploadMesh')
    static function UploadMesh(mesh:Mesh, dynamicBuffer:Bool):Void;

    @:native('UpdateMeshBuffer')
    static function UpdateMeshBuffer(mesh:Mesh, index:Int, data:RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;

    @:native('UnloadMesh')
    static function UnloadMesh(mesh:Mesh):Void;

    @:native('DrawMesh')
    static function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;

    @:native('DrawMeshInstanced')
    static function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:RawPointer<Matrix>, instances:Int):Void;

    @:native('GetMeshBoundingBox')
    static function GetMeshBoundingBox(mesh:Mesh):BoundingBox;

    @:native('GenMeshTangents')
    static function GenMeshTangents(mesh:Mesh):Void;

    @:native('ExportMesh')
    static function ExportMesh(mesh:Mesh, fileName:ConstCharStar):Bool;

    @:native('ExportMeshAsCode')
    static function ExportMeshAsCode(mesh:Mesh, fileName:ConstCharStar):Bool;

    @:native('GenMeshPoly')
    static function GenMeshPoly(sides:Int, radius:Single):Mesh;

    @:native('GenMeshPlane')
    static function GenMeshPlane(width:Single, length:Single, resX:Int, resZ:Int):Mesh;

    @:native('GenMeshCube')
    static function GenMeshCube(width:Single, height:Single, length:Single):Mesh;

    @:native('GenMeshSphere')
    static function GenMeshSphere(radius:Single, rings:Int, slices:Int):Mesh;

    @:native('GenMeshHemiSphere')
    static function GenMeshHemiSphere(radius:Single, rings:Int, slices:Int):Mesh;

    @:native('GenMeshCylinder')
    static function GenMeshCylinder(radius:Single, height:Single, slices:Int):Mesh;

    @:native('GenMeshCone')
    static function GenMeshCone(radius:Single, height:Single, slices:Int):Mesh;

    @:native('GenMeshTorus')
    static function GenMeshTorus(radius:Single, size:Single, radSeg:Int, sides:Int):Mesh;

    @:native('GenMeshKnot')
    static function GenMeshKnot(radius:Single, size:Single, radSeg:Int, sides:Int):Mesh;

    @:native('GenMeshHeightmap')
    static function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh;

    @:native('GenMeshCubicmap')
    static function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh;

    @:native('LoadMaterials')
    static function LoadMaterials(fileName:ConstCharStar, materialCount:RawPointer<Int>):RawPointer<Material>;

    @:native('LoadMaterialDefault')
    static function LoadMaterialDefault():Material;

    @:native('IsMaterialValid')
    static function IsMaterialValid(material:Material):Bool;

    @:native('UnloadMaterial')
    static function UnloadMaterial(material:Material):Void;

    @:native('SetMaterialTexture')
    static function SetMaterialTexture(material:RawPointer<Material>, mapType:Int, texture:Texture):Void;

    @:native('SetModelMeshMaterial')
    static function SetModelMeshMaterial(model:RawPointer<Model>, meshId:Int, materialId:Int):Void;

    @:native('LoadModelAnimations')
    static function LoadModelAnimations(fileName:ConstCharStar, animCount:RawPointer<Int>):RawPointer<ModelAnimation>;

    @:native('UpdateModelAnimation')
    static function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;

    @:native('UnloadModelAnimation')
    static function UnloadModelAnimation(anim:ModelAnimation):Void;

    @:native('UnloadModelAnimations')
    static function UnloadModelAnimations(animations:RawPointer<ModelAnimation>, animCount:Int):Void;

    @:native('IsModelAnimationValid')
    static function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool;

    @:native('UpdateModelAnimationBones')
    static function UpdateModelAnimationBones(model:Model, anim:ModelAnimation, frame:Int):Void;

    @:native('CheckCollisionSpheres')
    static function CheckCollisionSpheres(center1:Vector3, radius1:Single, center2:Vector3, radius2:Single):Bool;

    @:native('CheckCollisionBoxes')
    static function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;

    @:native('CheckCollisionBoxSphere')
    static function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Single):Bool;

    @:native('GetRayCollisionSphere')
    static function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Single):RayCollision;

    @:native('GetRayCollisionBox')
    static function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;

    @:native('GetRayCollisionMesh')
    static function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;

    @:native('GetRayCollisionTriangle')
    static function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;

    @:native('GetRayCollisionQuad')
    static function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;

    @:native('InitAudioDevice')
    static function InitAudioDevice():Void;

    @:native('CloseAudioDevice')
    static function CloseAudioDevice():Void;

    @:native('IsAudioDeviceValid')
    static function IsAudioDeviceValid():Bool;

    @:native('SetMasterVolume')
    static function SetMasterVolume(volume:Single):Void;

    @:native('GetMasterVolume')
    static function GetMasterVolume():Single;

    @:native('LoadWave')
    static function LoadWave(fileName:ConstCharStar):Wave;

    @:native('LoadWaveFromMemory')
    static function LoadWaveFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<UInt8>, dataSize:Int):Wave;

    @:native('IsWaveValid')
    static function IsWaveValid(wave:Wave):Bool;

    @:native('LoadSound')
    static function LoadSound(fileName:ConstCharStar):Sound;

    @:native('LoadSoundFromWave')
    static function LoadSoundFromWave(wave:Wave):Sound;

    @:native('LoadSoundAlias')
    static function LoadSoundAlias(source:Sound):Sound;

    @:native('IsSoundValid')
    static function IsSoundValid(sound:Sound):Bool;

    @:native('UpdateSound')
    static function UpdateSound(sound:Sound, data:RawConstPointer<cpp.Void>, frameCount:Int):Void;

    @:native('UnloadWave')
    static function UnloadWave(wave:Wave):Void;

    @:native('UnloadSound')
    static function UnloadSound(sound:Sound):Void;

    @:native('UnloadSoundAlias')
    static function UnloadSoundAlias(alias:Sound):Void;

    @:native('ExportWave')
    static function ExportWave(wave:Wave, fileName:ConstCharStar):Bool;

    @:native('ExportWaveAsCode')
    static function ExportWaveAsCode(wave:Wave, fileName:ConstCharStar):Bool;

    @:native('PlaySound')
    static function PlaySound(sound:Sound):Void;

    @:native('StopSound')
    static function StopSound(sound:Sound):Void;

    @:native('PauseSound')
    static function PauseSound(sound:Sound):Void;

    @:native('ResumeSound')
    static function ResumeSound(sound:Sound):Void;

    @:native('IsSoundPlaying')
    static function IsSoundPlaying(sound:Sound):Bool;

    @:native('SetSoundVolume')
    static function SetSoundVolume(sound:Sound, volume:Single):Void;

    @:native('SetSoundPitch')
    static function SetSoundPitch(sound:Sound, pitch:Single):Void;

    @:native('SetSoundPan')
    static function SetSoundPan(sound:Sound, pan:Single):Void;

    @:native('WaveCopy')
    static function WaveCopy(wave:Wave):Wave;

    @:native('WaveCrop')
    static function WaveCrop(wave:RawPointer<Wave>, initFrame:Int, finalFrame:Int):Void;

    @:native('WaveFormat')
    static function WaveFormat(wave:RawPointer<Wave>, initSample:Int, finalSample:Int, channels:Int):Void;

    @:native('LoadWaveSamples')
    static function LoadWaveSamples(wave:Wave):RawPointer<Single>;

    @:native('UnloadWaveSamples')
    static function UnloadWaveSamples(samples:RawPointer<Single>):Void;

    @:native('LoadMusicStream')
    static function LoadMusicStream(fileName:ConstCharStar):Music;

    @:native('LoadMusicStreamFromMemory')
    static function LoadMusicStreamFromMemory(fileType:ConstCharStar, fileData:RawConstPointer<UInt8>, dataSize:Int):Music;

    @:native('IsMusicValid')
    static function IsMusicValid(music:Music):Bool;

    @:native('UnloadMusicStream')
    static function UnloadMusicStream(music:Music):Void;

    @:native('PlayMusicStream')
    static function PlayMusicStream(music:Music):Void;

    @:native('IsMusicStreamPlaying')
    static function IsMusicStreamPlaying(music:Music):Bool;

    @:native('UpdateMusicStream')
    static function UpdateMusicStream(music:Music):Void;

    @:native('StopMusicStream')
    static function StopMusicStream(music:Music):Void;

    @:native('PauseMusicStream')
    static function PauseMusicStream(music:Music):Void;

    @:native('ResumeMusicStream')
    static function ResumeMusicStream(music:Music):Void;

    @:native('SeekMusicStream')
    static function SeekMusicStream(music:Music, position:Single):Void;

    @:native('SetMusicVolume')
    static function SetMusicVolume(music:Music, volume:Single):Void;

    @:native('SetMusicPitch')
    static function SetMusicPitch(music:Music, pitch:Single):Void;

    @:native('SetMusicPan')
    static function SetMusicPan(music:Music, pan:Single):Void;

    @:native('GetMusicTimeLength')
    static function GetMusicTimeLength(music:Music):Single;

    @:native('GetMusicTimePlayed')
    static function GetMusicTimePlayed(music:Music):Single;

    @:native('LoadAudioStream')
    static function LoadAudioStream(sampleRate:UInt32, sampleSize:UInt32, channels:UInt32):AudioStream;

    @:native('IsAudioStreamValid')
    static function IsAudioStreamValid(stream:AudioStream):Bool;

    @:native('UnloadAudioStream')
    static function UnloadAudioStream(stream:AudioStream):Void;

    @:native('UpdateAudioStream')
    static function UpdateAudioStream(stream:AudioStream, data:RawConstPointer<cpp.Void>, samplesCount:Int):Void;

    @:native('IsAudioStreamProcessed')
    static function IsAudioStreamProcessed(stream:AudioStream):Bool;

    @:native('PlayAudioStream')
    static function PlayAudioStream(stream:AudioStream):Void;

    @:native('PauseAudioStream')
    static function PauseAudioStream(stream:AudioStream):Void;

    @:native('ResumeAudioStream')
    static function ResumeAudioStream(stream:AudioStream):Void;

    @:native('IsAudioStreamPlaying')
    static function IsAudioStreamPlaying(stream:AudioStream):Bool;

    @:native('StopAudioStream')
    static function StopAudioStream(stream:AudioStream):Void;

    @:native('SetAudioStreamVolume')
    static function SetAudioStreamVolume(stream:AudioStream, volume:Single):Void;

    @:native('SetAudioStreamPitch')
    static function SetAudioStreamPitch(stream:AudioStream, pitch:Single):Void;

    @:native('SetAudioStreamPan')
    static function SetAudioStreamPan(stream:AudioStream, pan:Single):Void;

    @:native('SetAudioStreamBufferSizeDefault')
    static function SetAudioStreamBufferSizeDefault(size:Int):Void;

    @:native('SetAudioStreamCallback')
    static function SetAudioStreamCallback(stream:AudioStream, callback:AudioCallback):Void;

    @:native('AttachAudioStreamProcessor')
    static function AttachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;

    @:native('DetachAudioStreamProcessor')
    static function DetachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void;

    @:native('AttachAudioMixedProcessor')
    static function AttachAudioMixedProcessor(processor:AudioCallback):Void;

    @:native('DetachAudioMixedProcessor')
    static function DetachAudioMixedProcessor(processor:AudioCallback):Void;
}
