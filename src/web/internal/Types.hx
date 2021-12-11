package web.internal;

class Color
{
    public var r:UInt;
    public var g:UInt;
    public var b:UInt;
    public var a:UInt;

    public function new(r:UInt, g:UInt, b:UInt, a:UInt)
    {
        this.r = r;
        this.g = g;
        this.b = b;
        this.a = a;
    }
}

class Vector2
{
    public var x:Float;
    public var y:Float;

    public function new(x:Float, y:Float)
    {
        this.x = x;
        this.y = y;
    }
}
