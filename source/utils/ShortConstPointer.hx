package utils;

@:nullSafety
extern abstract ShortConstPointer(cpp.RawConstPointer<cpp.UInt16>) from cpp.RawConstPointer<cpp.UInt16> to cpp.RawConstPointer<cpp.UInt16>
{
    inline function new(ptr:cpp.RawConstPointer<cpp.UInt16>):Void
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
    static inline function fromValue(value:cpp.UInt16):ShortConstPointer
    {
        return new ShortConstPointer(cpp.Pointer.addressOf(value).constRaw);
    }

    @:from
    static inline function fromArray(value:Array<cpp.UInt16>):ShortConstPointer
    {
        return new ShortConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }
}
