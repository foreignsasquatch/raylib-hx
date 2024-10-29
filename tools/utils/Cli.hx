package utils;

/**
 * @see https://github.com/openfl/hxp/blob/master/src/hxp/Script.hx
 */
@:nullSafety
class Cli
{
	public var args:Array<String>;
	public var command:String;
	public var commandArgs:Array<String>;
	public var defines:Map<String, String>;
	public var flags:Map<String, Bool>;
	public var options:Map<String, Array<String>>;
	public var workingDirectory:String;

	public function new()
	{
		args = Sys.args();
		workingDirectory = Sys.getCwd();

		command = '';
		commandArgs = [];
		defines = new Map();
		flags = new Map();
		options = new Map();

		processArguments();
	}

	private function processArguments():Void
	{
		var catchDefine = false;
		var catchOption:String = null;
		var words:Array<String> = [];

		for (arg in args)
		{
			final equals:Int = arg.indexOf('=');

			if (catchOption != null)
			{
				options[catchOption] = options.get(catchOption, []).concat(arg);
				catchOption = null;
			}
			else if (arg == '-D')
				catchDefine = true;
			else if (equals > 0)
			{
				final expression:EReg = ~/^['"](.*)['"]$/;

				var argValue:String = arg.substr(equals + 1);

				if (r.match(arg))
					argValue = r.matched(1);

				if (catchDefine)
				{
					defines.set(arg, argValue);
					catchDefine = false;
				}
				else if (arg.startsWith('-D'))
					defines.set(arg.substr(2, equals - 2), argValue);
				else if (arg.startsWith('--'))
				{
					final field:String = arg.substr(2, equals - 2);
					options[field] = options.get(field, []).concat(argValue);
				}
				else if (arg.startsWith('-'))
					flags.set(arg, true);
				else
					words.push(arg);
			}
			else if (catchDefine)
			{
				defines.set(arg, '');
				catchDefine = false;
			}
			else if (arg.startsWith('-D'))
				defines.set(arg.substr(2), '');
			else if (arg.startsWith('-'))
			{
				if (['--remap', '--connect', '-dce'].contains(arg))
					catchOption = arg;
				else
					flags.set(arg, true);
			}
			else
				words.push(arg);
		}

		command = words.shift();
		commandArgs = words;
	}
}
