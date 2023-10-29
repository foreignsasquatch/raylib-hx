<p align="center">
	<img src="logo-by-logo.png" alt="raylib-hx Logo">
</p>

# raylib-hx

![Stars](https://img.shields.io/github/stars/ForeignSasquatch/hxRaylib?style=flat-square) ![License](https://img.shields.io/github/license/ForeignSasquatch/hxRaylib?style=flat-square) ![Forks](https://img.shields.io/github/forks/ForeignSasquatch/hxRaylib?style=flat-square)

[Haxe](https://haxe.org/) bindings for [raylib](https://raylib.com), a simple and easy-to-use library to learn videogame programming.

> Check out the examples folder to see some code!

Requirements
-------------
- Haxe 4.0.0 or above
- (Windows only) MSVC v142 - VS 2019 C++ x64/x86 build tools
- (Windows only) Windows 10 SDK

Installation
-------------
- `git clone https://github.com/ForeignSasquatch/raylib-hx --recurse-submodules -j8`
- `haxelib dev raylib-hx raylib-hx`

Usage
-----------
This is a basic example of the bindings which creates a window.
In your project make a ``Build.hxml`` file with the following:
```
-cp [source folder]
-cpp [output folder]
-lib raylib-hx
-main [Main file]
```
Sample code:
```haxe
class Main {
  static function main() {
    Rl.initWindow(1280, 720, "Hi");
    
    while(!Rl.windowShouldClose()) {
      Rl.beginDrawing();
      Rl.clearBackground(Rl.Colors.WHITE);
      Rl.endDrawing();
    }
    
    Rl.closeWindow();
  }
}
```

On Linux it's possible to use a system wide installation of Raylib instead of
the source code provided with this repo.

Just add the `--define shared_libs` flag to your *.hxml file or to the command
line.

**Tip**: To hide the Raylib console window on desktop, add the `no_console` compiler flag.

### Consider supporting
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W77EX85)
