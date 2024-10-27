package platforms;

import interfaces.TargetPlatform;
import haxe.io.Path;
import haxe.DynamicAccess;
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

	/*public function setup():Void
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

			final permissions:DynamicAccess<Bool> = {};
			permissions.set('android.permission.INTERNET', true);
			permissions.set('android.permission.VIBRATE', true);
			context.ANDROID_PERMISSIONS = permissions;

			final features:DynamicAccess<Bool> = {};
			features.set('android.hardware.sensor.accelerometer', true);
			context.ANDROID_FEATURES = features;

			final application:DynamicAccess<Dynamic> = {};
			application.set('android:label', 'rGame.hx');
			// application.set('android:icon', '@drawable/icon');
			application.set('android:theme', '@android:style/Theme.NoTitleBar.Fullscreen');
			application.set('android:allowBackup', true);
			application.set('android:hardwareAccelerated', true);

			if (context.ANDROID_BUILD_TARGET_SDK_VERSION >= 30)
				application.set('android:allowNativeHeapPointerTagging', false);

			application.set('android:appCategory', 'game');
			context.ANDROID_APPLICATION = application;

			final activity:DynamicAccess<Dynamic> = {};
			activity.set('android:name', 'MainActivity');
			activity.set('android:configChanges', 'keyboard|keyboardHidden|orientation|screenSize|screenLayout|uiMode|locale|layoutDirection|navigation');
			activity.set('android:screenOrientation', 'landscape');
			activity.set('android:launchMode', 'singleTask');
			activity.set('android:resizeableActivity', false);
			activity.set('android:clearTaskOnLaunch', true);
			activity.set('android:exported', true);
			context.ANDROID_ACTIVITY = activity;

			final metadata:DynamicAccess<String> = {};
			metadata.set('android.app.lib_name', archHXML.main);
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
	}*/
	public function setup():Void
	{
		Log.info('Starting setup for Android platform.');

		System.makeDirectory(assetsDirectory);
		Log.info('Created assets directory: ' + assetsDirectory);

		System.makeDirectory(cppDirectory);
		Log.info('Created C++ directory: ' + cppDirectory);

		System.makeDirectory(javaDirectory);
		Log.info('Created Java directory: ' + javaDirectory);

		System.makeDirectory(jniLibsDirectory);
		Log.info('Created JNI libraries directory: ' + jniLibsDirectory);

		System.makeDirectory(resDirectory);
		Log.info('Created resources directory: ' + resDirectory);

		final context:Dynamic = {};

		context.APP_APPLICATION_ID = 'org.haxe.raylib';
		context.APP_VERSION_NAME = '1.0';
		context.APP_VERSION_CODE = 1;

		context.ANDROID_BUILD_SDK_VERSION = 0;
		context.ANDROID_BUILD_TARGET_SDK_VERSION = 33;
		context.ANDROID_BUILD_MIN_SDK_VERSION = 21;
		context.ANDROID_BUILD_TOOLS_VERSION = 0;

		final permissions:DynamicAccess<Bool> = {};
		permissions.set('android.permission.INTERNET', true);
		permissions.set('android.permission.VIBRATE', true);
		context.ANDROID_PERMISSIONS = permissions;
		Log.info('Set Android permissions: ' + permissions);

		final features:DynamicAccess<Bool> = {};
		features.set('android.hardware.sensor.accelerometer', true);
		context.ANDROID_FEATURES = features;
		Log.info('Set Android features: ' + features);

		final application:DynamicAccess<Dynamic> = {};
		application.set('android:label', 'rGame.hx');
		application.set('android:theme', '@android:style/Theme.NoTitleBar.Fullscreen');
		application.set('android:allowBackup', true);
		application.set('android:hardwareAccelerated', true);

		if (context.ANDROID_BUILD_TARGET_SDK_VERSION >= 30)
			application.set('android:allowNativeHeapPointerTagging', false);

		application.set('android:appCategory', 'game');
		context.ANDROID_APPLICATION = application;
		Log.info('Configured Android application: ' + application);

		final activity:DynamicAccess<Dynamic> = {};
		activity.set('android:name', 'MainActivity');
		activity.set('android:configChanges', 'keyboard|keyboardHidden|orientation|screenSize|screenLayout|uiMode|locale|layoutDirection|navigation');
		activity.set('android:screenOrientation', 'landscape');
		activity.set('android:launchMode', 'singleTask');
		activity.set('android:resizeableActivity', false);
		activity.set('android:clearTaskOnLaunch', true);
		activity.set('android:exported', true);
		context.ANDROID_ACTIVITY = activity;
		Log.info('Configured Android activity: ' + activity);

		final metadata:DynamicAccess<String> = {};
		metadata.set('android.app.lib_name', archHXML.main);
		context.ANDROID_METADATA = metadata;
		Log.info('Configured Android metadata: ' + metadata);

		final javaAppDirectory:String = Path.join([javaDirectory, context.APP_APPLICATION_ID.split('.').join('/')]);
		System.makeDirectory(javaAppDirectory);
		Log.info('Created Java application directory: ' + javaAppDirectory);

		final gradleProjectFiles:Array<String> = System.findTemplateRecursive([templateDirectory], 'android/gradle-project');

		if (gradleProjectFiles != null && gradleProjectFiles.length > 0)
		{
			System.makeDirectory(hxml.cpp);
			Log.info('Found Gradle project files, copying them.');

			for (file in gradleProjectFiles)
			{
				System.copyFile(file, Path.join([hxml.cpp, file]), context);
				Log.info('Copied Gradle project file: ' + file);
			}
		}
		else
		{
			Log.warn('No Gradle project files found to copy.');
		}

		System.copyFileTemplate([templateDirectory], 'android/MainActivity.java', Path.join([javaAppDirectory, 'MainActivity.java']), context);
		Log.info('Copied MainActivity template to: ' + Path.join([javaAppDirectory, 'MainActivity.java']));
	}

	public function build(architectures:Array<Architecture>):Bool
	{
		final architecturesToBuild:Array<Architecture> = architectures.filter(function(arch:Architecture):Bool
		{
			return supportedArchitectures().contains(arch);
		});

		if (architectures.length == 0)
		{
			Log.warn('No architectures to build after applying exclusions.');
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

		return true;
	}

	public function supportedArchitectures():Array<Architecture>
	{
		return [ARM64, ARMV7, X86, X86_64];
	}
}
