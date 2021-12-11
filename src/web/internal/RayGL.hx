package web.internal;

import js.Browser;
import js.html.CanvasElement;
import js.html.webgl.GL2.*;
import js.html.webgl.WebGL2RenderingContext;

class RayGL
{
    var canvas:CanvasElement;
    var gl:WebGL2RenderingContext;

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

        gl = canvas.getContextWebGL2();
        gl.clearColor(0, 0, 0, 1);
        gl.clear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT);

        Browser.document.getElementById("raylib-canvas").appendChild(canvas);
    }

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
