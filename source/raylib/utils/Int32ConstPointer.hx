package raylib.utils;

import cpp.Int32;
import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract Int32ConstPointer(RawConstPointer<Int32>) from RawConstPointer<Int32> to RawConstPointer<Int32>
{
    inline function new(ptr:RawConstPointer<Int32>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int32>>):Int32ConstPointer
    {
        return new Int32ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int32>):Int32ConstPointer
    {
        return new Int32ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
