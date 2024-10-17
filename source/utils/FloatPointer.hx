package utils;

extern abstract FloatPointer(cpp.RawPointer<Single>) from cpp.RawPointer<Single> to cpp.RawPointer<Single>
{
    inline function new(ptr:cpp.RawPointer<Single>):Void
    {
        this = ptr;
    }

    @:from
    static inline function fromValue(value:Single):FloatPointer
    {
        return new FloatPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<Single>):FloatPointer
    {
        return new FloatPointer(cpp.Pointer.ofArray(value).raw);
    }
}
