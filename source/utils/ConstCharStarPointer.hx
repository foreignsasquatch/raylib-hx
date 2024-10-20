package utils;

@:nullSafety
extern abstract ConstCharStarPointer(cpp.RawPointer<cpp.ConstCharStar>) from cpp.RawPointer<cpp.ConstCharStar> to cpp.RawPointer<cpp.ConstCharStar>
{
    inline function new(ptr:cpp.RawPointer<cpp.ConstCharStar>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):cpp.ConstCharStar
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:cpp.ConstCharStar):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromValue(value:cpp.ConstCharStar):ConstCharStarPointer
    {
        return new ConstCharStarPointer(cpp.Pointer.addressOf(value).raw);
    }

    @:from
    static inline function fromArray(value:Array<String>):ConstCharStarPointer
    {
        final ptr:cpp.RawPointer<cpp.ConstCharStar> = untyped __cpp__('new const char *[{0}]', value.length);

        for (i in 0...value.length)
            ptr[i] = cpp.ConstCharStar.fromString(value[i]);

        return new ConstCharStarPointer(ptr);
    }
}
