package utils;

extern abstract IntPointer(cpp.RawPointer<Int>) from cpp.RawPointer<Int> to cpp.RawPointer<Int>
{
    inline function new(ptr:cpp.RawPointer<Int>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Int
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Int):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:Int):IntPointer
    {
        return new IntPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<Int>):IntPointer
    {
        return new IntPointer(cpp.Pointer.ofArray(value).raw);
    }
}
