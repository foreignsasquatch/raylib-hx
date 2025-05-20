package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract BoolConstPointer(RawConstPointer<Bool>) from RawConstPointer<Bool> to RawConstPointer<Bool>
{
    inline function new(ptr:RawConstPointer<Bool>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Bool>>):BoolConstPointer
    {
        return new BoolConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Bool>):BoolConstPointer
    {
        return new BoolConstPointer(Pointer.addressOf(value).constRaw);
    }
}
