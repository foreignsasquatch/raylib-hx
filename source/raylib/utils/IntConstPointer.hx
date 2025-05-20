package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract IntConstPointer(RawConstPointer<Int>) from RawConstPointer<Int> to RawConstPointer<Int>
{
    inline function new(ptr:RawConstPointer<Int>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int>>):IntConstPointer
    {
        return new IntConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int>):IntConstPointer
    {
        return new IntConstPointer(Pointer.addressOf(value).constRaw);
    }
}
