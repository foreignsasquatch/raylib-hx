package raylib.utils;

import cpp.Int64;
import cpp.Pointer;
import cpp.RawPointer;

import haxe.extern.AsVar;

extern abstract Int64Pointer(RawPointer<Int64>) from RawPointer<Int64> to RawPointer<Int64>
{
    inline function new(ptr:RawPointer<Int64>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Int64
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Int64):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int64>>):Int64Pointer
    {
        return new Int64Pointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int64>):Int64Pointer
    {
        return new Int64Pointer(Pointer.addressOf(value).raw);
    }
}
