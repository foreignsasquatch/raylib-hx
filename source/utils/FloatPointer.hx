package utils;

extern abstract FloatPointer(cpp.RawPointer<Single>) from cpp.RawPointer<Single> to cpp.RawPointer<Single>
{
    inline function new(ptr:cpp.RawPointer<Single>):Void
    {
        this = ptr;
    }

    @:from
    public static inline function fromValue(value:Single):FloatPointer
    {
        return new FloatPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    public static inline function fromArray(value:Array<Single>):FloatPointer
    {
        return new FloatPointer(cpp.Pointer.ofArray(value).raw);
    }

    @:to
    public inline function toSingle():Single
    {
        return this[0];
    }
}
