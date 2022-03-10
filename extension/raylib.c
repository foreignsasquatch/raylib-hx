#if defined(_MSC_VER)
#define WIN32_LEAN_AND_MEAN
#define NOGDI
#define NOUSER
#endif

#define HL_NAME(n) raylib_##n

#include "hl.h"
#include "raylib.h"

// Conversion functions
Color col_from_dyn(vdynamic *c) {
    Color color;
    color.r = hl_dyn_geti(c, hl_hash_utf8("r"), &hlt_i32);
    color.g = hl_dyn_geti(c, hl_hash_utf8("g"), &hlt_i32);
    color.b = hl_dyn_geti(c, hl_hash_utf8("b"), &hlt_i32);
    color.a = hl_dyn_geti(c, hl_hash_utf8("a"), &hlt_i32);
    return color;
}

Texture tex_from_dyn(vdynamic* t) {
    Texture tex;
    tex.id = hl_dyn_geti(t, hl_hash_utf8("id"), &hlt_i32);
    tex.width = hl_dyn_geti(t, hl_hash_utf8("width"), &hlt_i32);
    tex.height = hl_dyn_geti(t, hl_hash_utf8("height"), &hlt_i32);
    tex.mipmaps = hl_dyn_geti(t, hl_hash_utf8("mipmaps"), &hlt_i32);
    tex.format = hl_dyn_geti(t, hl_hash_utf8("format"), &hlt_i32);
    return tex;
}

// c -> haxe
HL_PRIM void HL_NAME(init_window)(int width, int height, vstring* title) {
    InitWindow(width, height, hl_to_utf8(title->bytes));
}

HL_PRIM void HL_NAME(close_window)() {
    CloseWindow();
}

HL_PRIM bool HL_NAME(window_should_close)() {
    return WindowShouldClose();
}

HL_PRIM void HL_NAME(begin_drawing)() {
    BeginDrawing();
}

HL_PRIM void HL_NAME(end_drawing)() {
    EndDrawing();
}

HL_PRIM void HL_NAME(clear_background)(vdynamic *c) {
    ClearBackground(col_from_dyn(c));
}

HL_PRIM void HL_NAME(set_trace_log_level)(int l) {
    SetTraceLogLevel(l);
}

HL_PRIM int HL_NAME(get_screen_width)() {
    return GetScreenWidth();
}

HL_PRIM int HL_NAME(get_screen_height)() {
    return GetScreenHeight();
}

HL_PRIM int HL_NAME(get_monitor_width)(int m) {
    return GetMonitorWidth(m);
}

HL_PRIM int HL_NAME(get_monitor_height)(int m) {
    return GetMonitorHeight(m);
}

HL_PRIM void HL_NAME(set_target_fps)(int f) {
    SetTargetFPS(f);
}

HL_PRIM vdynamic* HL_NAME(load_texture)(vstring* f) {
    Texture tx = LoadTexture(hl_to_utf8(f->bytes));
    vdynamic* obj = (vdynamic*)hl_alloc_dynobj();
    hl_dyn_seti(obj, hl_hash_utf8("id"), &hlt_i32, tx.id);
    hl_dyn_seti(obj, hl_hash_utf8("width"), &hlt_i32, tx.width);
    hl_dyn_seti(obj, hl_hash_utf8("height"), &hlt_i32, tx.height);
    hl_dyn_seti(obj, hl_hash_utf8("mipmaps"), &hlt_i32, tx.mipmaps);
    hl_dyn_seti(obj, hl_hash_utf8("format"), &hlt_i32, tx.format);
    return obj;
}

HL_PRIM void HL_NAME(draw_texture)(vdynamic* t, int x, int y, vdynamic* c) {
    DrawTexture(tex_from_dyn(t), x, y, col_from_dyn(c));
}

// Defintions
DEFINE_PRIM(_VOID, init_window, _I32 _I32 _DYN);
DEFINE_PRIM(_VOID, close_window, _NO_ARG);
DEFINE_PRIM(_BOOL, window_should_close, _NO_ARG);
DEFINE_PRIM(_VOID, begin_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, end_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, clear_background, _DYN);
DEFINE_PRIM(_VOID, set_trace_log_level, _I32);
DEFINE_PRIM(_I32, get_screen_width, _NO_ARG);
DEFINE_PRIM(_I32, get_screen_height, _NO_ARG);
DEFINE_PRIM(_I32, get_monitor_width, _I32);
DEFINE_PRIM(_I32, get_monitor_height, _I32);
DEFINE_PRIM(_VOID, set_target_fps, _I32);
DEFINE_PRIM(_DYN, load_texture, _STRING);
DEFINE_PRIM(_VOID, draw_texture, _DYN _I32 _I32 _DYN);