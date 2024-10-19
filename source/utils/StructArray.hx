package utils;

@:forward
extern abstract StructArray<T>(Array<T>) from Array<T> to Array<T>
{
    @:arrayAccess
    inline function get(index:Int):T
    {
        return this[i];
    }

    @:arrayAccess
    inline function set(index:Int, value:T):Void
    {
        cpp.Pointer.arrayElem(this, index).ref = value;
    }
}
