package raylib.utils;

import cpp.Pointer;
import cpp.RawPointer;

import haxe.extern.AsVar;

extern abstract IntPointer(RawPointer<Int>) from RawPointer<Int> to RawPointer<Int>
{
    inline function new(ptr:RawPointer<Int>):Void
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
    overload static inline function fromValue(value:AsVar<Array<Int>>):IntPointer
    {
        return new IntPointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int>):IntPointer
    {
        return new IntPointer(Pointer.addressOf(value).raw);
    }
}
