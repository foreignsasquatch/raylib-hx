package utils;

@:nullSafety
extern abstract BoolPointer(cpp.RawPointer<Bool>) from cpp.RawPointer<Bool> to cpp.RawPointer<Bool>
{
    inline function new(ptr:cpp.RawPointer<Bool>):Void
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
    static inline function fromValue(value:Bool):BoolPointer
    {
        return new BoolPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<Bool>):BoolPointer
    {
        return new BoolPointer(cpp.Pointer.ofArray(value).raw);
    }
}
