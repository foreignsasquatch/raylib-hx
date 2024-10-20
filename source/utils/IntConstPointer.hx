package utils;

extern abstract IntConstPointer(cpp.RawConstPointer<Int>) from cpp.RawConstPointer<Int> to cpp.RawConstPointer<Int>
{
    inline function new(ptr:cpp.RawConstPointer<Int>):Void
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
    static inline function fromValue(value:Int):IntConstPointer
    {
        return new IntConstPointer(cpp.Pointer.addressOf(value).constRaw);
    }

    @:from
    static inline function fromArray(value:Array<Int>):IntConstPointer
    {
        return new IntConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }
}
