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

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import raylib.Types;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('rcamera-impl.h')
@:unreflective
extern class RCamera
{
    @:native('GetCameraForward')
    static function GetCameraForward(camera:cpp.RawPointer<Camera3DImpl>):Vector3Impl;

    @:native('GetCameraUp')
    static function GetCameraUp(camera:cpp.RawPointer<Camera3DImpl>):Vector3Impl;

    @:native('GetCameraRight')
    static function GetCameraRight(camera:cpp.RawPointer<Camera3DImpl>):Vector3Impl;

    @:native('CameraMoveForward')
    static function CameraMoveForward(camera:cpp.RawPointer<Camera3DImpl>, distance:Single, moveInWorldPlane:Bool):Void;

    @:native('CameraMoveUp')
    static function CameraMoveUp(camera:cpp.RawPointer<Camera3DImpl>, distance:Single):Void;

    @:native('CameraMoveRight')
    static function CameraMoveRight(camera:cpp.RawPointer<Camera3DImpl>, distance:Single, moveInWorldPlane:Bool):Void;

    @:native('CameraMoveToTarget')
    static function CameraMoveToTarget(camera:cpp.RawPointer<Camera3DImpl>, delta:Single):Void;

    @:native('CameraYaw')
    static function CameraYaw(camera:cpp.RawPointer<Camera3DImpl>, angle:Single, rotateAroundTarget:Bool):Void;

    @:native('CameraPitch')
    static function CameraPitch(camera:cpp.RawPointer<Camera3DImpl>, angle:Single, lockView:Bool, rotateAroundTarget:Bool, rotateUp:Bool):Void;

    @:native('CameraRoll')
    static function CameraRoll(camera:cpp.RawPointer<Camera3DImpl>, angle:Single):Void;

    @:native('GetCameraViewMatrix')
    static function GetCameraViewMatrix(camera:cpp.RawPointer<Camera3DImpl>):MatrixImpl;

    @:native('GetCameraProjectionMatrix')
    static function GetCameraProjectionMatrix(camera:cpp.RawPointer<Camera3DImpl>, aspect:Single):MatrixImpl;
}
