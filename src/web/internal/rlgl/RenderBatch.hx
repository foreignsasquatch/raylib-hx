package web.internal.rlgl;

import js.html.webgl.WebGL2RenderingContext;

class RenderBatch
{
    static var gl:WebGL2RenderingContext;

    var currentVertexBuffer:UInt;

    var vertexCounter:UInt;

    public function new(?gl:WebGL2RenderingContext)
    {
        // Make sure to set the internal WebGL context only once.
        if (RenderBatch.gl == null && gl != null)
            RenderBatch.gl = gl;
    }

    public function begin()
    {
    }

    public function end()
    {
    }

    public function vertex3(x:Float, y:Float, z:Float)
    {
        ++vertexCounter;
    }
}
