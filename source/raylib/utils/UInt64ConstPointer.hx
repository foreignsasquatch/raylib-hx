package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt64;

import haxe.extern.AsVar;

extern abstract UInt64ConstPointer(RawConstPointer<UInt64>) from RawConstPointer<UInt64> to RawConstPointer<UInt64>
{
    inline function new(ptr:RawConstPointer<UInt64>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt64>>):UInt64ConstPointer
    {
        return new UInt64ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt64>):UInt64ConstPointer
    {
        return new UInt64ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
