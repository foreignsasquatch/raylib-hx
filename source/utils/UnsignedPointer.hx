package utils;

extern abstract UnsignedPointer(cpp.RawPointer<cpp.UInt32>) from cpp.RawPointer<cpp.UInt32> to cpp.RawPointer<cpp.UInt32>
{
    inline function new(ptr:cpp.RawPointer<cpp.UInt32>):Void
    {
        this = ptr;
    }

    @:from
    public static inline function fromValue(value:cpp.UInt32):UnsignedPointer
    {
        return new UnsignedPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    public static inline function fromArray(value:Array<cpp.UInt32>):UnsignedPointer
    {
        return new UnsignedPointer(cpp.Pointer.ofArray(value).raw);
    }

    @:to
    public inline function toUnsigned():cpp.UInt32
    {
        return this[0];
    }
}
