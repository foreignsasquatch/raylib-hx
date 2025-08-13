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

import cpp.RawPointer;

import raylib.Types;

@:buildXml("<include name=\"${haxelib:raylib-hx}/project/Build.xml\" />")
@:include('raymath-impl.h')
extern class Raymath
{
    @:native('PI')
    static var PI:Single;

    @:native('EPSILON')
    static var EPSILON:Single;

    @:native('DEG2RAD')
    static var DEG2RAD:Single;

    @:native('RAD2DEG')
    static var RAD2DEG:Single;

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
    static function Vector2Zero():Vector2;

    @:native('Vector2One')
    static function Vector2One():Vector2;

    @:native('Vector2Add')
    static function Vector2Add(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2AddValue')
    static function Vector2AddValue(v:Vector2, add:Single):Vector2;

    @:native('Vector2Subtract')
    static function Vector2Subtract(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2SubtractValue')
    static function Vector2SubtractValue(v:Vector2, sub:Single):Vector2;

    @:native('Vector2Length')
    static function Vector2Length(v:Vector2):Single;

    @:native('Vector2LengthSqr')
    static function Vector2LengthSqr(v:Vector2):Single;

    @:native('Vector2DotProduct')
    static function Vector2DotProduct(v1:Vector2, v2:Vector2):Single;

    @:native('Vector2CrossProduct')
    static function Vector2CrossProduct(v1:Vector2, v2:Vector2):Single;

    @:native('Vector2Distance')
    static function Vector2Distance(v1:Vector2, v2:Vector2):Single;

    @:native('Vector2DistanceSqr')
    static function Vector2DistanceSqr(v1:Vector2, v2:Vector2):Single;

    @:native('Vector2Angle')
    static function Vector2Angle(v1:Vector2, v2:Vector2):Single;

    @:native('Vector2LineAngle')
    static function Vector2LineAngle(start:Vector2, end:Vector2):Single;

    @:native('Vector2Scale')
    static function Vector2Scale(v:Vector2, scale:Single):Vector2;

    @:native('Vector2Multiply')
    static function Vector2Multiply(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2Negate')
    static function Vector2Negate(v:Vector2):Vector2;

    @:native('Vector2Divide')
    static function Vector2Divide(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2Normalize')
    static function Vector2Normalize(v:Vector2):Vector2;

    @:native('Vector2Transform')
    static function Vector2Transform(v:Vector2, mat:Matrix):Vector2;

    @:native('Vector2Lerp')
    static function Vector2Lerp(v1:Vector2, v2:Vector2, amount:Single):Vector2;

    @:native('Vector2Reflect')
    static function Vector2Reflect(v:Vector2, normal:Vector2):Vector2;

    @:native('Vector2Min')
    static function Vector2Min(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2Max')
    static function Vector2Max(v1:Vector2, v2:Vector2):Vector2;

    @:native('Vector2Rotate')
    static function Vector2Rotate(v:Vector2, angle:Single):Vector2;

    @:native('Vector2MoveTowards')
    static function Vector2MoveTowards(v:Vector2, target:Vector2, maxDistance:Single):Vector2;

    @:native('Vector2Invert')
    static function Vector2Invert(v:Vector2):Vector2;

    @:native('Vector2Clamp')
    static function Vector2Clamp(v:Vector2, min:Vector2, max:Vector2):Vector2;

    @:native('Vector2ClampValue')
    static function Vector2ClampValue(v:Vector2, min:Single, max:Single):Vector2;

    @:native('Vector2Equals')
    static function Vector2Equals(p:Vector2, q:Vector2):Bool;

    @:native('Vector3Zero')
    static function Vector3Zero():Vector3;

    @:native('Vector3One')
    static function Vector3One():Vector3;

    @:native('Vector3Add')
    static function Vector3Add(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3AddValue')
    static function Vector3AddValue(v:Vector3, add:Single):Vector3;

    @:native('Vector3Subtract')
    static function Vector3Subtract(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3SubtractValue')
    static function Vector3SubtractValue(v:Vector3, sub:Single):Vector3;

    @:native('Vector3Scale')
    static function Vector3Scale(v:Vector3, scalar:Single):Vector3;

    @:native('Vector3Multiply')
    static function Vector3Multiply(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3CrossProduct')
    static function Vector3CrossProduct(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3Perpendicular')
    static function Vector3Perpendicular(v:Vector3):Vector3;

    @:native('Vector3Length')
    static function Vector3Length(v:Vector3):Single;

    @:native('Vector3LengthSqr')
    static function Vector3LengthSqr(v:Vector3):Single;

    @:native('Vector3DotProduct')
    static function Vector3DotProduct(v1:Vector3, v2:Vector3):Single;

    @:native('Vector3Distance')
    static function Vector3Distance(v1:Vector3, v2:Vector3):Single;

    @:native('Vector3DistanceSqr')
    static function Vector3DistanceSqr(v1:Vector3, v2:Vector3):Single;

    @:native('Vector3Angle')
    static function Vector3Angle(v1:Vector3, v2:Vector3):Single;

    @:native('Vector3Negate')
    static function Vector3Negate(v:Vector3):Vector3;

    @:native('Vector3Divide')
    static function Vector3Divide(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3Normalize')
    static function Vector3Normalize(v:Vector3):Vector3;

    @:native('Vector3Project')
    static function Vector3Project(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3Reject')
    static function Vector3Reject(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3OrthoNormalize')
    static function Vector3OrthoNormalize(v1:RawPointer<Vector3>, v2:RawPointer<Vector3>):Void;

    @:native('Vector3Transform')
    static function Vector3Transform(v:Vector3, mat:Matrix):Vector3;

    @:native('Vector3RotateByQuaternion')
    static function Vector3RotateByVector4Impl(v:Vector3, q:Vector4):Vector3;

    @:native('Vector3RotateByAxisAngle')
    static function Vector3RotateByAxisAngle(v:Vector3, axis:Vector3, angle:Single):Vector3;

    @:native('Vector3MoveTowards')
    static function Vector3MoveTowards(v:Vector3, target:Vector3, maxDistance:Single):Vector3;

    @:native('Vector3Lerp')
    static function Vector3Lerp(v1:Vector3, v2:Vector3, amount:Single):Vector3;

    @:native('Vector3CubicHermite')
    static function Vector3CubicHermite(v1:Vector3, tangent1:Vector3, v2:Vector3, tangent2:Vector3, amount:Single):Vector3;

    @:native('Vector3Reflect')
    static function Vector3Reflect(v:Vector3, normal:Vector3):Vector3;

    @:native('Vector3Min')
    static function Vector3Min(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3Max')
    static function Vector3Max(v1:Vector3, v2:Vector3):Vector3;

    @:native('Vector3Barycenter')
    static function Vector3Barycenter(p:Vector3, a:Vector3, b:Vector3, c:Vector3):Vector3;

    @:native('Vector3Unproject')
    static function Vector3Unproject(source:Vector3, projection:Matrix, view:Matrix):Vector3;

    @:native('Vector3ToFloat')
    static function Vector3ToFloat(v:Vector3):RawPointer<Single>;

    @:native('Vector3Invert')
    static function Vector3Invert(v:Vector3):Vector3;

    @:native('Vector3Clamp')
    static function Vector3Clamp(v:Vector3, min:Vector3, max:Vector3):Vector3;

    @:native('Vector3ClampValue')
    static function Vector3ClampValue(v:Vector3, min:Single, max:Single):Vector3;

    @:native('Vector4Zero')
    static function Vector4Zero():Vector4;

    @:native('Vector4One')
    static function Vector4One():Vector4;

    @:native('Vector4Add')
    static function Vector4Add(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4AddValue')
    static function Vector4AddValue(v:Vector4, add:Single):Vector4;

    @:native('Vector4Subtract')
    static function Vector4Subtract(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4SubtractValue')
    static function Vector4SubtractValue(v:Vector4, add:Single):Vector4;

    @:native('Vector4Length')
    static function Vector4Length(v:Vector4):Single;

    @:native('Vector4LengthSqr')
    static function Vector4LengthSqr(v:Vector4):Single;

    @:native('Vector4DotProduct')
    static function Vector4DotProduct(v1:Vector4, v2:Vector4):Single;

    @:native('Vector4Distance')
    static function Vector4Distance(v1:Vector4, v2:Vector4):Single;

    @:native('Vector4DistanceSqr')
    static function Vector4DistanceSqr(v1:Vector4, v2:Vector4):Single;

    @:native('Vector4Scale')
    static function Vector4Scale(v:Vector4, scale:Single):Vector4;

    @:native('Vector4Multiply')
    static function Vector4Multiply(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4Negate')
    static function Vector4Negate(v:Vector4):Vector4;

    @:native('Vector4Divide')
    static function Vector4Divide(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4Normalize')
    static function Vector4Normalize(v:Vector4):Vector4;

    @:native('Vector4Min')
    static function Vector4Min(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4Max')
    static function Vector4Max(v1:Vector4, v2:Vector4):Vector4;

    @:native('Vector4Lerp')
    static function Vector4Lerp(v1:Vector4, v2:Vector4, amount:Single):Vector4;

    @:native('Vector4MoveTowards')
    static function Vector4MoveTowards(v:Vector4, target:Vector4, maxDistance:Single):Vector4;

    @:native('Vector4Invert')
    static function Vector4Invert(v:Vector4):Vector4;

    @:native('Vector4Equals')
    static function Vector4Equals(p:Vector4, q:Vector4):Int;

    @:native('MatrixDeterminant')
    static function MatrixDeterminant(mat:Matrix):Single;

    @:native('MatrixTrace')
    static function MatrixTrace(mat:Matrix):Single;

    @:native('MatrixTranspose')
    static function MatrixTranspose(mat:Matrix):Matrix;

    @:native('MatrixInvert')
    static function MatrixInvert(mat:Matrix):Matrix;

    @:native('MatrixIdentity')
    static function MatrixIdentity():Matrix;

    @:native('MatrixAdd')
    static function MatrixAdd(left:Matrix, right:Matrix):Matrix;

    @:native('MatrixSubtract')
    static function MatrixSubtract(left:Matrix, right:Matrix):Matrix;

    @:native('MatrixMultiply')
    static function MatrixMultiply(left:Matrix, right:Matrix):Matrix;

    @:native('MatrixTranslate')
    static function MatrixTranslate(x:Single, y:Single, z:Single):Matrix;

    @:native('MatrixRotate')
    static function MatrixRotate(axis:Vector3, angle:Single):Matrix;

    @:native('MatrixRotateX')
    static function MatrixRotateX(angle:Single):Matrix;

    @:native('MatrixRotateY')
    static function MatrixRotateY(angle:Single):Matrix;

    @:native('MatrixRotateZ')
    static function MatrixRotateZ(angle:Single):Matrix;

    @:native('MatrixRotateXYZ')
    static function MatrixRotateXYZ(angle:Vector3):Matrix;

    @:native('MatrixRotateZYX')
    static function MatrixRotateZYX(angle:Vector3):Matrix;

    @:native('MatrixScale')
    static function MatrixScale(x:Single, y:Single, z:Single):Matrix;

    @:native('MatrixFrustum')
    static function MatrixFrustum(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):Matrix;

    @:native('MatrixPerspective')
    static function MatrixPerspective(fovY:Float, aspect:Float, nearPlane:Float, farPlane:Float):Matrix;

    @:native('MatrixOrtho')
    static function MatrixOrtho(left:Float, right:Float, bottom:Float, top:Float, nearPlane:Float, farPlane:Float):Matrix;

    @:native('MatrixLookAt')
    static function MatrixLookAt(eye:Vector3, target:Vector3, up:Vector3):Matrix;

    @:native('MatrixToFloat')
    static function MatrixToFloat(mat:Matrix):RawPointer<Single>;

    @:native('MatrixDecompose')
    static function MatrixDecompose(mat:Matrix, translation:RawPointer<Vector3>, rotation:RawPointer<Vector4>, scale:RawPointer<Vector3>):Void;

    @:native('QuaternionAdd')
    static function QuaternionAdd(q1:Vector4, q2:Vector4):Vector4;

    @:native('QuaternionAddValue')
    static function QuaternionAddValue(q:Vector4, add:Single):Vector4;

    @:native('QuaternionSubtract')
    static function QuaternionSubtract(q1:Vector4, q2:Vector4):Vector4;

    @:native('QuaternionSubtractValue')
    static function QuaternionSubtractValue(q:Vector4, sub:Single):Vector4;

    @:native('QuaternionIdentity')
    static function QuaternionIdentity():Vector4;

    @:native('QuaternionLength')
    static function QuaternionLength(q:Vector4):Single;

    @:native('QuaternionNormalize')
    static function QuaternionNormalize(q:Vector4):Vector4;

    @:native('QuaternionInvert')
    static function QuaternionInvert(q:Vector4):Vector4;

    @:native('QuaternionMultiply')
    static function QuaternionMultiply(q1:Vector4, q2:Vector4):Vector4;

    @:native('QuaternionScale')
    static function QuaternionScale(q:Vector4, mul:Single):Vector4;

    @:native('QuaternionDivide')
    static function QuaternionDivide(q1:Vector4, q2:Vector4):Vector4;

    @:native('QuaternionLerp')
    static function QuaternionLerp(q1:Vector4, q2:Vector4, amount:Single):Vector4;

    @:native('QuaternionNlerp')
    static function QuaternionNlerp(q1:Vector4, q2:Vector4, amount:Single):Vector4;

    @:native('QuaternionSlerp')
    static function QuaternionSlerp(q1:Vector4, q2:Vector4, amount:Single):Vector4;

    @:native('QuaternionCubicHermiteSpline')
    static function QuaternionCubicHermiteSpline(q1:Vector4, outTangent1:Vector4, q2:Vector4, inTangent2:Vector4, t:Single):Vector4;

    @:native('QuaternionFromVector3ToVector3')
    static function QuaternionFromVector3ToVector3(from:Vector3, to:Vector3):Vector4;

    @:native('QuaternionFromMatrix')
    static function QuaternionFromMatrix(mat:Matrix):Vector4;

    @:native('QuaternionToMatrix')
    static function QuaternionToMatrix(q:Vector4):Matrix;

    @:native('QuaternionFromAxisAngle')
    static function QuaternionFromAxisAngle(axis:Vector3, angle:Single):Vector4;

    @:native('QuaternionToAxisAngle')
    static function QuaternionToAxisAngle(q:Vector4, outAxis:Vector3, outAngle:Single):Void;

    @:native('QuaternionFromEuler')
    static function QuaternionFromEuler(pitch:Single, yaw:Single, roll:Single):Vector4;

    @:native('QuaternionToEuler')
    static function QuaternionToEuler(q:Vector4):Vector3;

    @:native('QuaternionTransform')
    static function QuaternionTransform(q:Vector4, mat:Matrix):Vector4;

    @:native('QuaternionEquals')
    static function QuaternionEquals(p:Vector4, q:Vector4):Int;
}
