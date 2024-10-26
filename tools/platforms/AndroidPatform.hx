package platforms;

import interfaces.TargetPlatform;
import haxe.io.Path;
import hxp.Log;
import hxp.System;

@:nullSafety
class AndroidPlatform implements TargetPlatform
{
	private final assetsDirectory:String;
	private final cppDirectory:String;
	private final javaDirectory:String;
	private final jniLibsDirectory:String;
	private final resDirectory:String;

	private var hxml:HXML;

	public function new(hxml:HXML):Void
	{
		this.hxml = hxml;

		assetsDirectory = Path.join([hxml.cpp, 'app/src/main/assets']);
		cppDirectory = Path.join([hxml.cpp, 'app/src/main/cpp']);
		javaDirectory = Path.join([hxml.cpp, 'app/src/main/java']);
		jniLibsDirectory = Path.join([hxml.cpp, 'app/src/main/jniLibs']);
		resDirectory = Path.join([hxml.cpp, 'app/src/main/res']);
	}

	public function setup():Void
	{
		System.makeDirectory(assetsDirectory);
		System.makeDirectory(cppDirectory);
		System.makeDirectory(javaDirectory);
		System.makeDirectory(jniLibsDirectory);
		System.makeDirectory(resDirectory);

		final context:Dynamic = {};
		context.ANDROID_BUILD_SDK_VERSION = 0;
		context.ANDROID_BUILD_TARGET_SDK_VERSION = 33;
		context.ANDROID_BUILD_MIN_SDK_VERSION = 21;
		context.ANDROID_BUILD_TOOLS_VERSION = 0;
	}

	public function build(architecture:Architecture):Bool
	{
		if (!supportedArchitectures().contains(architecture))
		{
			Log.warn('Unsupported architecture: ' + Std.string(architecture));
			return false;
		}

		final archHXML:HXML = hxml.clone();

		var archCppDirectory:String;
		var archDefine:String;
		var archSuffix:String;

		switch (architecture)
		{
			case ARM64:
				archCppDirectory = Path.join([cppDirectory, 'arm64-v8a']);
				archSuffix = archHXML.debug ? '-64-debug' : '-64';
				archDefine = 'HXCPP_ARM64';
			case ARMV7:
				archCppDirectory = Path.join([cppDirectory, 'armeabi-v7a']);
				archSuffix = archHXML.debug ? '-v7-debug' : '-v7';
				archDefine = 'HXCPP_ARMV7';
			case X86:
				archCppDirectory = Path.join([cppDirectory, 'x86']);
				archSuffix = archHXML.debug ? '-x86-debug' : '-x86';
				archDefine = 'HXCPP_X86';
			case X86_64:
				archCppDirectory = Path.join([cppDirectory, 'x86_64']);
				archSuffix = archHXML.debug ? '-x86_64-debug' : '-x86_64';
				archDefine = 'HXCPP_X86_64';
		}

		System.makeDirectory(archCppDirectory);

		archHXML.cpp = archCppDirectory;
		archHXML.define(archDefine);
		archHXML.build();

		System.copyIfNewer(Path.join([archCppDirectory, 'lib' + archHXML.main + archSuffix + '.so']),
			Path.join([jniLibsDirectory, 'lib' + archHXML.main + '.so']));

		return true;
	}

	public function supportedArchitectures():Array<Architecture>
	{
		return [ARM64, ARMV7, X86, X86_64];
	}
}
