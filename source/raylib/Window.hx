package raylib;

import Raylib.Color;

class Window {
    public function new(width:Int = 800, height:Int = 600, title:String = "raylib-hx") {
        Raylib.initWindow(width, height, title);
    }

    public function clearBackground(color:Color) {
        Raylib.clearBackground(color);
    }

    public function close() {
        Raylib.closeWindow();
    }
}