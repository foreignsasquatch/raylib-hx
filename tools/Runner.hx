package;

import haxe.io.Path;
import hxp.HXML;
import hxp.Log;
import hxp.System;
import sys.FileSystem;
import utils.ANSI;

@:nullSafety
class Runner
{
	private static var NDK_DIR:Null<String> = null;

	public static function main():Void
	{
		final args:Array<String> = Sys.args();
		final runDir:Null<String> = args.pop();
		final command:Null<String> = args.shift();
		final target:Null<String> = args.shift();

		if (runDir != null && command != null && target != null)
		{
			switch (command)
			{
				case 'build':
					setupNDK();

					if (!FileSystem.exists(Path.join([runDir, 'build.hxml'])))
						Log.error(ANSI.apply('Unable to find "build.hxml" necessary for building process.', [ANSICode.Red]));

					final buildFile:HXML = HXML.fromFile(Path.join([runDir, 'build.hxml']));

					for (arch in args)
					{
						switch (arch)
						{
							case 'arm64':
								build(buildFile.clone(), "HXCPP_ARM64", "arm64-v8a",
									buildFile.debug ? 'lib${buildFile.main}-64-debug.so' : 'lib${buildFile.main}-64.so');
							case 'armv7':
								build(buildFile.clone(), "HXCPP_ARMV7", "armeabi-v7a",
									buildFile.debug ? 'lib${buildFile.main}-v7-debug.so' : 'lib${buildFile.main}-v7.so');
							case 'x86':
								build(buildFile.clone(), "HXCPP_X86", "x86", buildFile.debug ? 'lib${buildFile.main}-x86-debug.so' : 'lib${buildFile.main}-x86.so');
							case 'x86_64':
								build(buildFile.clone(), "HXCPP_X86_64", "x86_64",
									buildFile.debug ? 'lib${buildFile.main}-x86_64-debug.so' : 'lib${buildFile.main}-x86_64.so');
						}
					}
				default:
					Log.error(ANSI.apply('Unknown command ', [ANSICode.Red]) + ANSI.apply(command, [ANSICode.Italic, ANSICode.Red]) + ANSI.apply('...', [ANSICode.Red]));
			}
		}
	}

	private static function setupNDK():Void
	{
		NDK_DIR = Sys.getEnv('ANDROID_NDK_ROOT');

		if (NDK_DIR == null)
		{
			Log.info(ANSI.apply('ANDROID_NDK_ROOT is not set, searching for NDK...', [ANSICode.Yellow]));

			switch (System.hostPlatform)
			{
				case WINDOWS:
					Log.error(ANSI.apply('Please set ANDROID_NDK_ROOT manually.', [ANSICode.Red]));
				case MAC:
					NDK_DIR = Path.join([Sys.getEnv('HOME'), '/Library/Android/sdk/ndk']);
				case LINUX:
					if (FileSystem.exists(Path.join([Sys.getEnv('HOME'), '/Android/Sdk/ndk'])))
						NDK_DIR = Path.join([Sys.getEnv('HOME'), '/Android/Sdk/ndk']);
					else if (FileSystem.exists('/usr/local/android-ndk'))
						NDK_DIR = '/usr/local/android-ndk';
					else
						Log.error(ANSI.apply('Could not find the Android NDK automatically. Please set ANDROID_NDK_ROOT.', [ANSICode.Red]));
				default:
					Log.error(ANSI.apply('Unsupported OS. Please set ANDROID_NDK_ROOT manually.', [ANSICode.Red]));
			}
		}

		if (NDK_DIR != null)
			Log.info(ANSI.apply('Using Android NDK at $NDK_DIR', [ANSICode.Green]));
	}

	private static function build(hxml:HXML, arch:String, jniDir:String, libName:String):Void
	{
		Log.info(ANSI.apply('Building for $arch...', [ANSICode.Blue]));

		hxml.cpp = Path.join([hxml.cpp, arch]);
		hxml.define(arch);
		hxml.define('ANDROID_NDK_DIR', NDK_DIR);
		hxml.build();

		final jniLibDir:String = Path.join(['project/app/src/main/jniLibs', jniDir]);
	}
}
