package utils;

typedef IconConfig =
{
	ldpi:String,
	mdpi:String,
	hdpi:String
}

typedef AppConfig =
{
	resourcesPath:String,
	label:String,
	company:String,
	product:String,
	fullscreen:Bool,
	orientation:String,
	icon:IconConfig
}
