package raylib.utils;

import cpp.Int8;
import cpp.Pointer;
import cpp.RawPointer;

import haxe.extern.AsVar;

extern abstract Int8Pointer(RawPointer<Int8>) from RawPointer<Int8> to RawPointer<Int8>
{
    inline function new(ptr:RawPointer<Int8>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Int8
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Int8):Void
    {
        this[index] = value;
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<Int8>>):Int8Pointer
    {
        return new Int8Pointer(Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Int8>):Int8Pointer
    {
        return new Int8Pointer(Pointer.addressOf(value).raw);
    }
}
