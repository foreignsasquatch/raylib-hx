package raylib.utils;

@:nullSafety
extern abstract ShortPointer(cpp.RawPointer<cpp.UInt16>) from cpp.RawPointer<cpp.UInt16> to cpp.RawPointer<cpp.UInt16>
{
    inline function new(ptr:cpp.RawPointer<cpp.UInt16>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):cpp.UInt16
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:cpp.UInt16):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:cpp.UInt16):ShortPointer
    {
        return new ShortPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<cpp.UInt16>):ShortPointer
    {
        return new ShortPointer(cpp.Pointer.ofArray(value).raw);
    }
}
