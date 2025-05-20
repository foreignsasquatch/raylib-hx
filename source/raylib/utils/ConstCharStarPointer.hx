package raylib.utils;

import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Pointer;

import haxe.extern.AsVar;

extern abstract ConstCharStarPointer(RawPointer<ConstCharStar>) from RawPointer<ConstCharStar> to RawPointer<ConstCharStar>
{
    inline function new(ptr:RawPointer<ConstCharStar>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):ConstCharStar
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:ConstCharStar):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<String>>):ConstCharStarPointer
    {
        final ptr:RawPointer<ConstCharStar> = untyped __cpp__('new const char *[{0}]', value.length);

        for (i in 0...value.length)
            ptr[i] = ConstCharStar.fromString(value[i]);

        return new ConstCharStarPointer(ptr);
    }

    @:from
    overload static inline function fromValue(value:AsVar<String>):ConstCharStarPointer
    {
        return new ConstCharStarPointer(Pointer.addressOf(ConstCharStar.fromString(value)).raw);
    }
}
