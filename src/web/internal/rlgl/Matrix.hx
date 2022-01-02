package web.internal.rlgl;

import js.html.webgl.WebGL2RenderingContext;
import web.internal.rlgl.Logging.TraceLog;
import haxe.ds.GenericStack;
import haxe.io.Float64Array;

/**
    Matrix modes.
**/
enum MatrixMode
{
    Projection;
    ModelView;
    Texture;
}

/**
    A four-dimensional matrix.
**/
class Matrix
{
    static var gl:WebGL2RenderingContext;

    var data:Float64Array;

    static var current:Matrix;

    public static var currentMode:MatrixMode;

    static var stack:GenericStack<Matrix>;

    static var stackCounter:UInt;

    final stackMaxCounter:UInt;

    inline function degreesToRadians(deg:Float):Float
    {
        return (deg * Math.PI) / 180;
    }

    public function new(?gl:WebGL2RenderingContext)
    {
        // Make sure to set the internal WebGL context only once.
        if (Matrix.gl == null && gl != null)
            Matrix.gl = gl;

        data = new Float64Array(16);
        stack = new GenericStack();
        stackMaxCounter = 32;
    }

    /**
        Pushes the current matrix into the stack.
    **/
    public function push()
    {
        if (stackCounter > stackMaxCounter)
        {
            TraceLog(Error, "Matrix stack overflow");
        } else
        {
            stack.add(current);
            ++stackCounter;
        }
    }

    /**
        Pops the matrix from the stack .
    **/
    public function pop()
    {
        if (stackCounter < 0)
        {
            TraceLog(Error, "Matrix stack underflow");
        } else
        {
            current = stack.pop();
            --stackCounter;
        }
    }

    /**
        Creates a new identity matrix.
    **/
    public function loadIdentity()
    {
        current = new Matrix();
    }

    /**
        Traslates the current matrix.
    **/
    public function traslate(x:Float, y:Float, z:Float)
    {
        var traslation = new Float64Array(16);
        traslation[0] = 1.0;
        traslation[12] = x;
        traslation[5] = 1.0;
        traslation[13] = y;
        traslation[10] = 1.0;
        traslation[14] = z;
        traslation[15] = 1.0;

        for (i in 0...data.length)
            data[i] *= traslation[i];
    }

    /**
        Rotates the current matrix.
    **/
    public function rotate(angle:Float, x:Float, y:Float, z:Float)
    {
        var rotation = new Float64Array(16);
        var lengthSquared = (x * x) + (y * y) + (z * z);
        if ((lengthSquared != 1) && (lengthSquared != 0))
        {
            var inverseLength = 1 / Math.sqrt(lengthSquared);
            x *= inverseLength;
            y *= inverseLength;
            z *= inverseLength;
        }

        // Generate a rotated matrix.
        var sinRes = Math.sin(degreesToRadians(angle));
        var cosRes = Math.cos(degreesToRadians(angle));
        var t = 1 - cosRes;

        rotation[0] = (x * x * t) + cosRes;
        rotation[1] = (y * x * t) + z * sinRes;
        rotation[2] = (z * x * t) - y * sinRes;

        rotation[4] = (x * y * t) - z * sinRes;
        rotation[5] = (y * y * t) + cosRes;
        rotation[6] = (z * x * t) - x * sinRes;

        rotation[8] = (x * z * t) + y * sinRes;
        rotation[9] = (y * z * t) - x * sinRes;
        rotation[10] = (z * z * t) + cosRes;

        for (i in 0...data.length)
            data[i] *= rotation[i];
    }

    public function scale(x:Float, y:Float, z:Float)
    {
        var scale = new Float64Array(16);
        scale[0] = x;
        scale[5] = y;
        scale[10] = z;
        scale[15] = 0;

        for (i in 0...data.length)
            data[i] *= scale[i];
    }

    public function frustum(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float)
    {
        var frustum = new Float64Array(16);
        var rightLeft = right - left;
        var topBottom = top - bottom;
        var farNear = zfar - znear;

        frustum[0] = (znear * 2) / rightLeft;
        frustum[5] = (znear * 2) / topBottom;
        frustum[8] = (right + left) / rightLeft;
        frustum[9] = (top + bottom) / topBottom;
        frustum[10] = -(zfar + znear) / farNear;
        frustum[11] = -1;
        frustum[14] = -(zfar * znear * 2) / farNear;

        for (i in 0...data.length)
            data[i] *= frustum[i];
    }

    public function ortho(left:Float, right:Float, bottom:Float, top:Float, znear:Float, zfar:Float)
    {
        var ortho = new Float64Array(16);
        var rightLeft = right - left;
        var topBottom = top - bottom;
        var farNear = zfar - znear;

        ortho[0] = 2 / rightLeft;
        ortho[5] = 2 / topBottom;
        ortho[10] = -2 / farNear;
        ortho[12] = -(left + right) / rightLeft;
        ortho[13] = -(top + bottom) / topBottom;
        ortho[14] = -(zfar + znear) / farNear;
        ortho[15] = 1;

        for (i in 0...data.length)
            data[i] *= ortho[i];
    }

    public function viewport(x:Int, y:Int, width:Int, height:Int)
    {
        gl.viewport(x, y, width, height);
    }
}
