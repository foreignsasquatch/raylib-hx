package utils;

import haxe.extern.AsVar;

extern abstract FloatPointer(cpp.RawPointer<Single>) from cpp.RawPointer<Single> to cpp.RawPointer<Single>
{
	inline function new(ptr:cpp.RawPointer<Single>):Void
	{
		this = ptr;
	}

	@:from
	public static inline function fromValue(value:Single):FloatPointer
	{
		return new FloatPointer(cpp.RawPointer.addressOf((value : AsVar<Single>)));
	}

	@:from
	public static inline function fromArray(value:Array<Single>):FloatPointer
	{
		return new FloatPointer(cpp.Pointer.ofArray((value : AsVar<Array<Single>>)).raw);
	}

	@:to
	public inline function toSingle():Single
	{
		return this[0];
	}
}
