package platforms;

import interfaces.TargetPlatform;
import haxe.io.Path;
import hxp.Haxelib;
import hxp.HXML;
import hxp.Log;
import hxp.System;
import utils.Architecture;

@:nullSafety
class AndroidPlatform implements TargetPlatform
{
	private final hxml:HXML;
	private final assetsDirectory:String;
	private final cppDirectory:String;
	private final javaDirectory:String;
	private final jniLibsDirectory:String;
	private final resDirectory:String;
	private final templateDirectory:String;

	public function new(hxml:HXML):Void
	{
		this.hxml = hxml;

		assetsDirectory = Path.join([hxml.cpp, 'app/src/main/assets']);
		cppDirectory = Path.join([hxml.cpp, 'app/src/main/cpp']);
		javaDirectory = Path.join([hxml.cpp, 'app/src/main/java']);
		jniLibsDirectory = Path.join([hxml.cpp, 'app/src/main/jniLibs']);
		resDirectory = Path.join([hxml.cpp, 'app/src/main/res']);
		templateDirectory = Path.join([Haxelib.getPath(new Haxelib('raylib-hx')), 'templates']);
	}

	public function setup():Void
	{
		System.makeDirectory(assetsDirectory);
		System.makeDirectory(cppDirectory);
		System.makeDirectory(javaDirectory);
		System.makeDirectory(jniLibsDirectory);
		System.makeDirectory(resDirectory);

		final context:Dynamic = {};

		context.APP_APPLICATION_ID = 'org.haxe.raylib';
		context.APP_VERSION_NAME = '1.0';
		context.APP_VERSION_CODE = 1;

		context.ANDROID_BUILD_SDK_VERSION = 0;
		context.ANDROID_BUILD_TARGET_SDK_VERSION = 33;
		context.ANDROID_BUILD_MIN_SDK_VERSION = 21;
		context.ANDROID_BUILD_TOOLS_VERSION = 0;

		final permissions:Array<{key:String, value:Dynamic}> = [];
		permissions.push({key: 'android.permission.INTERNET', value: true});
		permissions.push({key: 'android.permission.VIBRATE', value: true});
		context.ANDROID_PERMISSIONS = permissions;

		final features:Array<{key:String, value:Dynamic}> = [];
		features.push({key: 'android.hardware.sensor.accelerometer', value: true});
		context.ANDROID_FEATURES = features;

		final application:Array<{key:String, value:Dynamic}> = [];
		application.push({key: 'android:label', value: 'rGame.hx'});
		// application.push({key: 'android:icon', value: '@drawable/icon'});
		application.push({key: 'android:theme', value: '@android:style/Theme.NoTitleBar.Fullscreen'});
		application.push({key: 'android:allowBackup', value: true});
		application.push({key: 'android:hardwareAccelerated', value: true});

		if (context.ANDROID_BUILD_TARGET_SDK_VERSION >= 30)
			application.push({key: 'android:allowNativeHeapPointerTagging', value: false});

		application.push({key: 'android:appCategory', value: 'game'});
		context.ANDROID_APPLICATION = application;

		final activity:Array<{key:String, value:Dynamic}> = [];
		activity.push({key: 'android:name', value: 'MainActivity'});
		activity.push({key: 'android:configChanges', value: 'keyboard|keyboardHidden|orientation|screenSize|screenLayout|uiMode|locale|layoutDirection|navigation'});
		activity.push({key: 'android:screenOrientation', value: 'landscape'});
		activity.push({key: 'android:launchMode', value: 'singleTask'});
		activity.push({key: 'android:resizeableActivity', value: false});
		activity.push({key: 'android:clearTaskOnLaunch', value: true});
		activity.push({key: 'android:exported', value: true});
		context.ANDROID_ACTIVITY = activity;

		final metadata:Array<{key:String, value:Dynamic}> = [];
		metadata.push({key: 'android.app.lib_name', value: hxml.main});
		context.ANDROID_METADATA = metadata;

		final javaAppDirectory:String = Path.join([javaDirectory, context.APP_APPLICATION_ID.split('.').join('/')]);

		System.makeDirectory(javaAppDirectory);

		final gradleProjectFiles:Array<String> = System.findTemplateRecursive([templateDirectory], 'android/gradle-project');

		if (gradleProjectFiles != null && gradleProjectFiles.length > 0)
		{
			System.makeDirectory(hxml.cpp);

			for (file in gradleProjectFiles)
				System.copyFile(file, Path.join([hxml.cpp, file]), context);
		}

		System.copyFileTemplate([templateDirectory], 'android/MainActivity.java', Path.join([javaAppDirectory, 'MainActivity.java']), context);
	}

	public function build(architectures:Array<Architecture>):Bool
	{
		final architecturesToBuild:Array<Architecture> = architectures.filter(function(arch:Architecture):Bool
		{
			return supportedArchitectures().contains(arch);
		});

		if (architectures.length == 0)
		{
			Log.error('No architectures to build after applying exclusions.');

			return false;
		}

		for (architecture in architectures)
		{
			var archCppDirectory:String;
			var archDefine:String;
			var archSuffix:String;

			final archHXML:HXML = hxml.clone();

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
		}

		/*if (System.hostPlatform != WINDOWS)
			System.runCommand(hxml.cpp, 'chmod', ['+x', './gradlew']);

		System.runCommand(hxml.cpp, System.hostPlatform != WINDOWS ? './gradlew' : 'gradlew', ['build']);*/

		return true;
	}

	public function supportedArchitectures():Array<Architecture>
	{
		return [ARM64, ARMV7, X86, X86_64];
	}
}
