package raylib.utils;

@:nullSafety
extern abstract FloatConstPointer(cpp.RawConstPointer<Single>) from cpp.RawConstPointer<Single> to cpp.RawConstPointer<Single>
{
    inline function new(ptr:cpp.RawConstPointer<Single>):Void
    {
        this = ptr;
    }

    @:from
    static inline function fromValue(value:Single):FloatConstPointer
    {
        return new FloatConstPointer(cpp.Pointer.addressOf(value).constRaw);
    }

    @:from
    static inline function fromArray(value:Array<Single>):FloatConstPointer
    {
        return new FloatConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }
}
