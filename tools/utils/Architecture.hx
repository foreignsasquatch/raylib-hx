package utils;

abstract Architecture(String)
{
	public static inline final ARM64 = new Architecture("arm64");
	public static inline final ARMV7 = new Architecture("armv7");
	public static inline final X86 = new Architecture("x86");
	public static inline final X86_64 = new Architecture("x86_64");

	private inline function new(value:String)
	{
		this = value;
	}

	public static function fromFlag(flag:String):Null<Architecture>
	{
		switch (flag.toLowerCase())
		{
			case "-arm64":
				return ARM64;
			case "-armv7":
				return ARMV7;
			case "-x86":
				return X86;
			case "-x86_64":
				return X86_64;
			default:
				return null;
		}
	}

	public inline function toFlag():String
	{
		return '-' + this;
	}

	@:from
	static public inline function fromString(value:String):Architecture
	{
		return new Architecture(value);
	}

	@:to
	public inline function toString():String
	{
		return this;
	}
}
