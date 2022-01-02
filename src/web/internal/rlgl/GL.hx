package web.internal.rlgl;

import js.Browser;
import js.html.CanvasElement;
import js.html.webgl.GL2.*;
import js.html.webgl.WebGL2RenderingContext;
import web.internal.rlgl.Matrix;
import web.internal.rlgl.RenderBatch;

private inline function degreesToRadians(deg:Float):Float
{
    return (deg * Math.PI) / 180;
}

/**
    The RayGL class manages the OpenGL releated stuff and implements some of the rlgl.h
    interface which itself is a wrapper around OpenGL calls.

    WebGL2 is based on OpenGL ES 2.0 so some functions that are available on OpenGL 2
    are not available when targeting a WebGL context.
**/
class GL
{
    var canvas:CanvasElement;
    var gl:WebGL2RenderingContext;

    public static var matrix(null, null):Matrix;
    public static var renderBatch(null, null):RenderBatch;

    public function new(width:Int, height:Int, title:String)
    {
        // Create the canvas used by WebGL.
        Browser.document.title = title;
        canvas = Browser.document.createCanvasElement();
        canvas.width = width;
        canvas.height = height;
        canvas.style.position = "center";
        // canvas.onclick = clickEventHandler;
        // canvas.onkeydown = keydownEventHandler;

        // Create the WebGL rendering context.
        gl = canvas.getContextWebGL2();
        gl.clearColor(0, 0, 0, 1);
        gl.clear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT);

        // Initialize the internal data types used by rlgl with the WebGL context.
        GL.matrix = new Matrix(gl);
        GL.renderBatch = new RenderBatch(gl);

        Browser.document.getElementById("raylib-canvas").appendChild(canvas);
    }

    // ------------------------------------------------------------------------
    // Color Functions
    // ------------------------------------------------------------------------

    public function clearColor(r:UInt, g:UInt, b:UInt, a:UInt)
    {
        final cr = r / 255;
        final cg = g / 255;
        final cb = b / 255;
        final ca = a / 255;

        gl.clearColor(cr, cg, cb, ca);
    }

    public function clearScreenBuffers()
    {
        gl.clear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT);
    }
}
