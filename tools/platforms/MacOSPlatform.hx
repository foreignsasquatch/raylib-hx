package platforms;

import haxe.io.Path;
import haxe.xml.Printer;
import hxp.Haxelib;
import hxp.HXML;
import hxp.Log;
import hxp.System;
import platforms.TargetPlatform;
import sys.FileSystem;
import utils.android.Feature;
import utils.android.Permission;
import utils.Architecture;
import utils.Config;

@:nullSafety
class MacOSPlatform extends TargetPlatform
{
	@:noCompletion
	private final outputDirectory:String;

	@:noCompletion
	private final cppDirectory:String;

	public function new(config:Config, hxml:HXML):Void
	{
		super(config, hxml);

		outputDirectory = Path.join([hxml.cpp, 'output']);
		cppDirectory = Path.join([hxml.cpp, 'cpp']);
	}

	public override function setup():Void
	{
		System.makeDirectory(outputDirectory);
		System.makeDirectory(cppDirectory);
	}

	public override function build(architectures:Array<Architecture>):Void
	{
		super.build(architectures);

		for (architecture in architectures)
		{
			var archDirectory:String;
			var archDefine:String;
			var archSuffix:String;

			final archHXML:HXML = hxml.clone();

			switch (architecture)
			{
				case ARM64:
					archDirectory = 'arm64';
					archDefine = 'HXCPP_ARM64';
				case X86:
					archDirectory = 'x86';
					archDefine = 'HXCPP_M32';
				case X86_64:
					archDirectory = 'x86_64';
					archDefine = 'HXCPP_M64';
				default:
					Log.warn(ANSI.apply('Unable to use this architecture: $key', [ANSICode.Yellow]));
					continue;
			}

			archHXML.cpp = Path.join([cppDirectory, archDirectory]);
			archHXML.define(archDefine);
			archHXML.build();
		}
	}

	public override function supportedArchitectures():Array<Architecture>
	{
		return [ARM64, X86, X86_64];
	}
}
