<p align="center">
	<img src="assets/logo.png" alt="raylib-hx Logo">
</p>

# raylib-hx

![](https://img.shields.io/github/repo-size/foreignsasquatch/raylib-hx) ![](https://badgen.net/github/open-issues/foreignsasquatch/raylib-hx) ![](https://badgen.net/badge/license/Zlib/green)

Haxe/hxcpp @:native bindings for [raylib](https://raylib.com).

### Supported Platforms

- ![Windows](https://custom-icon-badges.demolab.com/badge/Windows-0078D6?logo=windows11&logoColor=white)
- ![macOS](https://img.shields.io/badge/-macOS-000000?logo=apple&logoColor=white&style=flat)
- ![Linux](https://img.shields.io/badge/-Linux-FCC624?logo=linux&logoColor=black&style=flat)
- ![Emscripten](https://img.shields.io/badge/-Emscripten-FFB900?logo=javascript&logoColor=black&style=flat)
- ![Android](https://img.shields.io/badge/-Android-3DDC84?logo=android&logoColor=white&style=flat)

***Hashlink or Neko are not supported***

### Installation

You can install it through `Haxelib`
```bash
haxelib install raylib-hx
```
Or through `Git`, if you want the latest updates
```bash
haxelib git raylib-hx https://github.com/foreignsasquatch/raylib-hx.git
```

### Dependencies

On ***Linux***, you need to install the required libraries for your distribution.

For detailed instructions, refer to the [raylib wiki: Working on GNU Linux - Install Required Libraries](https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux#install-required-libraries).

### Usage

Check out the [Examples Folder](examples/) for some examples on how to use this library.

> [!TIP]
> If you wish to use `Wayland` for windowing instead of `X11` on ***Linux***, make sure to define `RAYLIB_WAYLAND_DISPLAY` and execute the following command in the `project/scripts` directory:
> 
> ```bash
> chmod +x glfw-generate-wayland.sh && ./glfw-generate-wayland.sh
> ```

> [!TIP]
> To hide the console window on desktop, add the `no_console` compiler flag.

### Licensing

![](https://github.com/raysan5/raylib/blob/master/logo/raylib_logo_animation.gif)

**raylib-hx** and **raylib** are made available under the **Zlib License**.

- Check [raylib-hx's LICENSE](./LICENSE) for more information.
- Check [raylib's LICENSE](https://github.com/raysan5/raylib/blob/master/LICENSE) for more information.

### Consider supporting

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/W7W77EX85)
