package utils;

@:semantics(variable)
extern abstract BoolConstPointer(cpp.RawConstPointer<Bool>) from cpp.RawConstPointer<Bool> to cpp.RawConstPointer<Bool>
{
    inline function new(ptr:cpp.RawConstPointer<Bool>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Bool
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Bool):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:Bool):BoolConstPointer
    {
        return new BoolConstPointer(cpp.RawPointer.addressOf(value).constRaw);
    }

    @:from
    static inline function fromArray(value:Array<Bool>):BoolConstPointer
    {
        return new BoolConstPointer(cpp.Pointer.ofArray(value).constRaw);
    }
}
