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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP59;
vec3 _TMP71;
float _TMP70;
float _TMP69;
float _TMP68;
float _TMP58;
float _TMP57;
float _TMP56;
vec3 _TMP55;
vec3 _TMP54;
vec3 _TMP53;
vec3 _TMP52;
vec3 _TMP51;
vec3 _TMP50;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec4 _TMP45;
vec3 _TMP67;
vec3 _TMP43;
vec3 _TMP42;
vec3 _TMP41;
vec3 _TMP40;
vec4 _TMP33;
vec4 _TMP32;
vec4 _TMP72;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
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
vec2 _x0086;
vec4 _r0130;
vec4 _r0140;
vec4 _r0150;
vec4 _r0160;
vec4 _r0170;
vec4 _r0180;
vec4 _TMP191;
vec4 _a0194;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP203;
vec4 _a0206;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP215;
vec4 _a0218;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP227;
vec4 _a0230;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP239;
vec4 _a0242;
vec4 _TMP245;
vec4 _a0248;
vec4 _TMP251;
vec4 _a0254;
vec4 _x0258;
vec4 _TMP259;
vec4 _x0268;
vec4 _TMP269;
vec4 _x0278;
vec4 _TMP279;
vec4 _TMP287;
vec4 _a0290;
vec4 _TMP291;
vec4 _a0294;
vec4 _TMP295;
vec4 _a0298;
vec4 _TMP299;
vec4 _a0302;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP309;
vec4 _a0312;
vec4 _TMP313;
vec4 _a0316;
vec4 _TMP317;
vec4 _a0320;
vec4 _TMP321;
vec4 _a0324;
vec4 _TMP325;
vec4 _a0328;
vec4 _TMP329;
vec4 _a0332;
vec4 _TMP333;
vec4 _a0336;
vec4 _TMP337;
vec4 _a0340;
vec4 _TMP341;
vec4 _a0344;
vec4 _TMP345;
vec4 _a0348;
vec4 _TMP349;
vec4 _a0352;
vec3 _b0356;
vec3 _b0360;
vec3 _TMP361;
vec3 _a0362;
vec3 _b0370;
vec3 _b0374;
vec3 _TMP375;
vec3 _a0376;
vec3 _df0422;
vec3 _a0424;
vec3 _df0426;
vec3 _a0428;
vec3 _TMP441;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _E;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec3 _res;
    vec3 _aa;
    vec3 _bb;
    vec3 _cc;
    vec3 _dd;
    vec3 _t;
    vec3 _m;
    vec3 _s1;
    vec3 _s0;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    _x0086 = TEX0.xy*TextureSize;
    _fp = fract(_x0086);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0130.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0170.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0180.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0180.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0180.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0180.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0194 = _r0130.wxyz - _r0130;
    _TMP191 = abs(_a0194);
    _TMP21 = bvec4(_TMP191.x < 1.50000000E+01, _TMP191.y < 1.50000000E+01, _TMP191.z < 1.50000000E+01, _TMP191.w < 1.50000000E+01);
    _a0200 = _r0130.wxyz - _r0140;
    _TMP197 = abs(_a0200);
    _TMP22 = bvec4(_TMP197.x < 1.50000000E+01, _TMP197.y < 1.50000000E+01, _TMP197.z < 1.50000000E+01, _TMP197.w < 1.50000000E+01);
    _a0206 = _r0130.zwxy - _r0130.yzwx;
    _TMP203 = abs(_a0206);
    _TMP23 = bvec4(_TMP203.x < 1.50000000E+01, _TMP203.y < 1.50000000E+01, _TMP203.z < 1.50000000E+01, _TMP203.w < 1.50000000E+01);
    _a0212 = _r0130.zwxy - _r0140.zwxy;
    _TMP209 = abs(_a0212);
    _TMP24 = bvec4(_TMP209.x < 1.50000000E+01, _TMP209.y < 1.50000000E+01, _TMP209.z < 1.50000000E+01, _TMP209.w < 1.50000000E+01);
    _a0218 = _r0150 - _r0140.wxyz;
    _TMP215 = abs(_a0218);
    _TMP25 = bvec4(_TMP215.x < 1.50000000E+01, _TMP215.y < 1.50000000E+01, _TMP215.z < 1.50000000E+01, _TMP215.w < 1.50000000E+01);
    _a0224 = _r0130.wxyz - _r0180.yzwx;
    _TMP221 = abs(_a0224);
    _TMP26 = bvec4(_TMP221.x < 1.50000000E+01, _TMP221.y < 1.50000000E+01, _TMP221.z < 1.50000000E+01, _TMP221.w < 1.50000000E+01);
    _a0230 = _r0130.wxyz - _r0160;
    _TMP227 = abs(_a0230);
    _TMP27 = bvec4(_TMP227.x < 1.50000000E+01, _TMP227.y < 1.50000000E+01, _TMP227.z < 1.50000000E+01, _TMP227.w < 1.50000000E+01);
    _a0236 = _r0130.zwxy - _r0180;
    _TMP233 = abs(_a0236);
    _TMP28 = bvec4(_TMP233.x < 1.50000000E+01, _TMP233.y < 1.50000000E+01, _TMP233.z < 1.50000000E+01, _TMP233.w < 1.50000000E+01);
    _a0242 = _r0130.zwxy - _r0170;
    _TMP239 = abs(_a0242);
    _TMP29 = bvec4(_TMP239.x < 1.50000000E+01, _TMP239.y < 1.50000000E+01, _TMP239.z < 1.50000000E+01, _TMP239.w < 1.50000000E+01);
    _a0248 = _r0150 - _r0140.zwxy;
    _TMP245 = abs(_a0248);
    _TMP30 = bvec4(_TMP245.x < 1.50000000E+01, _TMP245.y < 1.50000000E+01, _TMP245.z < 1.50000000E+01, _TMP245.w < 1.50000000E+01);
    _a0254 = _r0150 - _r0140;
    _TMP251 = abs(_a0254);
    _TMP31 = bvec4(_TMP251.x < 1.50000000E+01, _TMP251.y < 1.50000000E+01, _TMP251.z < 1.50000000E+01, _TMP251.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_r0150.x != _r0130.w && _r0150.x != _r0130.z && (!_TMP21.x && !_TMP22.x || !_TMP23.x && !_TMP24.x || _TMP25.x && (!_TMP26.x && !_TMP27.x || !_TMP28.x && !_TMP29.x) || _TMP30.x || _TMP31.x), _r0150.y != _r0130.x && _r0150.y != _r0130.w && (!_TMP21.y && !_TMP22.y || !_TMP23.y && !_TMP24.y || _TMP25.y && (!_TMP26.y && !_TMP27.y || !_TMP28.y && !_TMP29.y) || _TMP30.y || _TMP31.y), _r0150.z != _r0130.y && _r0150.z != _r0130.x && (!_TMP21.z && !_TMP22.z || !_TMP23.z && !_TMP24.z || _TMP25.z && (!_TMP26.z && !_TMP27.z || !_TMP28.z && !_TMP29.z) || _TMP30.z || _TMP31.z), _r0150.w != _r0130.z && _r0150.w != _r0130.y && (!_TMP21.w && !_TMP22.w || !_TMP23.w && !_TMP24.w || _TMP25.w && (!_TMP26.w && !_TMP27.w || !_TMP28.w && !_TMP29.w) || _TMP30.w || _TMP31.w));
    _interp_restriction_lv2_left = bvec4(_r0150.x != _r0140.z && _r0130.y != _r0140.z, _r0150.y != _r0140.w && _r0130.z != _r0140.w, _r0150.z != _r0140.x && _r0130.w != _r0140.x, _r0150.w != _r0140.y && _r0130.x != _r0140.y);
    _interp_restriction_lv2_up = bvec4(_r0150.x != _r0140.x && _r0130.x != _r0140.x, _r0150.y != _r0140.y && _r0130.y != _r0140.y, _r0150.z != _r0140.z && _r0130.z != _r0140.z, _r0150.w != _r0140.w && _r0130.w != _r0140.w);
    _x0258 = _fx - vec4( 1.00000000E+00, 0.00000000E+00, -1.00000000E+00, 0.00000000E+00);
    _TMP72 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0258);
    _TMP259 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP72);
    _fx45 = _TMP259*_TMP259*(3.00000000E+00 - 2.00000000E+00*_TMP259);
    _x0268 = _fx_left - vec4( 5.00000000E-01, 5.00000000E-01, -1.00000000E+00, -5.00000000E-01);
    _TMP72 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0268);
    _TMP269 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP72);
    _fx30 = _TMP269*_TMP269*(3.00000000E+00 - 2.00000000E+00*_TMP269);
    _x0278 = _fx_up - vec4( 1.50000000E+00, -5.00000000E-01, -1.50000000E+00, 0.00000000E+00);
    _TMP72 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0278);
    _TMP279 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP72);
    _fx60 = _TMP279*_TMP279*(3.00000000E+00 - 2.00000000E+00*_TMP279);
    _a0290 = _r0150 - _r0140;
    _TMP287 = abs(_a0290);
    _a0294 = _r0150 - _r0140.zwxy;
    _TMP291 = abs(_a0294);
    _a0298 = _r0140.wxyz - _r0180;
    _TMP295 = abs(_a0298);
    _a0302 = _r0140.wxyz - _r0180.yzwx;
    _TMP299 = abs(_a0302);
    _a0306 = _r0130.zwxy - _r0130.wxyz;
    _TMP303 = abs(_a0306);
    _TMP32 = _TMP287 + _TMP291 + _TMP295 + _TMP299 + 4.00000000E+00*_TMP303;
    _a0312 = _r0130.zwxy - _r0130.yzwx;
    _TMP309 = abs(_a0312);
    _a0316 = _r0130.zwxy - _r0170;
    _TMP313 = abs(_a0316);
    _a0320 = _r0130.wxyz - _r0160;
    _TMP317 = abs(_a0320);
    _a0324 = _r0130.wxyz - _r0130;
    _TMP321 = abs(_a0324);
    _a0328 = _r0150 - _r0140.wxyz;
    _TMP325 = abs(_a0328);
    _TMP33 = _TMP309 + _TMP313 + _TMP317 + _TMP321 + 4.00000000E+00*_TMP325;
    _edr = bvec4((_TMP32 + 3.50000000E+00).x < _TMP33.x && _interp_restriction_lv1.x, (_TMP32 + 3.50000000E+00).y < _TMP33.y && _interp_restriction_lv1.y, (_TMP32 + 3.50000000E+00).z < _TMP33.z && _interp_restriction_lv1.z, (_TMP32 + 3.50000000E+00).w < _TMP33.w && _interp_restriction_lv1.w);
    _a0332 = _r0130.wxyz - _r0140.zwxy;
    _TMP329 = abs(_a0332);
    _a0336 = _r0130.zwxy - _r0140;
    _TMP333 = abs(_a0336);
    _edr_left = bvec4((2.00000000E+00*_TMP329).x <= _TMP333.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP329).y <= _TMP333.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP329).z <= _TMP333.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP329).w <= _TMP333.w && _interp_restriction_lv2_left.w);
    _a0340 = _r0130.wxyz - _r0140.zwxy;
    _TMP337 = abs(_a0340);
    _a0344 = _r0130.zwxy - _r0140;
    _TMP341 = abs(_a0344);
    _edr_up = bvec4(_TMP337.x >= (2.00000000E+00*_TMP341).x && _interp_restriction_lv2_up.x, _TMP337.y >= (2.00000000E+00*_TMP341).y && _interp_restriction_lv2_up.y, _TMP337.z >= (2.00000000E+00*_TMP341).z && _interp_restriction_lv2_up.z, _TMP337.w >= (2.00000000E+00*_TMP341).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0348 = _r0150 - _r0130.wxyz;
    _TMP345 = abs(_a0348);
    _a0352 = _r0150 - _r0130.zwxy;
    _TMP349 = abs(_a0352);
    _px = bvec4(_TMP345.x <= _TMP349.x, _TMP345.y <= _TMP349.y, _TMP345.z <= _TMP349.z, _TMP345.w <= _TMP349.w);
    _aa = _TMP4.xyz - _TMP1.xyz;
    _bb = _TMP7.xyz - _TMP4.xyz;
    _cc = _TMP10.xyz - _TMP7.xyz;
    _dd = _TMP13.xyz - _TMP10.xyz;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_TMP7.x < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).x : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).x, _TMP7.y < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).y : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).y, _TMP7.z < 5.00000000E-01 ? (2.00000000E+00*_TMP7.xyz).z : (2.00000000E+00*(1.00000000E+00 - _TMP7.xyz)).z);
    _TMP40 = abs(_bb);
    _b0356 = 6.49999976E-01*_TMP40;
    _m = min(_m, _b0356);
    _TMP41 = abs(_cc);
    _b0360 = 6.49999976E-01*_TMP41;
    _m = min(_m, _b0360);
    _a0362 = -_m;
    _TMP67 = min(_m, _t);
    _TMP361 = max(_a0362, _TMP67);
    _s1 = (2.00000000E+00*_fp.y - 1.00000000E+00)*_TMP361 + _TMP7.xyz;
    _aa = _TMP6.xyz - _TMP16.xyz;
    _bb = _s1 - _TMP6.xyz;
    _cc = _TMP8.xyz - _s1;
    _dd = _TMP19.xyz - _TMP8.xyz;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s1.x < 5.00000000E-01 ? (2.00000000E+00*_s1).x : (2.00000000E+00*(1.00000000E+00 - _s1)).x, _s1.y < 5.00000000E-01 ? (2.00000000E+00*_s1).y : (2.00000000E+00*(1.00000000E+00 - _s1)).y, _s1.z < 5.00000000E-01 ? (2.00000000E+00*_s1).z : (2.00000000E+00*(1.00000000E+00 - _s1)).z);
    _TMP42 = abs(_bb);
    _b0370 = 6.49999976E-01*_TMP42;
    _m = min(_m, _b0370);
    _TMP43 = abs(_cc);
    _b0374 = 6.49999976E-01*_TMP43;
    _m = min(_m, _b0374);
    _a0376 = -_m;
    _TMP67 = min(_m, _t);
    _TMP375 = max(_a0376, _TMP67);
    _s0 = (2.00000000E+00*_fp.x - 1.00000000E+00)*_TMP375 + _s1;
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _blend2 = 0.00000000E+00;
    _blend1 = 0.00000000E+00;
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP45 = max(_final30, _final60);
    _maximo = max(_TMP45, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP46 = _TMP8.xyz;
        } else {
            _TMP46 = _TMP10.xyz;
        } 
        _pix1 = _TMP46;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP47 = _TMP4.xyz;
            } else {
                _TMP47 = _TMP8.xyz;
            } 
            _pix1 = _TMP47;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP48 = _TMP6.xyz;
                } else {
                    _TMP48 = _TMP4.xyz;
                } 
                _pix1 = _TMP48;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP49 = _TMP10.xyz;
                    } else {
                        _TMP49 = _TMP6.xyz;
                    } 
                    _pix1 = _TMP49;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP50 = _TMP10.xyz;
        } else {
            _TMP50 = _TMP6.xyz;
        } 
        _pix2 = _TMP50;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP51 = _TMP6.xyz;
            } else {
                _TMP51 = _TMP4.xyz;
            } 
            _pix2 = _TMP51;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP52 = _TMP4.xyz;
                } else {
                    _TMP52 = _TMP8.xyz;
                } 
                _pix2 = _TMP52;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP53 = _TMP8.xyz;
                    } else {
                        _TMP53 = _TMP10.xyz;
                    } 
                    _pix2 = _TMP53;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _TMP68 = pow(_TMP7.x, 2.40000010E+00);
    _TMP69 = pow(_TMP7.y, 2.40000010E+00);
    _TMP70 = pow(_TMP7.z, 2.40000010E+00);
    _E = vec3(_TMP68, _TMP69, _TMP70);
    _TMP68 = pow(_s0.x, 2.40000010E+00);
    _TMP69 = pow(_s0.y, 2.40000010E+00);
    _TMP70 = pow(_s0.z, 2.40000010E+00);
    _s0 = vec3(_TMP68, _TMP69, _TMP70);
    _TMP68 = pow(_pix1.x, 2.40000010E+00);
    _TMP69 = pow(_pix1.y, 2.40000010E+00);
    _TMP70 = pow(_pix1.z, 2.40000010E+00);
    _TMP54 = vec3(_TMP68, _TMP69, _TMP70);
    _res1 = _s0 + _blend1*(_TMP54 - _s0);
    _TMP68 = pow(_pix2.x, 2.40000010E+00);
    _TMP69 = pow(_pix2.y, 2.40000010E+00);
    _TMP70 = pow(_pix2.z, 2.40000010E+00);
    _TMP55 = vec3(_TMP68, _TMP69, _TMP70);
    _res2 = _s0 + _blend2*(_TMP55 - _s0);
    _a0424 = _E - _res1;
    _df0422 = abs(_a0424);
    _TMP56 = _df0422.x + _df0422.y + _df0422.z;
    _a0428 = _E - _res2;
    _df0426 = abs(_a0428);
    _TMP57 = _df0426.x + _df0426.y + _df0426.z;
    _TMP58 = float((_TMP57 >= _TMP56));
    _res = _res1 + _TMP58*(_res2 - _res1);
    _TMP68 = pow(_res.x, 4.54545438E-01);
    _TMP69 = pow(_res.y, 4.54545438E-01);
    _TMP70 = pow(_res.z, 4.54545438E-01);
    _TMP59 = vec3(_TMP68, _TMP69, _TMP70);
    _TMP71 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP59);
    _TMP441 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP71);
    _ret_0 = vec4(_TMP441.x, _TMP441.y, _TMP441.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
