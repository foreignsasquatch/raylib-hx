package raylib.utils;

@:nullSafety
extern abstract UnsignedPointer(cpp.RawPointer<cpp.UInt32>) from cpp.RawPointer<cpp.UInt32> to cpp.RawPointer<cpp.UInt32>
{
    inline function new(ptr:cpp.RawPointer<cpp.UInt32>):Void
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
    static inline function fromValue(value:cpp.UInt32):UnsignedPointer
    {
        return new UnsignedPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<cpp.UInt32>):UnsignedPointer
    {
        return new UnsignedPointer(cpp.Pointer.ofArray(value).raw);
    }
}
