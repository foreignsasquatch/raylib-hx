package utils;

extern abstract UnsignedConstPointer(cpp.RawConstPointer<cpp.UInt32>) from cpp.RawConstPointer<cpp.UInt32> to cpp.RawConstPointer<cpp.UInt32>
{
    inline function new(ptr:cpp.RawConstPointer<cpp.UInt32>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):cpp.UInt32
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:cpp.UInt32):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:cpp.UInt32):UnsignedConstPointer
    {
        return new UnsignedConstPointer(cpp.Pointer.addressOf(value).constRaw);
    }

    @:from
    static inline function fromArray(value:Array<cpp.UInt32>):UnsignedConstPointer
    {
        return new UnsignedConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }
}
