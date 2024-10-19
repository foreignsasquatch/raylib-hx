package utils;

@:forward
extern abstract StructArray<T>(Array<T>) from Array<T> to Array<T>
{
    @:arrayAccess
    inline function get(index:Int):T
    {
        return cpp.NativeArray.address(this, index).ref.value;
    }

    @:arrayAccess
    inline function set(index:Int, value:T):Void
    {
        cpp.NativeArray.address(this, index).ref.value = value;
    }
}
