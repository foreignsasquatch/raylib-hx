package raylib.utils;

import cpp.Pointer;
import cpp.RawPointer;

import haxe.extern.AsVar;

extern abstract BoolPointer(RawPointer<Bool>) from RawPointer<Bool> to RawPointer<Bool>
{
    inline function new(ptr:RawPointer<Bool>):Void
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
    overload static inline function fromValue(value:AsVar<Array<Bool>>):BoolPointer
    {
        return new BoolPointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Bool>):BoolPointer
    {
        return new BoolPointer(Pointer.addressOf(value).raw);
    }
}
