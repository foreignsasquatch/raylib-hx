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

package;

#if !cpp
#error 'Raylib supports only C++ target platforms.'
#end
import Raylib;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raymath-impl.h')
@:unreflective
extern class Raymath
{
    @:native('Clamp') static function clamp(value:Single, min:Single, max:Single):Single;
    @:native('Lerp') static function lerp(start:Single, end:Single, amount:Single):Single;
    @:native('Normalize') static function normalize(value:Single, start:Single, end:Single):Single;
    @:native('Remap') static function remap(value:Single, inputStart:Single, inputEnd:Single, outputStart:Single, outputEnd:Single):Single;
    @:native('Wrap') static function wrap(value:Single, min:Single, max:Single):Single;
    @:native('FloatEquals') static function floatEquals(x:Single, y:Single):Bool;

    @:native('Vector2Zero') static function vector2Zero():RayVector2;
    @:native('Vector2One') static function vector2One():RayVector2;
    @:native('Vector2Add') static function vector2Add(v1:RayVector2, v2:RayVector2):RayVector2;
    @:native('Vector2AddValue') static function vector2AddValue(v:RayVector2, add:Single):RayVector2;
    @:native('Vector2Subtract') static function vector2Subtract(v1:RayVector2, v2:RayVector2):RayVector2;
    @:native('Vector2SubtractValue') static function vector2SubtractValue(v:RayVector2, sub:Single):RayVector2;
    @:native('Vector2Length') static function vector2Length(v:RayVector2):Single;
    @:native('Vector2LengthSqr') static function vector2LengthSqr(v:RayVector2):Single;
    @:native('Vector2DotProduct') static function vector2DotProduct(v1:RayVector2, v2:RayVector2):Single;
    @:native('Vector2Distance') static function vector2Distance(v1:RayVector2, v2:RayVector2):Single;
    @:native('Vector2DistanceSqr') static function vector2DistanceSqr(v1:RayVector2, v2:RayVector2):Single;
    @:native('Vector2Angle') static function vector2Angle(v1:RayVector2, v2:RayVector2):Single;
    @:native('Vector2LineAngle') static function vector2LineAngle(start:RayVector2, end:RayVector2):Single;
    @:native('Vector2Scale') static function vector2Scale(v:RayVector2, scale:Single):RayVector2;
    @:native('Vector2Multiply') static function vector2Multiply(v1:RayVector2, v2:RayVector2):RayVector2;
    @:native('Vector2Negate') static function vector2Negate(v:RayVector2):RayVector2;
    @:native('Vector2Divide') static function vector2Divide(v1:RayVector2, v2:RayVector2):RayVector2;
    @:native('Vector2Normalize') static function vector2Normalize(v:RayVector2):RayVector2;
    @:native('Vector2Transform') static function vector2Transform(v:RayVector2, mat:Matrix):RayVector2;
    @:native('Vector2Lerp') static function vector2Lerp(v1:RayVector2, v2:RayVector2, amount:Single):RayVector2;
    @:native('Vector2Reflect') static function vector2Reflect(v:RayVector2, normal:RayVector2):RayVector2;
    @:native('Vector2Rotate') static function vector2Rotate(v:RayVector2, angle:Single):RayVector2;
    @:native('Vector2MoveTowards') static function vector2MoveTowards(v:RayVector2, target:RayVector2, maxDistance:Single):RayVector2;
    @:native('Vector2Invert') static function vector2Invert(v:RayVector2):RayVector2;
    @:native('Vector2Clamp') static function vector2Clamp(v:RayVector2, min:RayVector2, max:RayVector2):RayVector2;
    @:native('Vector2ClampValue') static function vector2ClampValue(v:RayVector2, min:Single, max:Single):RayVector2;
    @:native('Vector2Equals') static function vector2Equals(p:RayVector2, q:RayVector2):Bool;
}
