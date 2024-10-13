package utils;

extern abstract IntPointer(cpp.RawPointer<Int>) from cpp.RawPointer<Int> to cpp.RawPointer<Int>
{
    inline function new(ptr:cpp.RawPointer<Int>):Void
    {
        this = ptr;
    }

    @:from
    public static inline function fromValue(value:Int):IntPointer
    {
        return new IntPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    public static inline function fromArray(value:Array<Int>):IntPointer
    {
        return new IntPointer(cpp.Pointer.ofArray(value).raw);
    }

    @:to
    public inline function toInt():Int
    {
        return this[0];
    }
}
