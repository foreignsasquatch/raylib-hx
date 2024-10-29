package;

import haxe.Json;
import hxp.HXML;
import hxp.Log;
import hxp.System;
import platforms.AndroidPlatform;
import platforms.TargetPlatform;
import sys.io.File;
import sys.FileSystem;
import utils.ANSI;
import utils.Architecture;
import utils.Cli;
import utils.Config;

@:nullSafety
class Runner
{
	public static function main():Void
	{
		final cli:Cli = new Cli();

		var args:Array<String> = cli.args;
		var command:String = cli.command;
		var commandArgs:Array<String> = cli.commandArgs;
		var defines:Map<String, String> = cli.defines;
		var flags:Map<String, Bool> = cli.flags;
		var options:Map<String, Array<String>> = cli.options;
		var runnedInDirectory:String = cli.runnedInDirectory;
		var workingDirectory:String = cli.workingDirectory;
		var platform:Null<TargetPlatform> = null;

		Sys.setCwd(runnedInDirectory);

		switch (command)
		{
			case 'build':
				if (!FileSystem.exists('build.hxml'))
					Log.error(ANSI.apply('Unable to find "build.hxml" in ' + runDir + ' for the build process.', [ANSICode.Red]));

				final buildFile:HXML = HXML.fromFile('build.hxml');

				for (key => value in defines)
					buildFile.define(key, value);

				final configFile:Config = Json.parse(File.getContent('config.json'));

				platform = getTargetPlatform(commandArgs[0], configFile, buildFile);

				if (platform != null)
				{
					platform.setup();

					final architectures:Array<String> = getArchitectures(flags);

					if (architectures.length > 0)
						platform.build(architectures);
				}
			default:
				Log.error(ANSI.apply('Unknown command: ', [ANSICode.Red]) + command);
		}
	}

	private static function getTargetPlatform(target:Null<String>, config:Config, hxml:HXML):Null<TargetPlatform>
	{
		var targets:Null<TargetPlatform> = null switch (target)

		{
			/*case 'windows':
					targetPlatform = new TargetPlatform.Windows();
				case 'linux':
					targetPlatform = new TargetPlatform.Linux();
				case 'macos':
					targetPlatform = new TargetPlatform.MacOS();
				case 'emscripten':
					targetPlatform = new TargetPlatform.Emscripten(); */
			case 'android':
				targetPlatform = new AndroidPlatform(config, hxml);
			default:
				Log.error(ANSI.apply('Unknown target platform: $target', [ANSICode.Red]));

				targetPlatform = null;
		}

		return targetPlatform;
	}

	private static function getArchitectures(flags:Map<String, Bool>):Array<Architecture>
	{
		final architectures:Array<Architecture> = [];

		for (key => value in flags)
		{
			if (!value)
				continue;

			switch (key)
			{
				case '-arm64', '-armv7', '-x86', '-x86_64':
					final arch:Null<Architecture> = Architecture.fromFlag(arg);

					if (arch != null)
						architectures.push(arch);
				default:
					Log.warn(ANSI.apply('Unknown argument: $arg', [ANSICode.Yellow]));
			}
		}

		return architectures;
	}
}
