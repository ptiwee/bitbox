// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARprev6;
COMPAT_VARYING     vec2 VARprev5;
COMPAT_VARYING     vec2 VARprev4;
COMPAT_VARYING     vec2 VARprev3;
COMPAT_VARYING     vec2 VARprev2;
COMPAT_VARYING     vec2 VARprev1;
COMPAT_VARYING     vec2 VARprev;
COMPAT_VARYING     vec2 VARtex;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct previous {
float _placeholder59;
    vec2 _tex_coord;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct tex_coords {
    vec2 VARtex;
    vec2 VARprev;
    vec2 VARprev1;
    vec2 VARprev2;
    vec2 VARprev3;
    vec2 VARprev4;
    vec2 VARprev5;
    vec2 VARprev6;
};
vec4 _oPosition1;
tex_coords _coords1;
previous _PREV7;
previous _PREV11;
previous _PREV21;
previous _PREV31;
previous _PREV41;
previous _PREV51;
previous _PREV61;
vec4 _r0013;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
COMPAT_ATTRIBUTE vec2 Prev6TexCoord;
COMPAT_ATTRIBUTE vec2 Prev5TexCoord;
COMPAT_ATTRIBUTE vec2 Prev4TexCoord;
COMPAT_ATTRIBUTE vec2 Prev3TexCoord;
COMPAT_ATTRIBUTE vec2 Prev2TexCoord;
COMPAT_ATTRIBUTE vec2 Prev1TexCoord;
COMPAT_ATTRIBUTE vec2 PrevTexCoord;
void main()
{
    _r0013 = VertexCoord.x*MVPMatrix[0];
    _r0013 = _r0013 + VertexCoord.y*MVPMatrix[1];
    _r0013 = _r0013 + VertexCoord.z*MVPMatrix[2];
    _r0013 = _r0013 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0013;
    VARtex = TexCoord.xy;
    VARprev = PrevTexCoord;
    VARprev1 = Prev1TexCoord;
    VARprev2 = Prev2TexCoord;
    VARprev3 = Prev3TexCoord;
    VARprev4 = Prev4TexCoord;
    VARprev5 = Prev5TexCoord;
    VARprev6 = Prev6TexCoord;
    gl_Position = _r0013;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARprev6;
COMPAT_VARYING     vec2 VARprev5;
COMPAT_VARYING     vec2 VARprev4;
COMPAT_VARYING     vec2 VARprev3;
COMPAT_VARYING     vec2 VARprev2;
COMPAT_VARYING     vec2 VARprev1;
COMPAT_VARYING     vec2 VARprev;
COMPAT_VARYING     vec2 VARtex;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 VARtex_coord;
struct previous {
float _placeholder48;
    vec2 VARtex_coord;
};
struct input_dummy {
    vec2 _video_size;
    vec2 VARtexture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct tex_coords {
    vec2 VARtex;
    vec2 VARprev;
    vec2 VARprev1;
    vec2 VARprev2;
    vec2 VARprev3;
    vec2 VARprev4;
    vec2 VARprev5;
    vec2 VARprev6;
};
vec4 _TMP6;
vec4 _TMP14;
vec4 _TMP11;
float _TMP13;
vec4 _TMP9;
vec4 _TMP7;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
tex_coords _coords1;
previous _PREV7;
previous _PREV11;
float _x0042;
float _TMP43;
float _x0052;
float _TMP53;
float _x0062;
float _TMP63;
vec4 _x0070;
vec4 _TMP71;
 
uniform sampler2D Prev6Texture;
uniform sampler2D Prev5Texture;
uniform sampler2D Prev4Texture;
uniform sampler2D Prev3Texture;
uniform sampler2D Prev2Texture;
uniform sampler2D Prev1Texture;
uniform sampler2D PrevTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _red_result;
    float _green_result;
    float _blue_result;
    _TMP0 = COMPAT_TEXTURE(PrevTexture, VARprev);
    _TMP1 = COMPAT_TEXTURE(Prev1Texture, VARprev1);
    _red_result = _TMP0.x + _TMP1.x;
    _TMP2 = COMPAT_TEXTURE(PrevTexture, VARprev);
    _TMP3 = COMPAT_TEXTURE(Prev1Texture, VARprev1);
    _green_result = _TMP2.y + _TMP3.y;
    _TMP4 = COMPAT_TEXTURE(PrevTexture, VARprev);
    _TMP5 = COMPAT_TEXTURE(Prev1Texture, VARprev1);
    _blue_result = _TMP4.z + _TMP5.z;
    _TMP6 = COMPAT_TEXTURE(Texture, VARtex);
    _TMP7 = COMPAT_TEXTURE(Texture, VARtex);
    _x0042 = _red_result - 7.00000000E+00*_TMP7.x;
    _TMP13 = min(1.00000000E+00, _x0042);
    _TMP43 = max(0.00000000E+00, _TMP13);
    _TMP9 = COMPAT_TEXTURE(Texture, VARtex);
    _x0052 = _green_result - 7.00000000E+00*_TMP9.y;
    _TMP13 = min(1.00000000E+00, _x0052);
    _TMP53 = max(0.00000000E+00, _TMP13);
    _TMP11 = COMPAT_TEXTURE(Texture, VARtex);
    _x0062 = _blue_result - 7.00000000E+00*_TMP11.z;
    _TMP13 = min(1.00000000E+00, _x0062);
    _TMP63 = max(0.00000000E+00, _TMP13);
    _x0070 = _TMP6 + 4.00000006E-01*vec4(_TMP43, _TMP53, _TMP63, 1.00000000E+00);
    _TMP14 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0070);
    _TMP71 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP14);
    FragColor = _TMP71;
    return;
} 
#endif
