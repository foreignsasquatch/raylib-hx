package utils;

extern abstract BoolPointer(cpp.RawPointer<Bool>) from cpp.RawPointer<Bool> to cpp.RawPointer<Bool>
{
	inline function new(ptr:cpp.RawPointer<Bool>):Void
	{
		this = ptr;
	}

	@:from
	public static inline function fromValue(value:Bool):BoolPointer
	{
		return new BoolPointer(cpp.Pointer.addressOf(value).raw);
	}

	@:from
	public static inline function fromArray(value:Array<Bool>):BoolPointer
	{
		return new BoolPointer(cpp.Pointer.ofArray(value).raw);
	}

	@:to
	public inline function toBool():Bool
	{
		return this[0];
	}
}
