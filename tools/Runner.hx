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
	private static var NDK_DIR:Null<String> = null;

	public static function main():Void
	{
		final cli:Script = new Cli();

		var args:Array<String> = cli.args;
		trace('args: ' + args);

		var command:String = cli.command;
		trace('command: ' + command);

		var commandArgs:Array<String> = cli.commandArgs;
		trace('commandArgs: ' + commandArgs);

		var defines:Map<String, String> = cli.defines;
		trace('defines: ' + defines);

		var flags:Map<String, Bool> = cli.flags;
		trace('flags: ' + flags);

		var options:Map<String, Array<String>> = cli.options;
		trace('options: ' + options);

		var workingDirectory:String = cli.workingDirectory;
		trace('workingDirectory: ' + workingDirectory);

		/*final args:Array<String> = Sys.args();
			final runDir:Null<String> = args.pop();
			final command:Null<String> = args.shift();
			final target:Null<String> = args.shift();

			var platform:Null<TargetPlatform> = null;

			if (runDir != null && command != null && target != null)
			{
				Sys.setCwd(runDir);

				switch (command)
				{
					case 'build':
						if (!FileSystem.exists('build.hxml'))
							Log.error(ANSI.apply('Unable to find "build.hxml" in ' + runDir + ' for the build process.', [ANSICode.Red]));

						final buildFile:HXML = HXML.fromFile('build.hxml');
						final configFile:Config = Json.parse(File.getContent('config.json'));

						platform = getTargetPlatform(target, configFile, buildFile);

						if (platform != null)
						{
							platform.setup();

							final architectures:Array<String> = getArchitectures(args);

							if (architectures.length > 0)
								platform.build(architectures);
						}
					default:
						Log.error(ANSI.apply('Unknown command: ', [ANSICode.Red]) + command);
				}
		}*/
	}
	/*private static function getTargetPlatform(target:Null<String>, config:Config, hxml:HXML):Null<TargetPlatform>
		{
			var targets:Null<TargetPlatform> = null

			switch (target)
			{
				case 'windows':
					targetPlatform = new TargetPlatform.Windows();
				case 'linux':
					targetPlatform = new TargetPlatform.Linux();
				case 'macos':
					targetPlatform = new TargetPlatform.MacOS();
				case 'emscripten':
					targetPlatform = new TargetPlatform.Emscripten();
				case 'android':
					targetPlatform = new AndroidPlatform(config, hxml);
				default:
					Log.error(ANSI.apply('Unknown target platform: $target', [ANSICode.Red]));

					targetPlatform = null;
			}

			return targetPlatform;
		}

		private static function getArchitectures(args:Array<String>):Array<Architecture>
		{
			final architectures:Array<Architecture> = [];

			for (arg in args)
			{
				switch (arg)
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
	}*/
}
