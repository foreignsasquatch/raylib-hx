package utils;

extern abstract ConstCharStarPointer(cpp.RawPointer<cpp.ConstCharStar>) from cpp.RawPointer<cpp.ConstCharStar> to cpp.RawPointer<cpp.ConstCharStar>
{
    inline function new(ptr:cpp.RawPointer<cpp.ConstCharStar>):Void
    {
        this = ptr;
    }

    @:arrayAccess
    inline function get(index:Int):Int
    {
        return this[index];
    }

    @:arrayAccess
    inline function set(index:Int, value:Int):Void
    {
        this[index] = value;
    }

    @:from
    static inline function fromArray(value:Array<String>):IntPointer
    {
        final ptr:cpp.RawPointer<cpp.ConstCharStar> = untyped __cpp__('new const char *[{0}]', value.length);

        for (i in 0...value.length)
            ptr[i] = cpp.ConstCharStar.fromString(value[i]);

        return new ConstCharStarPointer(ptr);
    }
}
