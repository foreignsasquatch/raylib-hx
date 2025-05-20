package raylib.utils;

import cpp.Pointer;
import cpp.Int8;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract Int8ConstPointer(RawConstPointer<Int8>) from RawConstPointer<Int8> to RawConstPointer<Int8>
{
    inline function new(ptr:RawConstPointer<Int8>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int8>>):Int8ConstPointer
    {
        return new Int8ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int8>):Int8ConstPointer
    {
        return new Int8ConstPointer(Pointer.addressOf(value).constRaw);
    }
}
