package utils;

import haxe.io.Bytes;
import haxe.io.BytesData;

extern abstract BytesConstPointer(cpp.RawConstPointer<cpp.UInt8>) from cpp.RawConstPointer<cpp.UInt8> to cpp.RawConstPointer<cpp.UInt8>
{
    inline function new(ptr:cpp.RawConstPointer<cpp.UInt8>):Void
    {
        this = ptr;
    }

    @:from
    public static inline function fromBytes(value:Bytes):BytesConstPointer
    {
        return fromBytesData(value.getData());
    }

    @:from
    public static inline function fromBytesData(value:BytesData):BytesConstPointer
    {
        return new BytesConstPointer(cpp.Pointer.ofArray(value).raw);
    }
}
