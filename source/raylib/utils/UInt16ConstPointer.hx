package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt16;

import haxe.extern.AsVar;

extern abstract UInt16ConstPointer(RawConstPointer<UInt16>) from RawConstPointer<UInt16> to RawConstPointer<UInt16>
{
    inline function new(ptr:RawConstPointer<UInt16>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt16>>):UInt16ConstPointer
    {
        return new UInt16ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt16>):UInt16ConstPointer
    {
        return new UInt16ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
