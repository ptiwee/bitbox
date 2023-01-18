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
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord;
};
out_vertex _ret_0;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord = TexCoord.xy;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord;
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
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
};
vec4 _ret_0;
float _TMP110;
float _TMP106;
float _TMP109;
float _TMP108;
float _TMP107;
float _TMP105;
float _TMP104;
float _TMP103;
float _TMP102;
float _TMP101;
float _TMP100;
float _TMP99;
float _TMP98;
float _TMP97;
float _TMP96;
float _TMP95;
float _TMP94;
float _TMP93;
float _TMP92;
float _TMP91;
float _TMP90;
float _TMP89;
float _TMP88;
float _TMP87;
float _TMP86;
float _TMP85;
float _TMP84;
float _TMP83;
float _TMP82;
float _TMP81;
float _TMP80;
float _TMP79;
float _TMP78;
float _TMP77;
float _TMP76;
float _TMP75;
float _TMP74;
float _TMP73;
float _TMP72;
float _TMP71;
float _TMP70;
float _TMP69;
float _TMP68;
float _TMP67;
float _TMP66;
float _TMP65;
float _TMP112;
float _TMP40;
float _TMP39;
float _TMP38;
vec3 _TMP37;
vec3 _TMP36;
vec3 _TMP35;
vec3 _TMP34;
vec3 _TMP33;
vec3 _TMP32;
vec3 _TMP31;
vec3 _TMP30;
vec3 _TMP29;
vec3 _TMP28;
vec3 _TMP27;
vec3 _TMP26;
vec3 _TMP25;
vec4 _TMP24;
vec3 _TMP111;
vec4 _TMP23;
vec4 _TMP22;
vec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0118;
vec3 _TMP121;
vec2 _c0128;
vec3 _TMP131;
vec2 _c0138;
vec3 _TMP141;
vec2 _c0148;
vec3 _TMP151;
vec2 _c0158;
vec3 _TMP161;
vec2 _c0168;
vec3 _TMP171;
vec2 _c0178;
vec3 _TMP181;
vec2 _c0188;
vec3 _TMP191;
vec2 _c0198;
vec3 _TMP201;
vec2 _c0208;
vec3 _TMP211;
vec2 _c0218;
vec3 _TMP221;
vec2 _c0228;
vec3 _TMP231;
vec3 _TMP241;
vec2 _c0248;
vec3 _TMP251;
vec2 _c0258;
vec3 _TMP261;
vec2 _c0268;
vec3 _TMP271;
vec2 _c0278;
vec3 _TMP281;
vec2 _c0288;
vec3 _TMP291;
vec2 _c0298;
vec3 _TMP301;
vec2 _c0308;
vec3 _TMP311;
vec2 _c0318;
vec3 _TMP321;
vec2 _c0328;
vec3 _TMP331;
vec2 _c0338;
vec3 _TMP341;
vec2 _c0348;
vec3 _TMP351;
vec2 _c0358;
vec3 _TMP361;
vec3 _a0368;
vec3 _a0370;
vec3 _a0372;
vec3 _a0374;
vec3 _a0376;
vec3 _a0378;
vec3 _a0380;
vec3 _a0382;
vec3 _a0384;
vec3 _a0386;
vec3 _a0388;
vec3 _a0390;
vec3 _a0392;
vec3 _a0394;
float _y0396;
float _a0398;
float _TMP399;
float _a0402;
float _TMP405;
float _a0408;
float _TMP411;
float _a0414;
float _TMP417;
float _a0420;
float _TMP423;
float _a0426;
float _TMP429;
float _a0432;
float _TMP435;
float _a0438;
float _TMP441;
float _a0444;
float _TMP447;
float _a0450;
float _TMP453;
float _a0456;
float _TMP459;
float _a0462;
float _TMP465;
float _a0468;
float _TMP471;
float _a0474;
float _TMP477;
float _a0480;
float _TMP483;
float _a0486;
float _TMP489;
float _a0492;
float _TMP495;
float _a0498;
float _TMP501;
float _a0504;
float _TMP507;
float _a0510;
float _TMP513;
float _a0516;
float _TMP519;
float _a0522;
float _TMP525;
float _a0528;
float _TMP531;
float _a0534;
float _TMP537;
float _a0540;
float _TMP543;
float _a0546;
float _a0550;
float _a0552;
float _a0554;
float _a0556;
float _a0558;
float _a0560;
float _a0562;
float _a0564;
float _a0566;
float _a0568;
float _a0570;
float _a0572;
float _a0574;
float _a0576;
float _a0578;
float _a0580;
float _a0582;
float _a0584;
float _a0586;
float _a0588;
float _a0590;
float _a0592;
float _a0594;
float _a0596;
float _a0598;
float _a0600;
float _a0602;
float _a0604;
float _a0606;
float _a0608;
float _a0610;
float _a0612;
float _a0614;
float _a0616;
float _a0618;
float _a0620;
float _x0624;
float _a0634;
float _a0636;
float _a0638;
float _a0640;
float _x0644;
float _TMP645;
float _x0646;
float _a0652;
float _x0656;
float _TMP657;
float _x0658;
float _a0664;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _px;
    float _py;
    vec3 _blur;
    float _blur_Y;
    float _edge;
    float _kernel[25];
    float _mdiff_c0;
    float _mdiff_c9;
    float _mdiff_c10;
    float _mdiff_c11;
    float _mdiff_c12;
    vec4 _weights;
    float _neg_laplace;
    float _sharpen_val;
    float _sharpdiff;
    float _temp1;
    float _temp2;
    float _nmax;
    float _nmin;
    float _nmax_scale;
    float _nmin_scale;
    _px = 1.00000000E+00/TextureSize.x;
    _py = 1.00000000E+00/TextureSize.y;
    _c0118 = TEX0.xy + vec2(-3.00000000E+00*_px, 0.00000000E+00);
    _TMP0 = COMPAT_TEXTURE(Texture, _c0118);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP0.xyz);
    _TMP121 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0128 = TEX0.xy + vec2(-2.00000000E+00*_px, -_py);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0128);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP1.xyz);
    _TMP131 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0138 = TEX0.xy + vec2(-2.00000000E+00*_px, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0138);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP2.xyz);
    _TMP141 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0148 = TEX0.xy + vec2(-2.00000000E+00*_px, _py);
    _TMP3 = COMPAT_TEXTURE(Texture, _c0148);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP3.xyz);
    _TMP151 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0158 = TEX0.xy + vec2(-_px, -2.00000000E+00*_py);
    _TMP4 = COMPAT_TEXTURE(Texture, _c0158);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP4.xyz);
    _TMP161 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0168 = TEX0.xy + vec2(-_px, -_py);
    _TMP5 = COMPAT_TEXTURE(Texture, _c0168);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP5.xyz);
    _TMP171 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0178 = TEX0.xy + vec2(-_px, 0.00000000E+00);
    _TMP6 = COMPAT_TEXTURE(Texture, _c0178);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP6.xyz);
    _TMP181 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0188 = TEX0.xy + vec2(-_px, _py);
    _TMP7 = COMPAT_TEXTURE(Texture, _c0188);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP7.xyz);
    _TMP191 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0198 = TEX0.xy + vec2(-_px, 2.00000000E+00*_py);
    _TMP8 = COMPAT_TEXTURE(Texture, _c0198);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP8.xyz);
    _TMP201 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0208 = TEX0.xy + vec2(0.00000000E+00, -3.00000000E+00*_py);
    _TMP9 = COMPAT_TEXTURE(Texture, _c0208);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP9.xyz);
    _TMP211 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0218 = TEX0.xy + vec2(0.00000000E+00, -2.00000000E+00*_py);
    _TMP10 = COMPAT_TEXTURE(Texture, _c0218);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP10.xyz);
    _TMP221 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0228 = TEX0.xy + vec2(0.00000000E+00, -_py);
    _TMP11 = COMPAT_TEXTURE(Texture, _c0228);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP11.xyz);
    _TMP231 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP12.xyz);
    _TMP241 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0248 = TEX0.xy + vec2(0.00000000E+00, _py);
    _TMP13 = COMPAT_TEXTURE(Texture, _c0248);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP13.xyz);
    _TMP251 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0258 = TEX0.xy + vec2(0.00000000E+00, 2.00000000E+00*_py);
    _TMP14 = COMPAT_TEXTURE(Texture, _c0258);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP14.xyz);
    _TMP261 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0268 = TEX0.xy + vec2(0.00000000E+00, 3.00000000E+00*_py);
    _TMP15 = COMPAT_TEXTURE(Texture, _c0268);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP15.xyz);
    _TMP271 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0278 = TEX0.xy + vec2(_px, -2.00000000E+00*_py);
    _TMP16 = COMPAT_TEXTURE(Texture, _c0278);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP16.xyz);
    _TMP281 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0288 = TEX0.xy + vec2(_px, -_py);
    _TMP17 = COMPAT_TEXTURE(Texture, _c0288);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP17.xyz);
    _TMP291 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0298 = TEX0.xy + vec2(_px, 0.00000000E+00);
    _TMP18 = COMPAT_TEXTURE(Texture, _c0298);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP18.xyz);
    _TMP301 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0308 = TEX0.xy + vec2(_px, _py);
    _TMP19 = COMPAT_TEXTURE(Texture, _c0308);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP19.xyz);
    _TMP311 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0318 = TEX0.xy + vec2(_px, 2.00000000E+00*_py);
    _TMP20 = COMPAT_TEXTURE(Texture, _c0318);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP20.xyz);
    _TMP321 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0328 = TEX0.xy + vec2(2.00000000E+00*_px, -_py);
    _TMP21 = COMPAT_TEXTURE(Texture, _c0328);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP21.xyz);
    _TMP331 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0338 = TEX0.xy + vec2(2.00000000E+00*_px, 0.00000000E+00);
    _TMP22 = COMPAT_TEXTURE(Texture, _c0338);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP22.xyz);
    _TMP341 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0348 = TEX0.xy + vec2(2.00000000E+00*_px, _py);
    _TMP23 = COMPAT_TEXTURE(Texture, _c0348);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP23.xyz);
    _TMP351 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _c0358 = TEX0.xy + vec2(3.00000000E+00*_px, 0.00000000E+00);
    _TMP24 = COMPAT_TEXTURE(Texture, _c0358);
    _TMP111 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP24.xyz);
    _TMP361 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP111);
    _blur = (2.00000000E+00*(_TMP231 + _TMP181 + _TMP301 + _TMP251) + _TMP171 + _TMP291 + _TMP191 + _TMP311 + 4.00000000E+00*_TMP241)/1.60000000E+01;
    _blur_Y = _blur.x*3.33333343E-01 + _blur.y*3.33333343E-01 + _blur.z*3.33333343E-01;
    _a0368 = _blur - _TMP241;
    _TMP25 = abs(_a0368);
    _a0370 = _blur - _TMP171;
    _TMP26 = abs(_a0370);
    _a0372 = _blur - _TMP231;
    _TMP27 = abs(_a0372);
    _a0374 = _blur - _TMP291;
    _TMP28 = abs(_a0374);
    _a0376 = _blur - _TMP181;
    _TMP29 = abs(_a0376);
    _a0378 = _blur - _TMP301;
    _TMP30 = abs(_a0378);
    _a0380 = _blur - _TMP191;
    _TMP31 = abs(_a0380);
    _a0382 = _blur - _TMP251;
    _TMP32 = abs(_a0382);
    _a0384 = _blur - _TMP311;
    _TMP33 = abs(_a0384);
    _a0386 = _blur - _TMP221;
    _TMP34 = abs(_a0386);
    _a0388 = _blur - _TMP141;
    _TMP35 = abs(_a0388);
    _a0390 = _blur - _TMP341;
    _TMP36 = abs(_a0390);
    _a0392 = _blur - _TMP261;
    _TMP37 = abs(_a0392);
    _a0394 = _TMP25 + _TMP26 + _TMP27 + _TMP28 + _TMP29 + _TMP30 + _TMP31 + _TMP32 + _TMP33 + 2.50000000E-01*(_TMP34 + _TMP35 + _TMP36 + _TMP37);
    _TMP38 = length(_a0394);
    _edge = _TMP38*3.33333343E-01;
    _y0396 = -7.40000010E+00*_blur_Y;
    _TMP39 = pow(2.00000000E+00, _y0396);
    _a0398 = 8.00000012E-01 + 2.70000005E+00*_TMP39;
    _TMP40 = min(_a0398, 3.20000005E+00);
    _edge = _edge*_TMP40;
    _a0402 = 3.33333343E-01*((_TMP241*_TMP241).x + (_TMP241*_TMP241).y + (_TMP241*_TMP241).z);
    _TMP112 = inversesqrt(_a0402);
    _TMP399 = 1.00000000E+00/_TMP112;
    _a0408 = 3.33333343E-01*((_TMP171*_TMP171).x + (_TMP171*_TMP171).y + (_TMP171*_TMP171).z);
    _TMP112 = inversesqrt(_a0408);
    _TMP405 = 1.00000000E+00/_TMP112;
    _a0414 = 3.33333343E-01*((_TMP231*_TMP231).x + (_TMP231*_TMP231).y + (_TMP231*_TMP231).z);
    _TMP112 = inversesqrt(_a0414);
    _TMP411 = 1.00000000E+00/_TMP112;
    _a0420 = 3.33333343E-01*((_TMP291*_TMP291).x + (_TMP291*_TMP291).y + (_TMP291*_TMP291).z);
    _TMP112 = inversesqrt(_a0420);
    _TMP417 = 1.00000000E+00/_TMP112;
    _a0426 = 3.33333343E-01*((_TMP181*_TMP181).x + (_TMP181*_TMP181).y + (_TMP181*_TMP181).z);
    _TMP112 = inversesqrt(_a0426);
    _TMP423 = 1.00000000E+00/_TMP112;
    _a0432 = 3.33333343E-01*((_TMP301*_TMP301).x + (_TMP301*_TMP301).y + (_TMP301*_TMP301).z);
    _TMP112 = inversesqrt(_a0432);
    _TMP429 = 1.00000000E+00/_TMP112;
    _a0438 = 3.33333343E-01*((_TMP191*_TMP191).x + (_TMP191*_TMP191).y + (_TMP191*_TMP191).z);
    _TMP112 = inversesqrt(_a0438);
    _TMP435 = 1.00000000E+00/_TMP112;
    _a0444 = 3.33333343E-01*((_TMP251*_TMP251).x + (_TMP251*_TMP251).y + (_TMP251*_TMP251).z);
    _TMP112 = inversesqrt(_a0444);
    _TMP441 = 1.00000000E+00/_TMP112;
    _a0450 = 3.33333343E-01*((_TMP311*_TMP311).x + (_TMP311*_TMP311).y + (_TMP311*_TMP311).z);
    _TMP112 = inversesqrt(_a0450);
    _TMP447 = 1.00000000E+00/_TMP112;
    _a0456 = 3.33333343E-01*((_TMP221*_TMP221).x + (_TMP221*_TMP221).y + (_TMP221*_TMP221).z);
    _TMP112 = inversesqrt(_a0456);
    _TMP453 = 1.00000000E+00/_TMP112;
    _a0462 = 3.33333343E-01*((_TMP141*_TMP141).x + (_TMP141*_TMP141).y + (_TMP141*_TMP141).z);
    _TMP112 = inversesqrt(_a0462);
    _TMP459 = 1.00000000E+00/_TMP112;
    _a0468 = 3.33333343E-01*((_TMP341*_TMP341).x + (_TMP341*_TMP341).y + (_TMP341*_TMP341).z);
    _TMP112 = inversesqrt(_a0468);
    _TMP465 = 1.00000000E+00/_TMP112;
    _a0474 = 3.33333343E-01*((_TMP261*_TMP261).x + (_TMP261*_TMP261).y + (_TMP261*_TMP261).z);
    _TMP112 = inversesqrt(_a0474);
    _TMP471 = 1.00000000E+00/_TMP112;
    _a0480 = 3.33333343E-01*((_TMP271*_TMP271).x + (_TMP271*_TMP271).y + (_TMP271*_TMP271).z);
    _TMP112 = inversesqrt(_a0480);
    _TMP477 = 1.00000000E+00/_TMP112;
    _a0486 = 3.33333343E-01*((_TMP321*_TMP321).x + (_TMP321*_TMP321).y + (_TMP321*_TMP321).z);
    _TMP112 = inversesqrt(_a0486);
    _TMP483 = 1.00000000E+00/_TMP112;
    _a0492 = 3.33333343E-01*((_TMP201*_TMP201).x + (_TMP201*_TMP201).y + (_TMP201*_TMP201).z);
    _TMP112 = inversesqrt(_a0492);
    _TMP489 = 1.00000000E+00/_TMP112;
    _a0498 = 3.33333343E-01*((_TMP361*_TMP361).x + (_TMP361*_TMP361).y + (_TMP361*_TMP361).z);
    _TMP112 = inversesqrt(_a0498);
    _TMP495 = 1.00000000E+00/_TMP112;
    _a0504 = 3.33333343E-01*((_TMP351*_TMP351).x + (_TMP351*_TMP351).y + (_TMP351*_TMP351).z);
    _TMP112 = inversesqrt(_a0504);
    _TMP501 = 1.00000000E+00/_TMP112;
    _a0510 = 3.33333343E-01*((_TMP331*_TMP331).x + (_TMP331*_TMP331).y + (_TMP331*_TMP331).z);
    _TMP112 = inversesqrt(_a0510);
    _TMP507 = 1.00000000E+00/_TMP112;
    _a0516 = 3.33333343E-01*((_TMP121*_TMP121).x + (_TMP121*_TMP121).y + (_TMP121*_TMP121).z);
    _TMP112 = inversesqrt(_a0516);
    _TMP513 = 1.00000000E+00/_TMP112;
    _a0522 = 3.33333343E-01*((_TMP151*_TMP151).x + (_TMP151*_TMP151).y + (_TMP151*_TMP151).z);
    _TMP112 = inversesqrt(_a0522);
    _TMP519 = 1.00000000E+00/_TMP112;
    _a0528 = 3.33333343E-01*((_TMP131*_TMP131).x + (_TMP131*_TMP131).y + (_TMP131*_TMP131).z);
    _TMP112 = inversesqrt(_a0528);
    _TMP525 = 1.00000000E+00/_TMP112;
    _a0534 = 3.33333343E-01*((_TMP211*_TMP211).x + (_TMP211*_TMP211).y + (_TMP211*_TMP211).z);
    _TMP112 = inversesqrt(_a0534);
    _TMP531 = 1.00000000E+00/_TMP112;
    _a0540 = 3.33333343E-01*((_TMP281*_TMP281).x + (_TMP281*_TMP281).y + (_TMP281*_TMP281).z);
    _TMP112 = inversesqrt(_a0540);
    _TMP537 = 1.00000000E+00/_TMP112;
    _a0546 = 3.33333343E-01*((_TMP161*_TMP161).x + (_TMP161*_TMP161).y + (_TMP161*_TMP161).z);
    _TMP112 = inversesqrt(_a0546);
    _TMP543 = 1.00000000E+00/_TMP112;
    _a0550 = _TMP399 - _TMP411;
    _TMP65 = abs(_a0550);
    _a0552 = _TMP399 - _TMP423;
    _TMP66 = abs(_a0552);
    _a0554 = _TMP399 - _TMP429;
    _TMP67 = abs(_a0554);
    _a0556 = _TMP399 - _TMP441;
    _TMP68 = abs(_a0556);
    _a0558 = _TMP399 - _TMP405;
    _TMP69 = abs(_a0558);
    _a0560 = _TMP399 - _TMP417;
    _TMP70 = abs(_a0560);
    _a0562 = _TMP399 - _TMP435;
    _TMP71 = abs(_a0562);
    _a0564 = _TMP399 - _TMP447;
    _TMP72 = abs(_a0564);
    _mdiff_c0 = 2.99999993E-02 + 4.00000000E+00*(_TMP65 + _TMP66 + _TMP67 + _TMP68 + 2.50000000E-01*(_TMP69 + _TMP70 + _TMP71 + _TMP72));
    _a0566 = _TMP453 - _TMP411;
    _TMP73 = abs(_a0566);
    _a0568 = _TMP453 - _TMP543;
    _TMP74 = abs(_a0568);
    _a0570 = _TMP453 - _TMP537;
    _TMP75 = abs(_a0570);
    _a0572 = _TMP453 - _TMP531;
    _TMP76 = abs(_a0572);
    _a0574 = _TMP453 - _TMP405;
    _TMP77 = abs(_a0574);
    _a0576 = _TMP453 - _TMP417;
    _TMP78 = abs(_a0576);
    _mdiff_c9 = _TMP73 + _TMP74 + _TMP75 + _TMP76 + 5.00000000E-01*(_TMP77 + _TMP78);
    _a0578 = _TMP459 - _TMP519;
    _TMP79 = abs(_a0578);
    _a0580 = _TMP459 - _TMP513;
    _TMP80 = abs(_a0580);
    _a0582 = _TMP459 - _TMP525;
    _TMP81 = abs(_a0582);
    _a0584 = _TMP459 - _TMP423;
    _TMP82 = abs(_a0584);
    _a0586 = _TMP459 - _TMP405;
    _TMP83 = abs(_a0586);
    _a0588 = _TMP459 - _TMP435;
    _TMP84 = abs(_a0588);
    _mdiff_c10 = _TMP79 + _TMP80 + _TMP81 + _TMP82 + 5.00000000E-01*(_TMP83 + _TMP84);
    _a0590 = _TMP465 - _TMP501;
    _TMP85 = abs(_a0590);
    _a0592 = _TMP465 - _TMP429;
    _TMP86 = abs(_a0592);
    _a0594 = _TMP465 - _TMP507;
    _TMP87 = abs(_a0594);
    _a0596 = _TMP465 - _TMP495;
    _TMP88 = abs(_a0596);
    _a0598 = _TMP465 - _TMP417;
    _TMP89 = abs(_a0598);
    _a0600 = _TMP465 - _TMP447;
    _TMP90 = abs(_a0600);
    _mdiff_c11 = _TMP85 + _TMP86 + _TMP87 + _TMP88 + 5.00000000E-01*(_TMP89 + _TMP90);
    _a0602 = _TMP471 - _TMP477;
    _TMP91 = abs(_a0602);
    _a0604 = _TMP471 - _TMP489;
    _TMP92 = abs(_a0604);
    _a0606 = _TMP471 - _TMP441;
    _TMP93 = abs(_a0606);
    _a0608 = _TMP471 - _TMP483;
    _TMP94 = abs(_a0608);
    _a0610 = _TMP471 - _TMP435;
    _TMP95 = abs(_a0610);
    _a0612 = _TMP471 - _TMP447;
    _TMP96 = abs(_a0612);
    _mdiff_c12 = _TMP91 + _TMP92 + _TMP93 + _TMP94 + 5.00000000E-01*(_TMP95 + _TMP96);
    _a0614 = _mdiff_c0/_mdiff_c9;
    _TMP97 = min(_a0614, 2.00000000E+00);
    _a0616 = _mdiff_c0/_mdiff_c10;
    _TMP98 = min(_a0616, 2.00000000E+00);
    _a0618 = _mdiff_c0/_mdiff_c11;
    _TMP99 = min(_a0618, 2.00000000E+00);
    _a0620 = _mdiff_c0/_mdiff_c12;
    _TMP100 = min(_a0620, 2.00000000E+00);
    _weights = vec4(_TMP97, _TMP98, _TMP99, _TMP100);
    _neg_laplace = (2.50000000E-01*(_TMP411 + _TMP423 + _TMP429 + _TMP441) + _TMP405 + _TMP417 + _TMP435 + _TMP447 + _TMP453*_weights.x + _TMP459*_weights.y + _TMP465*_weights.z + _TMP471*_weights.w)/(5.00000000E+00 + _weights.x + _weights.y + _weights.z + _weights.w);
    _TMP101 = pow(_edge, 3.50000000E+00);
    _x0624 = _edge*2.20000005E+00;
    _TMP102 = pow(_x0624, 4.50000000E+00);
    _sharpen_val = (9.99999978E-03 + 1.00000000E+00/(1.50000000E+00*_TMP101 + 5.00000000E-01)) - 1.00000000E+00/(8.19200000E+03*_TMP102 + 5.00000000E-01);
    _sharpdiff = (_TMP399 - _neg_laplace)*_sharpen_val*8.00000012E-01;
    _kernel[0] = min(_TMP399, _TMP405);
    _kernel[1] = max(_TMP399, _TMP405);
    _temp1 = _kernel[1];
    _kernel[1] = min(_kernel[1], _TMP411);
    _kernel[2] = max(_temp1, _TMP411);
    _temp1 = _kernel[2];
    _kernel[2] = min(_kernel[2], _TMP417);
    _kernel[3] = max(_temp1, _TMP417);
    _temp1 = _kernel[3];
    _kernel[3] = min(_kernel[3], _TMP423);
    _kernel[4] = max(_temp1, _TMP423);
    _temp1 = _kernel[4];
    _kernel[4] = min(_kernel[4], _TMP429);
    _kernel[5] = max(_temp1, _TMP429);
    _temp1 = _kernel[5];
    _kernel[5] = min(_kernel[5], _TMP435);
    _kernel[6] = max(_temp1, _TMP435);
    _temp1 = _kernel[6];
    _kernel[6] = min(_kernel[6], _TMP441);
    _kernel[7] = max(_temp1, _TMP441);
    _temp1 = _kernel[7];
    _kernel[7] = min(_kernel[7], _TMP447);
    _kernel[8] = max(_temp1, _TMP447);
    _temp1 = _kernel[8];
    _kernel[8] = min(_kernel[8], _TMP453);
    _kernel[9] = max(_temp1, _TMP453);
    _temp1 = _kernel[9];
    _kernel[9] = min(_kernel[9], _TMP459);
    _kernel[10] = max(_temp1, _TMP459);
    _temp1 = _kernel[10];
    _kernel[10] = min(_kernel[10], _TMP465);
    _kernel[11] = max(_temp1, _TMP465);
    _temp1 = _kernel[11];
    _kernel[11] = min(_kernel[11], _TMP471);
    _kernel[12] = max(_temp1, _TMP471);
    _temp1 = _kernel[12];
    _kernel[12] = min(_kernel[12], _TMP477);
    _kernel[13] = max(_temp1, _TMP477);
    _temp1 = _kernel[13];
    _kernel[13] = min(_kernel[13], _TMP483);
    _kernel[14] = max(_temp1, _TMP483);
    _temp1 = _kernel[14];
    _kernel[14] = min(_kernel[14], _TMP489);
    _kernel[15] = max(_temp1, _TMP489);
    _temp1 = _kernel[15];
    _kernel[15] = min(_kernel[15], _TMP495);
    _kernel[16] = max(_temp1, _TMP495);
    _temp1 = _kernel[16];
    _kernel[16] = min(_kernel[16], _TMP501);
    _kernel[17] = max(_temp1, _TMP501);
    _temp1 = _kernel[17];
    _kernel[17] = min(_kernel[17], _TMP507);
    _kernel[18] = max(_temp1, _TMP507);
    _temp1 = _kernel[18];
    _kernel[18] = min(_kernel[18], _TMP513);
    _kernel[19] = max(_temp1, _TMP513);
    _temp1 = _kernel[19];
    _kernel[19] = min(_kernel[19], _TMP519);
    _kernel[20] = max(_temp1, _TMP519);
    _temp1 = _kernel[20];
    _kernel[20] = min(_kernel[20], _TMP525);
    _kernel[21] = max(_temp1, _TMP525);
    _temp1 = _kernel[21];
    _kernel[21] = min(_kernel[21], _TMP531);
    _kernel[22] = max(_temp1, _TMP531);
    _temp1 = _kernel[22];
    _kernel[22] = min(_kernel[22], _TMP537);
    _kernel[23] = max(_temp1, _TMP537);
    _temp1 = _kernel[23];
    _kernel[23] = min(_kernel[23], _TMP543);
    _kernel[24] = max(_temp1, _TMP543);
    _temp2 = _kernel[22];
    _kernel[22] = min(_kernel[22], _kernel[23]);
    _kernel[23] = max(_temp2, _kernel[23]);
    _temp2 = _kernel[21];
    _kernel[21] = min(_kernel[21], _kernel[22]);
    _kernel[22] = max(_temp2, _kernel[22]);
    _temp2 = _kernel[20];
    _kernel[20] = min(_kernel[20], _kernel[21]);
    _kernel[21] = max(_temp2, _kernel[21]);
    _temp2 = _kernel[19];
    _kernel[19] = min(_kernel[19], _kernel[20]);
    _kernel[20] = max(_temp2, _kernel[20]);
    _temp2 = _kernel[18];
    _kernel[18] = min(_kernel[18], _kernel[19]);
    _kernel[19] = max(_temp2, _kernel[19]);
    _temp2 = _kernel[17];
    _kernel[17] = min(_kernel[17], _kernel[18]);
    _kernel[18] = max(_temp2, _kernel[18]);
    _temp2 = _kernel[16];
    _kernel[16] = min(_kernel[16], _kernel[17]);
    _kernel[17] = max(_temp2, _kernel[17]);
    _temp2 = _kernel[15];
    _kernel[15] = min(_kernel[15], _kernel[16]);
    _kernel[16] = max(_temp2, _kernel[16]);
    _temp2 = _kernel[14];
    _kernel[14] = min(_kernel[14], _kernel[15]);
    _kernel[15] = max(_temp2, _kernel[15]);
    _temp2 = _kernel[13];
    _kernel[13] = min(_kernel[13], _kernel[14]);
    _kernel[14] = max(_temp2, _kernel[14]);
    _temp2 = _kernel[12];
    _kernel[12] = min(_kernel[12], _kernel[13]);
    _kernel[13] = max(_temp2, _kernel[13]);
    _temp2 = _kernel[11];
    _kernel[11] = min(_kernel[11], _kernel[12]);
    _kernel[12] = max(_temp2, _kernel[12]);
    _temp2 = _kernel[10];
    _kernel[10] = min(_kernel[10], _kernel[11]);
    _kernel[11] = max(_temp2, _kernel[11]);
    _temp2 = _kernel[9];
    _kernel[9] = min(_kernel[9], _kernel[10]);
    _kernel[10] = max(_temp2, _kernel[10]);
    _temp2 = _kernel[8];
    _kernel[8] = min(_kernel[8], _kernel[9]);
    _kernel[9] = max(_temp2, _kernel[9]);
    _temp2 = _kernel[7];
    _kernel[7] = min(_kernel[7], _kernel[8]);
    _kernel[8] = max(_temp2, _kernel[8]);
    _temp2 = _kernel[6];
    _kernel[6] = min(_kernel[6], _kernel[7]);
    _kernel[7] = max(_temp2, _kernel[7]);
    _temp2 = _kernel[5];
    _kernel[5] = min(_kernel[5], _kernel[6]);
    _kernel[6] = max(_temp2, _kernel[6]);
    _temp2 = _kernel[4];
    _kernel[4] = min(_kernel[4], _kernel[5]);
    _kernel[5] = max(_temp2, _kernel[5]);
    _temp2 = _kernel[3];
    _kernel[3] = min(_kernel[3], _kernel[4]);
    _kernel[4] = max(_temp2, _kernel[4]);
    _temp2 = _kernel[2];
    _kernel[2] = min(_kernel[2], _kernel[3]);
    _kernel[3] = max(_temp2, _kernel[3]);
    _temp2 = _kernel[1];
    _kernel[1] = min(_kernel[1], _kernel[2]);
    _kernel[2] = max(_temp2, _kernel[2]);
    _temp2 = _kernel[0];
    _kernel[0] = min(_kernel[0], _kernel[1]);
    _kernel[1] = max(_temp2, _kernel[1]);
    _temp1 = _kernel[1];
    _kernel[1] = min(_kernel[1], _kernel[2]);
    _kernel[2] = max(_temp1, _kernel[2]);
    _temp1 = _kernel[2];
    _kernel[2] = min(_kernel[2], _kernel[3]);
    _kernel[3] = max(_temp1, _kernel[3]);
    _temp1 = _kernel[3];
    _kernel[3] = min(_kernel[3], _kernel[4]);
    _kernel[4] = max(_temp1, _kernel[4]);
    _temp1 = _kernel[4];
    _kernel[4] = min(_kernel[4], _kernel[5]);
    _kernel[5] = max(_temp1, _kernel[5]);
    _temp1 = _kernel[5];
    _kernel[5] = min(_kernel[5], _kernel[6]);
    _kernel[6] = max(_temp1, _kernel[6]);
    _temp1 = _kernel[6];
    _kernel[6] = min(_kernel[6], _kernel[7]);
    _kernel[7] = max(_temp1, _kernel[7]);
    _temp1 = _kernel[7];
    _kernel[7] = min(_kernel[7], _kernel[8]);
    _kernel[8] = max(_temp1, _kernel[8]);
    _temp1 = _kernel[8];
    _kernel[8] = min(_kernel[8], _kernel[9]);
    _kernel[9] = max(_temp1, _kernel[9]);
    _temp1 = _kernel[9];
    _kernel[9] = min(_kernel[9], _kernel[10]);
    _kernel[10] = max(_temp1, _kernel[10]);
    _temp1 = _kernel[10];
    _kernel[10] = min(_kernel[10], _kernel[11]);
    _kernel[11] = max(_temp1, _kernel[11]);
    _temp1 = _kernel[11];
    _kernel[11] = min(_kernel[11], _kernel[12]);
    _kernel[12] = max(_temp1, _kernel[12]);
    _temp1 = _kernel[12];
    _kernel[12] = min(_kernel[12], _kernel[13]);
    _kernel[13] = max(_temp1, _kernel[13]);
    _temp1 = _kernel[13];
    _kernel[13] = min(_kernel[13], _kernel[14]);
    _kernel[14] = max(_temp1, _kernel[14]);
    _temp1 = _kernel[14];
    _kernel[14] = min(_kernel[14], _kernel[15]);
    _kernel[15] = max(_temp1, _kernel[15]);
    _temp1 = _kernel[15];
    _kernel[15] = min(_kernel[15], _kernel[16]);
    _kernel[16] = max(_temp1, _kernel[16]);
    _temp1 = _kernel[16];
    _kernel[16] = min(_kernel[16], _kernel[17]);
    _kernel[17] = max(_temp1, _kernel[17]);
    _temp1 = _kernel[17];
    _kernel[17] = min(_kernel[17], _kernel[18]);
    _kernel[18] = max(_temp1, _kernel[18]);
    _temp1 = _kernel[18];
    _kernel[18] = min(_kernel[18], _kernel[19]);
    _kernel[19] = max(_temp1, _kernel[19]);
    _temp1 = _kernel[19];
    _kernel[19] = min(_kernel[19], _kernel[20]);
    _kernel[20] = max(_temp1, _kernel[20]);
    _temp1 = _kernel[20];
    _kernel[20] = min(_kernel[20], _kernel[21]);
    _kernel[21] = max(_temp1, _kernel[21]);
    _temp1 = _kernel[21];
    _kernel[21] = min(_kernel[21], _kernel[22]);
    _kernel[22] = max(_temp1, _kernel[22]);
    _temp1 = _kernel[22];
    _kernel[22] = min(_kernel[22], _kernel[23]);
    _kernel[23] = max(_temp1, _kernel[23]);
    _kernel[21] = min(_kernel[21], _kernel[22]);
    _kernel[20] = min(_kernel[20], _kernel[21]);
    _kernel[19] = min(_kernel[19], _kernel[20]);
    _kernel[18] = min(_kernel[18], _kernel[19]);
    _kernel[17] = min(_kernel[17], _kernel[18]);
    _kernel[16] = min(_kernel[16], _kernel[17]);
    _kernel[15] = min(_kernel[15], _kernel[16]);
    _kernel[14] = min(_kernel[14], _kernel[15]);
    _kernel[13] = min(_kernel[13], _kernel[14]);
    _kernel[12] = min(_kernel[12], _kernel[13]);
    _kernel[11] = min(_kernel[11], _kernel[12]);
    _kernel[10] = min(_kernel[10], _kernel[11]);
    _kernel[9] = min(_kernel[9], _kernel[10]);
    _kernel[8] = min(_kernel[8], _kernel[9]);
    _kernel[7] = min(_kernel[7], _kernel[8]);
    _kernel[6] = min(_kernel[6], _kernel[7]);
    _kernel[5] = min(_kernel[5], _kernel[6]);
    _kernel[4] = min(_kernel[4], _kernel[5]);
    _kernel[3] = min(_kernel[3], _kernel[4]);
    _kernel[2] = min(_kernel[2], _kernel[3]);
    _kernel[1] = min(_kernel[1], _kernel[2]);
    _a0634 = (_kernel[23] + _kernel[24])/2.00000000E+00;
    _nmax = max(_a0634, _TMP399);
    _a0636 = (_kernel[0] + _kernel[1])/2.00000000E+00;
    _nmin = min(_a0636, _TMP399);
    _a0638 = 1.00000000E+00/((_nmax - _TMP399) + 4.00000019E-03);
    _nmax_scale = max(_a0638, 1.00000000E+01);
    _a0640 = 1.00000000E+00/((_TMP399 - _nmin) + 1.60000008E-02);
    _nmin_scale = max(_a0640, 1.00000000E+01);
    _TMP103 = max(_sharpdiff, 0.00000000E+00);
    _x0644 = _TMP103*_nmax_scale;
    _x0646 = 2.00000000E+00*_x0644;
    _TMP645 = pow(2.71828198E+00, _x0646);
    _TMP104 = (_TMP645 - 1.00000000E+00)/(_TMP645 + 1.00000000E+00);
    _TMP105 = max(_sharpdiff, 0.00000000E+00);
    _a0652 = _TMP104/_nmax_scale;
    _TMP106 = _a0652 + 1.66999996E-01*(_TMP105 - _a0652);
    _TMP107 = min(_sharpdiff, 0.00000000E+00);
    _x0656 = _TMP107*_nmin_scale;
    _x0658 = 2.00000000E+00*_x0656;
    _TMP657 = pow(2.71828198E+00, _x0658);
    _TMP108 = (_TMP657 - 1.00000000E+00)/(_TMP657 + 1.00000000E+00);
    _TMP109 = min(_sharpdiff, 0.00000000E+00);
    _a0664 = _TMP108/_nmin_scale;
    _TMP110 = _a0664 + 2.50000000E-01*(_TMP109 - _a0664);
    _sharpdiff = _TMP106 + _TMP110;
    _ret_0 = _TMP241.xyzz + _sharpdiff;
    FragColor = _ret_0;
    return;
} 
#endif
