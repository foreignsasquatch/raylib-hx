package raylib.utils;

import cpp.Pointer;
import cpp.Int16;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract Int16ConstPointer(RawConstPointer<Int16>) from RawConstPointer<Int16> to RawConstPointer<Int16>
{
    inline function new(ptr:RawConstPointer<Int16>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int16>>):Int16ConstPointer
    {
        return new Int16ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int16>):Int16ConstPointer
    {
        return new Int16ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
