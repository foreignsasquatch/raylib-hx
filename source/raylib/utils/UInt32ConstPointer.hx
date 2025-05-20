package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt32;

import haxe.extern.AsVar;

extern abstract UInt32ConstPointer(RawConstPointer<UInt32>) from RawConstPointer<UInt32> to RawConstPointer<UInt32>
{
    inline function new(ptr:RawConstPointer<UInt32>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt32>>):UInt32ConstPointer
    {
        return new UInt32ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt32>):UInt32ConstPointer
    {
        return new UInt32ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
