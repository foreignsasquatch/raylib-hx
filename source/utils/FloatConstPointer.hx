package utils;

extern abstract FloatConstPointer(cpp.RawConstPointer<Single>) from cpp.RawConstPointer<Single> to cpp.RawConstPointer<Single>
{
    inline function new(ptr:cpp.RawConstPointer<Single>):Void
    {
        this = ptr;
    }

    @:from
    public static inline function fromValue(value:Single):FloatConstPointer
    {
        return new FloatConstPointer(cpp.Pointer.addressOf(value).constRaw);
    }

    @:from
    public static inline function fromArray(value:Array<Single>):FloatConstPointer
    {
        return new FloatConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }

    @:to
    public inline function toSingle():Single
    {
        return this[0];
    }
}
