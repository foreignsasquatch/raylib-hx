#include "include/hl.h"
#include "include/raylib.h"

#define _COLOR _OBJ(_I32 _I32 _I32 _I32)
#define _RECTANGLE _OBJ(_F32 _F32 _F32 _F32)
#define _TEXTURE _OBJ(_I32 _I32 _I32 _I32 _I32)
#define _VEC2 _OBJ(_F32 _F32)

typedef struct hl_color {
    hl_type *t;
    int r;
    int g;
    int b;
    int a;
} hl_color;

typedef struct hl_rectangle {
    hl_type *t;
    float x;                // Rectangle top-left corner position x
    float y;                // Rectangle top-left corner position y
    float width;            // Rectangle width
    float height;           // Rectangle height
} hl_rectangle;

typedef struct hl_texture {
    hl_type *t;
    int id;        // OpenGL texture id
    int width;              // Texture base width
    int height;             // Texture base height
    int mipmaps;            // Mipmap levels, 1 by default
    int format;             // Data format (PixelFormat type)
} hl_texture;

typedef struct hl_vec2 {
    hl_type *t;
    float x;
    float y;
} hl_vec2;

Color color_from_hl(hl_color *c) {
    return (Color){(unsigned char)c->r, (unsigned char)c->g, (unsigned char)c->b, (unsigned char)c->a};
}

Rectangle rectangle_from_hl(hl_rectangle *rec) {
    return (Rectangle){rec->x, rec->y, rec->width, rec->height};
}

Texture texture_from_hl(hl_texture *tex) {
    return (Texture){tex->id, tex->width, tex->height, tex->mipmaps, tex->format};
}

Vector2 vector2_from_hl(hl_vec2 *vec) {
    return (Vector2){vec->x, vec->y};
}