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
import cpp.RawPointer;
import cpp.Void;

import raylib.Types;
import raylib.utils.SinglePointer;

@:buildXml('<include name="${haxelib:raylib-hx}/project/Build.xml" />')
@:include('raymath-impl.h')
extern class Raymath
{
    @:native('PI')
    static var RL_PI:Single;

    @:native('EPSILON')
    static var RL_EPSILON:Single;

    @:native('DEG2RAD')
    static var RL_DEG2RAD:Single;

    @:native('RAD2DEG')
    static var RL_RAD2DEG:Single;

    @:native('Clamp')
    static function Clamp(value:Single, min:Single, max:Single):Single;

    @:native('Lerp')
    static function Lerp(start:Single, end:Single, amount:Single):Single;

    @:native('Normalize')
    static function Normalize(value:Single, start:Single, end:Single):Single;

    @:native('Remap')
    static function Remap(value:Single, inputStart:Single, inputEnd:Single, outputStart:Single, outputEnd:Single):Single;

    @:native('Wrap')
    static function Wrap(value:Single, min:Single, max:Single):Single;

    @:native('FloatEquals')
    static function FloatEquals(x:Single, y:Single):Bool;

    @:native('Vector2Zero')
    static function Vector2Zero():Vector2Impl;

    @:native('Vector2One')
    static function Vector2One():Vector2Impl;

    @:native('Vector2Add')
    static function Vector2Add(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2AddValue')
    static function Vector2AddValue(v:Vector2Impl, add:Single):Vector2Impl;

    @:native('Vector2Subtract')
    static function Vector2Subtract(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2SubtractValue')
    static function Vector2SubtractValue(v:Vector2Impl, sub:Single):Vector2Impl;

    @:native('Vector2Length')
    static function Vector2Length(v:Vector2Impl):Single;

    @:native('Vector2LengthSqr')
    static function Vector2LengthSqr(v:Vector2Impl):Single;

    @:native('Vector2DotProduct')
    static function Vector2DotProduct(v1:Vector2Impl, v2:Vector2Impl):Single;

    @:native('Vector2CrossProduct')
    static function Vector2CrossProduct(v1:Vector2Impl, v2:Vector2Impl):Single;

    @:native('Vector2Distance')
    static function Vector2Distance(v1:Vector2Impl, v2:Vector2Impl):Single;

    @:native('Vector2DistanceSqr')
    static function Vector2DistanceSqr(v1:Vector2Impl, v2:Vector2Impl):Single;

    @:native('Vector2Angle')
    static function Vector2Angle(v1:Vector2Impl, v2:Vector2Impl):Single;

    @:native('Vector2LineAngle')
    static function Vector2LineAngle(start:Vector2Impl, end:Vector2Impl):Single;

    @:native('Vector2Scale')
    static function Vector2Scale(v:Vector2Impl, scale:Single):Vector2Impl;

    @:native('Vector2Multiply')
    static function Vector2Multiply(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2Negate')
    static function Vector2Negate(v:Vector2Impl):Vector2Impl;

    @:native('Vector2Divide')
    static function Vector2Divide(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2Normalize')
    static function Vector2Normalize(v:Vector2Impl):Vector2Impl;

    @:native('Vector2Transform')
    static function Vector2Transform(v:Vector2Impl, mat:MatrixImpl):Vector2Impl;

    @:native('Vector2Lerp')
    static function Vector2Lerp(v1:Vector2Impl, v2:Vector2Impl, amount:Single):Vector2Impl;

    @:native('Vector2Reflect')
    static function Vector2Reflect(v:Vector2Impl, normal:Vector2Impl):Vector2Impl;

    @:native('Vector2Min')
    static function Vector2Min(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2Max')
    static function Vector2Max(v1:Vector2Impl, v2:Vector2Impl):Vector2Impl;

    @:native('Vector2Rotate')
    static function Vector2Rotate(v:Vector2Impl, angle:Single):Vector2Impl;

    @:native('Vector2MoveTowards')
    static function Vector2MoveTowards(v:Vector2Impl, target:Vector2Impl, maxDistance:Single):Vector2Impl;

    @:native('Vector2Invert')
    static function Vector2Invert(v:Vector2Impl):Vector2Impl;

    @:native('Vector2Clamp')
    static function Vector2Clamp(v:Vector2Impl, min:Vector2Impl, max:Vector2Impl):Vector2Impl;

    @:native('Vector2ClampValue')
    static function Vector2ClampValue(v:Vector2Impl, min:Single, max:Single):Vector2Impl;

    @:native('Vector2Equals')
    static function Vector2Equals(p:Vector2Impl, q:Vector2Impl):Bool;

    @:native('Vector3Zero')
    static function Vector3Zero():Vector3Impl;

    @:native('Vector3One')
    static function Vector3One():Vector3Impl;

    @:native('Vector3Add')
    static function Vector3Add(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3AddValue')
    static function Vector3AddValue(v:Vector3Impl, add:Single):Vector3Impl;

    @:native('Vector3Subtract')
    static function Vector3Subtract(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3SubtractValue')
    static function Vector3SubtractValue(v:Vector3Impl, sub:Single):Vector3Impl;

    @:native('Vector3Scale')
    static function Vector3Scale(v:Vector3Impl, scalar:Single):Vector3Impl;

    @:native('Vector3Multiply')
    static function Vector3Multiply(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3CrossProduct')
    static function Vector3CrossProduct(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3Perpendicular')
    static function Vector3Perpendicular(v:Vector3Impl):Vector3Impl;

    @:native('Vector3Length')
    static function Vector3Length(v:Vector3Impl):Single;

    @:native('Vector3LengthSqr')
    static function Vector3LengthSqr(v:Vector3Impl):Single;

    @:native('Vector3DotProduct')
    static function Vector3DotProduct(v1:Vector3Impl, v2:Vector3Impl):Single;

    @:native('Vector3Distance')
    static function Vector3Distance(v1:Vector3Impl, v2:Vector3Impl):Single;

    @:native('Vector3DistanceSqr')
    static function Vector3DistanceSqr(v1:Vector3Impl, v2:Vector3Impl):Single;

    @:native('Vector3Angle')
    static function Vector3Angle(v1:Vector3Impl, v2:Vector3Impl):Single;

    @:native('Vector3Negate')
    static function Vector3Negate(v:Vector3Impl):Vector3Impl;

    @:native('Vector3Divide')
    static function Vector3Divide(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3Normalize')
    static function Vector3Normalize(v:Vector3Impl):Vector3Impl;

    @:native('Vector3Project')
    static function Vector3Project(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3Reject')
    static function Vector3Reject(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3OrthoNormalize')
    static function Vector3OrthoNormalize(v1:RawPointer<Vector3Impl>, v2:RawPointer<Vector3Impl>):Void;

    @:native('Vector3Transform')
    static function Vector3Transform(v:Vector3Impl, mat:MatrixImpl):Vector3Impl;

    @:native('Vector3RotateByQuaternion')
    static function Vector3RotateByVector4Impl(v:Vector3Impl, q:Vector4Impl):Vector3Impl;

    @:native('Vector3RotateByAxisAngle')
    static function Vector3RotateByAxisAngle(v:Vector3Impl, axis:Vector3Impl, angle:Single):Vector3Impl;

    @:native('Vector3MoveTowards')
    static function Vector3MoveTowards(v:Vector3Impl, target:Vector3Impl, maxDistance:Single):Vector3Impl;

    @:native('Vector3Lerp')
    static function Vector3Lerp(v1:Vector3Impl, v2:Vector3Impl, amount:Single):Vector3Impl;

    @:native('Vector3CubicHermite')
    static function Vector3CubicHermite(v1:Vector3Impl, tangent1:Vector3Impl, v2:Vector3Impl, tangent2:Vector3Impl, amount:Single):Vector3Impl;

    @:native('Vector3Reflect')
    static function Vector3Reflect(v:Vector3Impl, normal:Vector3Impl):Vector3Impl;

    @:native('Vector3Min')
    static function Vector3Min(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3Max')
    static function Vector3Max(v1:Vector3Impl, v2:Vector3Impl):Vector3Impl;

    @:native('Vector3Barycenter')
    static function Vector3Barycenter(p:Vector3Impl, a:Vector3Impl, b:Vector3Impl, c:Vector3Impl):Vector3Impl;

    @:native('Vector3Unproject')
    static function Vector3Unproject(source:Vector3Impl, projection:MatrixImpl, view:MatrixImpl):Vector3Impl;

    @:native('Vector3ToFloat')
    static function Vector3ToFloat(v:Vector3Impl):SinglePointer;

    @:native('Vector3Invert')
    static function Vector3Invert(v:Vector3Impl):Vector3Impl;

    @:native('Vector3Clamp')
    static function Vector3Clamp(v:Vector3Impl, min:Vector3Impl, max:Vector3Impl):Vector3Impl;

    @:native('Vector3ClampValue')
    static function Vector3ClampValue(v:Vector3Impl, min:Single, max:Single):Vector3Impl;

    @:native('Vector4Zero')
    static function Vector4Zero():Vector4Impl;

    @:native('Vector4One')
    static function Vector4One():Vector4Impl;

    @:native('Vector4Add')
    static function Vector4Add(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4AddValue')
    static function Vector4AddValue(v:Vector4Impl, add:Single):Vector4Impl;

    @:native('Vector4Subtract')
    static function Vector4Subtract(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4SubtractValue')
    static function Vector4SubtractValue(v:Vector4Impl, add:Single):Vector4Impl;

    @:native('Vector4Length')
    static function Vector4Length(v:Vector4Impl):Single;

    @:native('Vector4LengthSqr')
    static function Vector4LengthSqr(v:Vector4Impl):Single;

    @:native('Vector4DotProduct')
    static function Vector4DotProduct(v1:Vector4Impl, v2:Vector4Impl):Single;

    @:native('Vector4Distance')
    static function Vector4Distance(v1:Vector4Impl, v2:Vector4Impl):Single;

    @:native('Vector4DistanceSqr')
    static function Vector4DistanceSqr(v1:Vector4Impl, v2:Vector4Impl):Single;

    @:native('Vector4Scale')
    static function Vector4Scale(v:Vector4Impl, scale:Single):Vector4Impl;

    @:native('Vector4Multiply')
    static function Vector4Multiply(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4Negate')
    static function Vector4Negate(v:Vector4Impl):Vector4Impl;

    @:native('Vector4Divide')
    static function Vector4Divide(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4Normalize')
    static function Vector4Normalize(v:Vector4Impl):Vector4Impl;

    @:native('Vector4Min')
    static function Vector4Min(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4Max')
    static function Vector4Max(v1:Vector4Impl, v2:Vector4Impl):Vector4Impl;

    @:native('Vector4Lerp')
    static function Vector4Lerp(v1:Vector4Impl, v2:Vector4Impl, amount:Single):Vector4Impl;

    @:native('Vector4MoveTowards')
    static function Vector4MoveTowards(v:Vector4Impl, target:Vector4Impl, maxDistance:Single):Vector4Impl;

    @:native('Vector4Invert')
    static function Vector4Invert(v:Vector4Impl):Vector4Impl;

    @:native('Vector4Equals')
    static function Vector4Equals(p:Vector4Impl, q:Vector4Impl):Int;

    @:native('MatrixDeterminant')
    static function MatrixDeterminant(mat:MatrixImpl):Single;

    @:native('MatrixTrace')
    static function MatrixTrace(mat:MatrixImpl):Single;

    @:native('MatrixTranspose')
    static function MatrixTranspose(mat:MatrixImpl):MatrixImpl;

    @:native('MatrixInvert')
    static function MatrixInvert(mat:MatrixImpl):MatrixImpl;

    @:native('MatrixIdentity')
    static function MatrixIdentity():MatrixImpl;

    @:native('MatrixAdd')
    static function MatrixAdd(left:MatrixImpl, right:MatrixImpl):MatrixImpl;

    @:native('MatrixSubtract')
    static function MatrixSubtract(left:MatrixImpl, right:MatrixImpl):MatrixImpl;

    @:native('MatrixMultiply')
    static function MatrixMultiply(left:MatrixImpl, right:MatrixImpl):MatrixImpl;

    @:native('MatrixTranslate')
    static function MatrixTranslate(x:Single, y:Single, z:Single):MatrixImpl;

    @:native('MatrixRotate')
    static function MatrixRotate(axis:Vector3Impl, angle:Single):MatrixImpl;

    @:native('MatrixRotateX')
    static function MatrixRotateX(angle:Single):MatrixImpl;

    @:native('MatrixRotateY')
    static function MatrixRotateY(angle:Single):MatrixImpl;

    @:native('MatrixRotateZ')
    static function MatrixRotateZ(angle:Single):MatrixImpl;

    @:native('MatrixRotateXYZ')
    static function MatrixRotateXYZ(angle:Vector3Impl):MatrixImpl;

    @:native('MatrixRotateZYX')
    static function MatrixRotateZYX(angle:Vector3Impl):MatrixImpl;

    @:native('MatrixScale')
    static function MatrixScale(x:Single, y:Single, z:Single):MatrixImpl;

    @:native('MatrixFrustum')
    static function MatrixFrustum(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):MatrixImpl;

    @:native('MatrixPerspective')
    static function MatrixPerspective(fovY:Float, aspect:Float, nearPlane:Float, farPlane:Float):MatrixImpl;

    @:native('MatrixOrtho')
    static function MatrixOrtho(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):MatrixImpl;

    @:native('MatrixLookAt')
    static function MatrixLookAt(eye:Vector3Impl, target:Vector3Impl, up:Vector3Impl):MatrixImpl;

    @:native('MatrixToFloat')
    static function MatrixToFloat(mat:MatrixImpl):SinglePointer;

    @:native('MatrixDecompose')
    static function MatrixDecompose(mat:MatrixImpl, translation:RawPointer<Vector3Impl>, rotation:RawPointer<Vector4Impl>, scale:RawPointer<Vector3Impl>):Void;

    @:native('QuaternionAdd')
    static function QuaternionAdd(q1:Vector4Impl, q2:Vector4Impl):Vector4Impl;

    @:native('QuaternionAddValue')
    static function QuaternionAddValue(q:Vector4Impl, add:Single):Vector4Impl;

    @:native('QuaternionSubtract')
    static function QuaternionSubtract(q1:Vector4Impl, q2:Vector4Impl):Vector4Impl;

    @:native('QuaternionSubtractValue')
    static function QuaternionSubtractValue(q:Vector4Impl, sub:Single):Vector4Impl;

    @:native('QuaternionIdentity')
    static function QuaternionIdentity():Vector4Impl;

    @:native('QuaternionLength')
    static function QuaternionLength(q:Vector4Impl):Single;

    @:native('QuaternionNormalize')
    static function QuaternionNormalize(q:Vector4Impl):Vector4Impl;

    @:native('QuaternionInvert')
    static function QuaternionInvert(q:Vector4Impl):Vector4Impl;

    @:native('QuaternionMultiply')
    static function QuaternionMultiply(q1:Vector4Impl, q2:Vector4Impl):Vector4Impl;

    @:native('QuaternionScale')
    static function QuaternionScale(q:Vector4Impl, mul:Single):Vector4Impl;

    @:native('QuaternionDivide')
    static function QuaternionDivide(q1:Vector4Impl, q2:Vector4Impl):Vector4Impl;

    @:native('QuaternionLerp')
    static function QuaternionLerp(q1:Vector4Impl, q2:Vector4Impl, amount:Single):Vector4Impl;

    @:native('QuaternionNlerp')
    static function QuaternionNlerp(q1:Vector4Impl, q2:Vector4Impl, amount:Single):Vector4Impl;

    @:native('QuaternionSlerp')
    static function QuaternionSlerp(q1:Vector4Impl, q2:Vector4Impl, amount:Single):Vector4Impl;

    @:native('QuaternionCubicHermiteSpline')
    static function QuaternionCubicHermiteSpline(q1:Vector4Impl, outTangent1:Vector4Impl, q2:Vector4Impl, inTangent2:Vector4Impl, t:Single):Vector4Impl;

    @:native('QuaternionFromVector3ToVector3')
    static function QuaternionFromVector3ToVector3(from:Vector3Impl, to:Vector3Impl):Vector4Impl;

    @:native('QuaternionFromMatrix')
    static function QuaternionFromMatrix(mat:MatrixImpl):Vector4Impl;

    @:native('QuaternionToMatrix')
    static function QuaternionToMatrix(q:Vector4Impl):MatrixImpl;

    @:native('QuaternionFromAxisAngle')
    static function QuaternionFromAxisAngle(axis:Vector3Impl, angle:Single):Vector4Impl;

    @:native('QuaternionToAxisAngle')
    static function QuaternionToAxisAngle(q:Vector4Impl, outAxis:Vector3Impl, outAngle:Single):Void;

    @:native('QuaternionFromEuler')
    static function QuaternionFromEuler(pitch:Single, yaw:Single, roll:Single):Vector4Impl;

    @:native('QuaternionToEuler')
    static function QuaternionToEuler(q:Vector4Impl):Vector3Impl;

    @:native('QuaternionTransform')
    static function QuaternionTransform(q:Vector4Impl, mat:MatrixImpl):Vector4Impl;

    @:native('QuaternionEquals')
    static function QuaternionEquals(p:Vector4Impl, q:Vector4Impl):Int;
}
