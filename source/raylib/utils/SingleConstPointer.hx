package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.extern.AsVar;

extern abstract SingleConstPointer(RawConstPointer<Single>) from RawConstPointer<Single> to RawConstPointer<Single>
{
    inline function new(ptr:RawConstPointer<Single>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Single>>):SingleConstPointer
    {
        return new SingleConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Single>):SingleConstPointer
    {
        return new SingleConstPointer(Pointer.addressOf(value).constRaw);
    }
}
