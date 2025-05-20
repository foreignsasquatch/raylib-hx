package raylib.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt16;

import haxe.extern.AsVar;

extern abstract UInt16Pointer(RawPointer<UInt16>) from RawPointer<UInt16> to RawPointer<UInt16>
{
    inline function new(ptr:RawPointer<UInt16>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):UInt16
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:UInt16):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt16>>):UInt16Pointer
    {
        return new UInt16Pointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt16>):UInt16Pointer
    {
        return new UInt16Pointer(Pointer.addressOf(value).raw);
    }
}
