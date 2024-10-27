package utils;

typedef Config =
{
	resourcesPath:String,
	label:String,
	company:String,
	product:String,
	versionCode:Int,
	versionName:String,
	fullscreen:Bool,
	orientation:String,
	icon:
	{
		ldpi:String, mdpi:String, hdpi:String
	}
}
