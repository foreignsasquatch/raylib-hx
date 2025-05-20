package raylib.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt8;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;
import haxe.extern.AsVar;

extern abstract UInt8ConstPointer(RawConstPointer<UInt8>) from RawConstPointer<UInt8> to RawConstPointer<UInt8>
{
    inline function new(ptr:RawConstPointer<UInt8>):Void
    {
        this = ptr;
    }

    @:from
    overload static inline function fromValue(value:AsVar<UInt8>):UInt8ConstPointer
    {
        return new UInt8ConstPointer(Pointer.addressOf(value).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Array<UInt8>>):UInt8ConstPointer
    {
        return new UInt8ConstPointer(Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Bytes>):UInt8ConstPointer
    {
        return new UInt8ConstPointer(Pointer.arrayElem(value.getData(), 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<ArrayBufferView>):UInt8ConstPointer
    {
        return new UInt8ConstPointer(Pointer.arrayElem(value.buffer.getData(), value.byteOffset).constRaw);
    }
}
