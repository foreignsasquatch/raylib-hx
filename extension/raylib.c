#if defined(_MSC_VER)
#define WIN32_LEAN_AND_MEAN
#define NOGDI
#define NOUSER
#endif

#define HL_NAME(n) raylib_##n

#include "include/hl.h"
#include "include/raylib.h"

// NOTE: Exams suck
// NOTE: IS THIS SLOW? so many questions
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

Rectangle rec_from_dyn(vdynamic* t) {
    Rectangle r;
    r.x = hl_dyn_getf(t, hl_hash_utf8("x"));
    r.y = hl_dyn_getf(t, hl_hash_utf8("y"));
    r.width = hl_dyn_getf(t, hl_hash_utf8("width"));
    r.height = hl_dyn_getf(t, hl_hash_utf8("height"));
    return r;
}

Image img_from_dyn(vdynamic* t) {
    Image i;
    i.data = hl_dyn_getp(t, hl_hash_utf8("data"), &hlt_void);
    i.width = hl_dyn_geti(t, hl_hash_utf8("width"), &hlt_i32);
    i.height = hl_dyn_geti(t, hl_hash_utf8("height"), &hlt_i32);
    i.mipmaps = hl_dyn_geti(t, hl_hash_utf8("mipmaps"), &hlt_i32);
    i.format = hl_dyn_geti(t, hl_hash_utf8("format"), &hlt_i32);
    return i;
}

Vector2 vec2_from_dyn(vdynamic* t) {
    Vector2 v;
    v.x = hl_dyn_getf(t, hl_hash_utf8("x"));
    v.y = hl_dyn_getf(t, hl_hash_utf8("y"));
    return v;
}

// Window related functions
HL_PRIM void HL_NAME(init_window)(int width, int height, vstring* title) {
    InitWindow(width, height, hl_to_utf8(title->bytes));
}

HL_PRIM bool HL_NAME(window_should_close)() {
    return WindowShouldClose();
}

HL_PRIM void HL_NAME(close_window)() {
    CloseWindow();
}

HL_PRIM bool HL_NAME(is_window_read)() {
    return IsWindowReady();
}

HL_PRIM bool HL_NAME(is_window_fullscreen)() {
    return IsWindowFullscreen();
}

HL_PRIM bool HL_NAME(is_window_hidden)() {
    return IsWindowHidden();
}

HL_PRIM bool HL_NAME(is_window_minimized)() {
    return IsWindowMinimized();
}

HL_PRIM bool HL_NAME(is_window_maximized)() {
    return IsWindowMaximized();
}

HL_PRIM bool HL_NAME(is_window_focused)() {
    return IsWindowFocused();
}

HL_PRIM bool HL_NAME(is_window_resized)() {
    return IsWindowResized();
}

HL_PRIM bool HL_NAME(is_window_state)(int f) {
    return IsWindowState(f);
}

HL_PRIM void HL_NAME(set_window_state)(int f) {
    return SetWindowState(f);
}

HL_PRIM void HL_NAME(clear_window_state)(int f) {
    ClearWindowState(f);
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

HL_PRIM void HL_NAME(set_exit_key)(int k) {
    SetExitKey(k);
}

HL_PRIM float HL_NAME(get_frame_time)() {
    return GetFrameTime();
}

HL_PRIM void HL_NAME(draw_fps)(int x, int y) {
    DrawFPS(x, y);
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

HL_PRIM void HL_NAME(unload_texture)(vdynamic* t) {
    UnloadTexture(tex_from_dyn(t));
}

HL_PRIM void HL_NAME(draw_rectangle)(int x, int y, int width, int height, vdynamic* c) {
    DrawRectangle(x, y, width, height, col_from_dyn(c));
}

HL_PRIM void HL_NAME(draw_rectangle_rec)(vdynamic* r, vdynamic* c) {
    DrawRectangleRec(rec_from_dyn(r), col_from_dyn(c));
}

HL_PRIM void HL_NAME(draw_text)(vstring* t, int x, int y, int f, vdynamic* c) {
    DrawText(hl_to_utf8(t->bytes), x, y, f, col_from_dyn(c));
}

DEFINE_PRIM(_VOID, init_window, _I32 _I32 _DYN);
DEFINE_PRIM(_VOID, close_window, _NO_ARG);
DEFINE_PRIM(_BOOL, window_should_close, _NO_ARG);
DEFINE_PRIM(_I32, get_screen_width, _NO_ARG);
DEFINE_PRIM(_I32, get_screen_height, _NO_ARG);
DEFINE_PRIM(_I32, get_monitor_width, _I32);
DEFINE_PRIM(_I32, get_monitor_height, _I32);

DEFINE_PRIM(_VOID, begin_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, end_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, clear_background, _DYN);

DEFINE_PRIM(_VOID, set_trace_log_level, _I32);

DEFINE_PRIM(_VOID, set_exit_key, _I32);

DEFINE_PRIM(_VOID, set_target_fps, _I32);
DEFINE_PRIM(_F32, get_frame_time, _NO_ARG);
DEFINE_PRIM(_VOID, draw_fps, _I32 _I32);

DEFINE_PRIM(_DYN, load_texture, _STRING);
DEFINE_PRIM(_VOID, draw_texture, _DYN _I32 _I32 _DYN);
DEFINE_PRIM(_VOID, unload_texture, _DYN);

DEFINE_PRIM(_VOID, draw_rectangle, _I32 _I32 _I32 _I32 _DYN);
DEFINE_PRIM(_VOID, draw_rectangle_rec, _DYN _DYN);

DEFINE_PRIM(_VOID, draw_text, _STRING _I32 _I32 _I32 _DYN);