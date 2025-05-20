package raylib.utils;

import cpp.Pointer;
import cpp.RawPointer;

import haxe.extern.AsVar;

extern abstract SinglePointer(RawPointer<Single>) from RawPointer<Single> to RawPointer<Single>
{
    inline function new(ptr:RawPointer<Single>):Void
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
    overload static inline function fromValue(value:AsVar<Array<Single>>):SinglePointer
    {
        return new SinglePointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Single>):SinglePointer
    {
        return new SinglePointer(Pointer.addressOf(value).raw);
    }
}
