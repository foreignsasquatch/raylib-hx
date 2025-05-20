package raylib.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt64;

import haxe.extern.AsVar;

extern abstract UInt64Pointer(RawPointer<UInt64>) from RawPointer<UInt64> to RawPointer<UInt64>
{
    inline function new(ptr:RawPointer<UInt64>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):UInt64
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:UInt64):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt64>>):UInt64Pointer
    {
        return new UInt64Pointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt64>):UInt64Pointer
    {
        return new UInt64Pointer(Pointer.addressOf(value).raw);
    }
}
