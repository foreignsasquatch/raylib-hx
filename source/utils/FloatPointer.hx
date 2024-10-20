package utils;

@:semantics(variable)
extern abstract FloatPointer(cpp.RawPointer<Single>) from cpp.RawPointer<Single> to cpp.RawPointer<Single>
{
    inline function new(ptr:cpp.RawPointer<Single>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Single
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Single):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:Single):FloatPointer
    {
        return new FloatPointer(cpp.RawPointer.addressOf(value));
    }

    @:from
    static inline function fromArray(value:Array<Single>):FloatPointer
    {
        return new FloatPointer(cpp.Pointer.ofArray(value).raw);
    }
}
