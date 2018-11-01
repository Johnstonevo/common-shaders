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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _oTex;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _oTex = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP16;
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
vec2 _c0025;
vec2 _c0037;
vec2 _c0049;
vec2 _c0061;
vec2 _c0073;
vec2 _c0085;
vec2 _c0097;
vec2 _c0109;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _big;
    _big = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0025 = vec2(TEX0.x + 9.99999931E-04, TEX0.y);
    _TMP0 = COMPAT_TEXTURE(Texture, _c0025);
    _TMP16 = pow(_TMP0.x, 2.20000005E+00);
    _TMP17 = pow(_TMP0.y, 2.20000005E+00);
    _TMP18 = pow(_TMP0.z, 2.20000005E+00);
    _TMP19 = pow(_TMP0.w, 2.20000005E+00);
    _TMP1 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP1;
    _c0037 = vec2(TEX0.x - 9.99999931E-04, TEX0.y);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0037);
    _TMP16 = pow(_TMP2.x, 2.20000005E+00);
    _TMP17 = pow(_TMP2.y, 2.20000005E+00);
    _TMP18 = pow(_TMP2.z, 2.20000005E+00);
    _TMP19 = pow(_TMP2.w, 2.20000005E+00);
    _TMP3 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP3;
    _c0049 = vec2(TEX0.x + 1.99999986E-03, TEX0.y);
    _TMP4 = COMPAT_TEXTURE(Texture, _c0049);
    _TMP16 = pow(_TMP4.x, 2.20000005E+00);
    _TMP17 = pow(_TMP4.y, 2.20000005E+00);
    _TMP18 = pow(_TMP4.z, 2.20000005E+00);
    _TMP19 = pow(_TMP4.w, 2.20000005E+00);
    _TMP5 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP5;
    _c0061 = vec2(TEX0.x - 1.99999986E-03, TEX0.y);
    _TMP6 = COMPAT_TEXTURE(Texture, _c0061);
    _TMP16 = pow(_TMP6.x, 2.20000005E+00);
    _TMP17 = pow(_TMP6.y, 2.20000005E+00);
    _TMP18 = pow(_TMP6.z, 2.20000005E+00);
    _TMP19 = pow(_TMP6.w, 2.20000005E+00);
    _TMP7 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP7;
    _c0073 = vec2(TEX0.x + 3.99999972E-03, TEX0.y);
    _TMP8 = COMPAT_TEXTURE(Texture, _c0073);
    _TMP16 = pow(_TMP8.x, 2.20000005E+00);
    _TMP17 = pow(_TMP8.y, 2.20000005E+00);
    _TMP18 = pow(_TMP8.z, 2.20000005E+00);
    _TMP19 = pow(_TMP8.w, 2.20000005E+00);
    _TMP9 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP9;
    _c0085 = vec2(TEX0.x - 3.99999972E-03, TEX0.y);
    _TMP10 = COMPAT_TEXTURE(Texture, _c0085);
    _TMP16 = pow(_TMP10.x, 2.20000005E+00);
    _TMP17 = pow(_TMP10.y, 2.20000005E+00);
    _TMP18 = pow(_TMP10.z, 2.20000005E+00);
    _TMP19 = pow(_TMP10.w, 2.20000005E+00);
    _TMP11 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP11;
    _c0097 = vec2(TEX0.x + 7.99999945E-03, TEX0.y);
    _TMP12 = COMPAT_TEXTURE(Texture, _c0097);
    _TMP16 = pow(_TMP12.x, 2.20000005E+00);
    _TMP17 = pow(_TMP12.y, 2.20000005E+00);
    _TMP18 = pow(_TMP12.z, 2.20000005E+00);
    _TMP19 = pow(_TMP12.w, 2.20000005E+00);
    _TMP13 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP13;
    _c0109 = vec2(TEX0.x - 7.99999945E-03, TEX0.y);
    _TMP14 = COMPAT_TEXTURE(Texture, _c0109);
    _TMP16 = pow(_TMP14.x, 2.20000005E+00);
    _TMP17 = pow(_TMP14.y, 2.20000005E+00);
    _TMP18 = pow(_TMP14.z, 2.20000005E+00);
    _TMP19 = pow(_TMP14.w, 2.20000005E+00);
    _TMP15 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _big = _big + _TMP15;
    _big = _big/vec4( 9.00000000E+00, 9.00000000E+00, 9.00000000E+00, 9.00000000E+00);
    _TMP16 = pow(_big.x, 4.54545438E-01);
    _TMP17 = pow(_big.y, 4.54545438E-01);
    _TMP18 = pow(_big.z, 4.54545438E-01);
    _TMP19 = pow(_big.w, 4.54545438E-01);
    _big = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    FragColor = _big;
    return;
} 
#endif
