package raylib.utils;

@:nullSafety
extern abstract CastCharStarPointer(cpp.RawPointer<cpp.CastCharStar>) from cpp.RawPointer<cpp.CastCharStar> to cpp.RawPointer<cpp.CastCharStar>
{
    inline function new(ptr:cpp.RawPointer<cpp.CastCharStar>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):cpp.CastCharStar
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:cpp.CastCharStar):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:cpp.CastCharStar):CastCharStarPointer
    {
        return new CastCharStarPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<String>):CastCharStarPointer
    {
        final ptr:cpp.RawPointer<cpp.CastCharStar> = untyped __cpp__('new char *[{0}]', value.length);

        for (i in 0...value.length)
            ptr[i] = cpp.CastCharStar.fromString(value[i]);

        return new CastCharStarPointer(ptr);
    }
}
