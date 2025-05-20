package raylib.utils;

import cpp.RawPointer;
import cpp.CastCharStar;
import cpp.Pointer;

import haxe.extern.AsVar;

extern abstract CastCharStarPointer(RawPointer<CastCharStar>) from RawPointer<CastCharStar> to RawPointer<CastCharStar>
{
    inline function new(ptr:RawPointer<CastCharStar>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):CastCharStar
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:CastCharStar):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<String>>):CastCharStarPointer
    {
        final ptr:RawPointer<CastCharStar> = untyped __cpp__('new char *[{0}]', value.length);

        for (i in 0...value.length)
            ptr[i] = CastCharStar.fromString(value[i]);

        return new CastCharStarPointer(ptr);
    }

    @:from
    overload static inline function fromValue(value:AsVar<String>):CastCharStarPointer
    {
        return new CastCharStarPointer(Pointer.addressOf(CastCharStar.fromString(value)).raw);
    }
}
