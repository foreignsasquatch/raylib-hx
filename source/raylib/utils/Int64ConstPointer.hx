package raylib.utils;

import cpp.Int64;
import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract Int64ConstPointer(RawConstPointer<Int64>) from RawConstPointer<Int64> to RawConstPointer<Int64>
{
    inline function new(ptr:RawConstPointer<Int64>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int64>>):Int64ConstPointer
    {
        return new Int64ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int64>):Int64ConstPointer
    {
        return new Int64ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
