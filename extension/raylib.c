#if defined(_MSC_VER)
#define WIN32_LEAN_AND_MEAN
#define NOGDI
#define NOUSER
#endif

#define HL_NAME(n) raylib_##n

#include "include/hl.h"
#include "include/raylib.h"
#include "types.h"

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

HL_PRIM void HL_NAME(clear_background)(hl_color *c) {
    ClearBackground(color_from_hl(c));
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

HL_PRIM bool HL_NAME(is_key_down)(int k) {
    return IsKeyDown(k);
}

HL_PRIM bool HL_NAME(is_key_pressed)(int k) {
    return IsKeyPressed(k);
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

HL_PRIM void HL_NAME(load_texture)(vstring* f, hl_texture *t) {
    Texture tx = LoadTexture(hl_to_utf8(f->bytes));
    t->id = tx.id;
    t->width = tx.width;
    t->height = tx.height;
    t->mipmaps = tx.mipmaps;
    t->format = tx.format;
}

HL_PRIM void HL_NAME(draw_texture)(hl_texture *t, int x, int y, hl_color *c) {
    DrawTexture(texture_from_hl(t), x, y, color_from_hl(c));
}

HL_PRIM void HL_NAME(draw_texture_rec)(hl_texture *t, hl_rectangle *s, hl_vec2 *p, hl_color *c) {
    DrawTextureRec(texture_from_hl(t), rectangle_from_hl(s), vector2_from_hl(p), color_from_hl(c));
}

HL_PRIM void HL_NAME(unload_texture)(hl_texture *t) {
    UnloadTexture(texture_from_hl(t));
}

HL_PRIM void HL_NAME(draw_rectangle)(int x, int y, int width, int height, hl_color *c) {
    DrawRectangle(x, y, width, height, color_from_hl(c));
}

HL_PRIM void HL_NAME(draw_rectangle_rec)(hl_rectangle *rec, hl_color *c) {
    DrawRectangleRec(rectangle_from_hl(rec), color_from_hl(c));
}

HL_PRIM void HL_NAME(draw_text)(vstring* t, int x, int y, int f, hl_color *c) {
    DrawText(hl_to_utf8(t->bytes), x, y, f, color_from_hl(c));
}

DEFINE_PRIM(_VOID, init_window, _I32 _I32 _STRING);
DEFINE_PRIM(_VOID, close_window, _NO_ARG);
DEFINE_PRIM(_BOOL, window_should_close, _NO_ARG);
DEFINE_PRIM(_I32, get_screen_width, _NO_ARG);
DEFINE_PRIM(_I32, get_screen_height, _NO_ARG);
DEFINE_PRIM(_I32, get_monitor_width, _I32);
DEFINE_PRIM(_I32, get_monitor_height, _I32);

DEFINE_PRIM(_VOID, begin_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, end_drawing, _NO_ARG);
DEFINE_PRIM(_VOID, clear_background, _COLOR);

DEFINE_PRIM(_VOID, set_trace_log_level, _I32);

DEFINE_PRIM(_BOOL, is_key_down, _I32);
DEFINE_PRIM(_BOOL, is_key_pressed, _I32);
DEFINE_PRIM(_VOID, set_exit_key, _I32);

DEFINE_PRIM(_VOID, set_target_fps, _I32);
DEFINE_PRIM(_F32, get_frame_time, _NO_ARG);
DEFINE_PRIM(_VOID, draw_fps, _I32 _I32);

DEFINE_PRIM(_VOID, load_texture, _STRING _TEXTURE);
DEFINE_PRIM(_VOID, draw_texture, _TEXTURE _I32 _I32 _COLOR);
DEFINE_PRIM(_VOID, draw_texture_rec, _TEXTURE _RECTANGLE _VEC2 _COLOR);
DEFINE_PRIM(_VOID, unload_texture, _TEXTURE);

DEFINE_PRIM(_VOID, draw_rectangle, _I32 _I32 _I32 _I32 _COLOR);
DEFINE_PRIM(_VOID, draw_rectangle_rec, _RECTANGLE _COLOR);

DEFINE_PRIM(_VOID, draw_text, _STRING _I32 _I32 _I32 _COLOR);