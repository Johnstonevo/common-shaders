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
COMPAT_VARYING     float _pixel_height_in_scanlines;
COMPAT_VARYING     vec2 _il_step_multiple;
COMPAT_VARYING     vec2 _uv_step;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _video_size2;
    vec2 _texture_size1;
    vec2 _output_dummy_size1;
float _placeholder32;
};
struct input_dummy {
    vec2 _video_size1;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _uv_step;
    vec2 _il_step_multiple;
    float _pixel_height_in_scanlines;
};
out_vertex _ret_0;
bool _TMP13;
input_dummy _IN1;
vec4 _r0223;
bool _sd_interlace10225;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    float _y_step;
    float _ph;
    _r0223 = VertexCoord.x*MVPMatrix[0];
    _r0223 = _r0223 + VertexCoord.y*MVPMatrix[1];
    _r0223 = _r0223 + VertexCoord.z*MVPMatrix[2];
    _r0223 = _r0223 + VertexCoord.w*MVPMatrix[3];
    _sd_interlace10225 = InputSize.y > 2.88500000E+02 && InputSize.y < 5.76500000E+02;
    _TMP13 = _sd_interlace10225 || false;
    _y_step = 1.00000000E+00 + float(_TMP13);
    _OUT._il_step_multiple = vec2(1.00000000E+00, _y_step);
    _OUT._uv_step = _OUT._il_step_multiple/TextureSize;
    _ph = (InputSize.y/OutputSize.y)/_OUT._il_step_multiple.y;
    _ret_0._position1 = _r0223;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._uv_step = _OUT._uv_step;
    _ret_0._il_step_multiple = _OUT._il_step_multiple;
    _ret_0._pixel_height_in_scanlines = _ph;
    gl_Position = _r0223;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._uv_step;
    TEX2.xy = _OUT._il_step_multiple;
    TEX3.x = _ph;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._uv_step;
    TEX2.xy = _ret_0._il_step_multiple;
    TEX3.x = _ret_0._pixel_height_in_scanlines;
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
COMPAT_VARYING     float _pixel_height_in_scanlines;
COMPAT_VARYING     vec2 _il_step_multiple2;
COMPAT_VARYING     vec2 _uv_step1;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _video_size1;
    vec2 _texture_size3;
    vec2 _output_dummy_size1;
float _placeholder29;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size2;
    vec2 _output_dummy_size;
    float _frame_count2;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _tex_uv1;
    vec2 _uv_step1;
    vec2 _il_step_multiple2;
    float _pixel_height_in_scanlines;
};
vec3 _TMP35;
float _TMP42;
float _TMP41;
float _TMP40;
vec3 _TMP34;
vec3 _TMP33;
vec3 _TMP32;
vec3 _TMP31;
vec3 _TMP30;
vec3 _TMP29;
vec3 _TMP39;
vec3 _TMP38;
vec3 _TMP28;
float _TMP27;
vec3 _TMP37;
float _TMP36;
vec3 _TMP17;
float _TMP16;
float _TMP15;
vec4 _TMP22;
vec4 _TMP13;
vec4 _TMP12;
float _TMP26;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP20;
float _TMP19;
float _TMP3;
float _TMP2;
input_dummy _IN1;
uniform sampler2D Texture;
float _TMP137;
float _TMP143;
float _TMP149;
float _field_offset0248;
vec2 _curr_texel0248;
vec2 _prev_texel_num0248;
vec2 _scanline_texel_num0248;
vec2 _scanline_texel0248;
vec2 _scanline_uv0248;
float _dist0248;
float _x0250;
float _c0252;
float _a0254;
vec2 _x0260;
float _a0262;
float _c0262;
float _a0264;
vec2 _tex_coords0276;
float _TMP281;
float _x0284;
vec2 _a0286;
vec2 _b0286;
vec2 _tex_coords0288;
vec3 _TMP299;
vec3 _alpha0302;
vec3 _beta0302;
vec3 _alpha_inv0302;
vec3 _beta_inv0302;
vec3 _scale0302;
vec3 _sample_offset10302;
vec3 _dist210302;
vec3 _dist310302;
vec3 _sph0328;
vec3 _lanczos_sum0328;
vec3 _base0328;
vec3 _a0338;
vec3 _a0340;
vec3 _TMP349;
vec3 _x0350;
vec3 _a0360;
vec3 _TMP369;
vec3 _x0370;
vec3 _a0380;
vec3 _TMP389;
vec3 _x0390;
vec3 _a0400;
vec3 _TMP401;
vec3 _alpha0404;
vec3 _beta0404;
vec3 _alpha_inv0404;
vec3 _beta_inv0404;
vec3 _scale0404;
vec3 _sample_offset10404;
vec3 _dist210404;
vec3 _dist310404;
vec3 _sph0430;
vec3 _lanczos_sum0430;
vec3 _base0430;
vec3 _a0440;
vec3 _a0442;
vec3 _TMP451;
vec3 _x0452;
vec3 _a0462;
vec3 _TMP471;
vec3 _x0472;
vec3 _a0482;
vec3 _TMP491;
vec3 _x0492;
vec3 _a0502;
vec3 _b0502;
vec3 _TMP503;
vec3 _alpha0506;
vec3 _beta0506;
vec3 _alpha_inv0506;
vec3 _beta_inv0506;
vec3 _scale0506;
vec3 _sample_offset10506;
vec3 _dist210506;
vec3 _dist310506;
vec3 _sph0532;
vec3 _lanczos_sum0532;
vec3 _base0532;
vec3 _a0542;
vec3 _a0544;
vec3 _TMP553;
vec3 _x0554;
vec3 _a0564;
vec3 _TMP573;
vec3 _x0574;
vec3 _a0584;
vec3 _TMP593;
vec3 _x0594;
vec4 _color0604;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
float _beam_min_sigma;
float _beam_max_sigma;
float _beam_spot_power;
float _beam_min_shape;
float _beam_max_shape;
float _beam_shape_power;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _texture_size_inv1;
    vec2 _v_step;
    vec2 _sample_1or4_uv_off1;
    vec3 _dist22;
    vec3 _convergence_offsets_vert_rgb1;
    float _sigma_range3;
    float _shape_range3;
    vec3 _scanline_intensity;
    vec3 _dist1or41;
    vec3 _TMP46;
    _TMP2 = abs(0.00000000E+00);
    _TMP3 = max(_TMP2, 1.52587891E-05);
    _beam_min_sigma = max(_TMP3, 1.99999996E-02);
    _beam_max_sigma = max(_beam_min_sigma, 3.00000012E-01);
    _beam_spot_power = max(3.33333343E-01, 0.00000000E+00);
    _beam_min_shape = max(2.00000000E+00, 2.00000000E+00);
    _beam_max_shape = max(_beam_min_shape, 4.00000000E+00);
    _beam_shape_power = max(0.00000000E+00, 2.50000000E-01);
    _TMP19 = min(4.00000000E+00, 2.00000003E-01);
    _TMP137 = max(-4.00000000E+00, _TMP19);
    _TMP19 = min(4.00000000E+00, 4.00000006E-01);
    _TMP143 = max(-4.00000000E+00, _TMP19);
    _TMP19 = min(4.00000000E+00, 6.00000024E-01);
    _TMP149 = max(-4.00000000E+00, _TMP19);
    _texture_size_inv1 = 1.00000000E+00/TextureSize;
    _x0250 = TEX2.y*7.50000000E-01;
    _TMP20 = floor(_x0250);
    _a0254 = float(FrameCount)/2.00000000E+00;
    _TMP23 = abs(_a0254);
    _TMP24 = fract(_TMP23);
    _TMP25 = abs(2.00000000E+00);
    _c0252 = _TMP24*_TMP25;
    if (float(FrameCount) < 0.00000000E+00) { 
        _TMP26 = -_c0252;
    } else {
        _TMP26 = _c0252;
    } 
    _field_offset0248 = _TMP20*_TMP26;
    _curr_texel0248 = TEX0.xy*TextureSize;
    _x0260 = _curr_texel0248 - vec2( 4.99500006E-01, 4.99500006E-01);
    _prev_texel_num0248 = floor(_x0260);
    _a0262 = _prev_texel_num0248.y + _field_offset0248;
    _a0264 = _a0262/TEX2.y;
    _TMP23 = abs(_a0264);
    _TMP24 = fract(_TMP23);
    _TMP25 = abs(TEX2.y);
    _c0262 = _TMP24*_TMP25;
    if (_a0262 < 0.00000000E+00) { 
        _TMP26 = -_c0262;
    } else {
        _TMP26 = _c0262;
    } 
    _scanline_texel_num0248 = _prev_texel_num0248 - vec2(0.00000000E+00, _TMP26);
    _scanline_texel0248 = _scanline_texel_num0248 + vec2( 5.00000000E-01, 5.00000000E-01);
    _scanline_uv0248 = _scanline_texel0248*_texture_size_inv1;
    _dist0248 = (_curr_texel0248.y - _scanline_texel0248.y)/TEX2.y;
    _v_step = vec2(0.00000000E+00, TEX1.y);
    _TMP22 = COMPAT_TEXTURE(Texture, _scanline_uv0248);
    _TMP12 = _TMP22;
    _tex_coords0276 = _scanline_uv0248 + _v_step;
    _TMP22 = COMPAT_TEXTURE(Texture, _tex_coords0276);
    _TMP13 = _TMP22;
    _x0284 = _dist0248 + 5.00000000E-01;
    _TMP281 = floor(_x0284);
    _a0286 = -_v_step;
    _b0286 = 2.00000000E+00*_v_step;
    _sample_1or4_uv_off1 = _a0286 + _TMP281*(_b0286 - _a0286);
    _tex_coords0288 = _scanline_uv0248 + _sample_1or4_uv_off1;
    _TMP22 = COMPAT_TEXTURE(Texture, _tex_coords0288);
    _convergence_offsets_vert_rgb1 = vec3(_TMP137, _TMP143, _TMP149);
    _dist22 = vec3(_dist0248, _dist0248, _dist0248) - _convergence_offsets_vert_rgb1;
    _TMP15 = max(_beam_max_sigma, _beam_min_sigma);
    _sigma_range3 = _TMP15 - _beam_min_sigma;
    _TMP16 = max(_beam_max_shape, _beam_min_shape);
    _shape_range3 = _TMP16 - _beam_min_shape;
    _TMP36 = inversesqrt(2.00000000E+00);
    _TMP27 = 1.00000000E+00/_TMP36;
    _TMP40 = pow(_TMP12.x, _beam_spot_power);
    _TMP41 = pow(_TMP12.y, _beam_spot_power);
    _TMP42 = pow(_TMP12.z, _beam_spot_power);
    _TMP37 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP28 = vec3(_beam_min_sigma, _beam_min_sigma, _beam_min_sigma) + _sigma_range3*_TMP37;
    _alpha0302 = _TMP27*_TMP28;
    _TMP40 = pow(_TMP12.x, _beam_shape_power);
    _TMP41 = pow(_TMP12.y, _beam_shape_power);
    _TMP42 = pow(_TMP12.z, _beam_shape_power);
    _TMP38 = vec3(_TMP40, _TMP41, _TMP42);
    _beta0302 = _beam_min_shape + _shape_range3*_TMP38;
    _alpha_inv0302 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_alpha0302;
    _beta_inv0302 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_beta0302;
    _sph0328 = _beta_inv0302 + vec3( 5.00000000E-01, 5.00000000E-01, 5.00000000E-01);
    _lanczos_sum0328 = vec3( 8.10911953E-01, 8.10911953E-01, 8.10911953E-01) + vec3( 4.80835468E-01, 4.80835468E-01, 4.80835468E-01)/(_beta_inv0302 + vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _base0328 = (_sph0328 + vec3( 1.12906826E+00, 1.12906826E+00, 1.12906826E+00))/vec3( 2.71828175E+00, 2.71828175E+00, 2.71828175E+00);
    _TMP40 = pow(_base0328.x, _sph0328.x);
    _TMP41 = pow(_base0328.y, _sph0328.y);
    _TMP42 = pow(_base0328.z, _sph0328.z);
    _TMP39 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP29 = _TMP39*_lanczos_sum0328*_beta0302;
    _scale0302 = (((_TMP12.xyz*_beta0302)*5.00000000E-01)*_alpha_inv0302)/_TMP29;
    _sample_offset10302 = vec3(TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00);
    _dist210302 = _dist22 + _sample_offset10302;
    _a0338 = _dist22 - _sample_offset10302;
    _dist310302 = abs(_a0338);
    _a0340 = _dist22*_alpha_inv0302;
    _TMP30 = abs(_a0340);
    _TMP40 = pow(_TMP30.x, _beta0302.x);
    _TMP41 = pow(_TMP30.y, _beta0302.y);
    _TMP42 = pow(_TMP30.z, _beta0302.z);
    _TMP31 = vec3(_TMP40, _TMP41, _TMP42);
    _x0350 = -_TMP31;
    _TMP40 = pow(2.71828198E+00, _x0350.x);
    _TMP41 = pow(2.71828198E+00, _x0350.y);
    _TMP42 = pow(2.71828198E+00, _x0350.z);
    _TMP349 = vec3(_TMP40, _TMP41, _TMP42);
    _a0360 = _dist210302*_alpha_inv0302;
    _TMP32 = abs(_a0360);
    _TMP40 = pow(_TMP32.x, _beta0302.x);
    _TMP41 = pow(_TMP32.y, _beta0302.y);
    _TMP42 = pow(_TMP32.z, _beta0302.z);
    _TMP33 = vec3(_TMP40, _TMP41, _TMP42);
    _x0370 = -_TMP33;
    _TMP40 = pow(2.71828198E+00, _x0370.x);
    _TMP41 = pow(2.71828198E+00, _x0370.y);
    _TMP42 = pow(2.71828198E+00, _x0370.z);
    _TMP369 = vec3(_TMP40, _TMP41, _TMP42);
    _a0380 = _dist310302*_alpha_inv0302;
    _TMP34 = abs(_a0380);
    _TMP40 = pow(_TMP34.x, _beta0302.x);
    _TMP41 = pow(_TMP34.y, _beta0302.y);
    _TMP42 = pow(_TMP34.z, _beta0302.z);
    _TMP35 = vec3(_TMP40, _TMP41, _TMP42);
    _x0390 = -_TMP35;
    _TMP40 = pow(2.71828198E+00, _x0390.x);
    _TMP41 = pow(2.71828198E+00, _x0390.y);
    _TMP42 = pow(2.71828198E+00, _x0390.z);
    _TMP389 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP299 = (_scale0302/3.00000000E+00)*(_TMP349 + _TMP369 + _TMP389);
    _a0400 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00) - _dist22;
    _TMP17 = abs(_a0400);
    _TMP36 = inversesqrt(2.00000000E+00);
    _TMP27 = 1.00000000E+00/_TMP36;
    _TMP40 = pow(_TMP13.x, _beam_spot_power);
    _TMP41 = pow(_TMP13.y, _beam_spot_power);
    _TMP42 = pow(_TMP13.z, _beam_spot_power);
    _TMP37 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP28 = vec3(_beam_min_sigma, _beam_min_sigma, _beam_min_sigma) + _sigma_range3*_TMP37;
    _alpha0404 = _TMP27*_TMP28;
    _TMP40 = pow(_TMP13.x, _beam_shape_power);
    _TMP41 = pow(_TMP13.y, _beam_shape_power);
    _TMP42 = pow(_TMP13.z, _beam_shape_power);
    _TMP38 = vec3(_TMP40, _TMP41, _TMP42);
    _beta0404 = _beam_min_shape + _shape_range3*_TMP38;
    _alpha_inv0404 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_alpha0404;
    _beta_inv0404 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_beta0404;
    _sph0430 = _beta_inv0404 + vec3( 5.00000000E-01, 5.00000000E-01, 5.00000000E-01);
    _lanczos_sum0430 = vec3( 8.10911953E-01, 8.10911953E-01, 8.10911953E-01) + vec3( 4.80835468E-01, 4.80835468E-01, 4.80835468E-01)/(_beta_inv0404 + vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _base0430 = (_sph0430 + vec3( 1.12906826E+00, 1.12906826E+00, 1.12906826E+00))/vec3( 2.71828175E+00, 2.71828175E+00, 2.71828175E+00);
    _TMP40 = pow(_base0430.x, _sph0430.x);
    _TMP41 = pow(_base0430.y, _sph0430.y);
    _TMP42 = pow(_base0430.z, _sph0430.z);
    _TMP39 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP29 = _TMP39*_lanczos_sum0430*_beta0404;
    _scale0404 = (((_TMP13.xyz*_beta0404)*5.00000000E-01)*_alpha_inv0404)/_TMP29;
    _sample_offset10404 = vec3(TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00);
    _dist210404 = _TMP17 + _sample_offset10404;
    _a0440 = _TMP17 - _sample_offset10404;
    _dist310404 = abs(_a0440);
    _a0442 = _TMP17*_alpha_inv0404;
    _TMP30 = abs(_a0442);
    _TMP40 = pow(_TMP30.x, _beta0404.x);
    _TMP41 = pow(_TMP30.y, _beta0404.y);
    _TMP42 = pow(_TMP30.z, _beta0404.z);
    _TMP31 = vec3(_TMP40, _TMP41, _TMP42);
    _x0452 = -_TMP31;
    _TMP40 = pow(2.71828198E+00, _x0452.x);
    _TMP41 = pow(2.71828198E+00, _x0452.y);
    _TMP42 = pow(2.71828198E+00, _x0452.z);
    _TMP451 = vec3(_TMP40, _TMP41, _TMP42);
    _a0462 = _dist210404*_alpha_inv0404;
    _TMP32 = abs(_a0462);
    _TMP40 = pow(_TMP32.x, _beta0404.x);
    _TMP41 = pow(_TMP32.y, _beta0404.y);
    _TMP42 = pow(_TMP32.z, _beta0404.z);
    _TMP33 = vec3(_TMP40, _TMP41, _TMP42);
    _x0472 = -_TMP33;
    _TMP40 = pow(2.71828198E+00, _x0472.x);
    _TMP41 = pow(2.71828198E+00, _x0472.y);
    _TMP42 = pow(2.71828198E+00, _x0472.z);
    _TMP471 = vec3(_TMP40, _TMP41, _TMP42);
    _a0482 = _dist310404*_alpha_inv0404;
    _TMP34 = abs(_a0482);
    _TMP40 = pow(_TMP34.x, _beta0404.x);
    _TMP41 = pow(_TMP34.y, _beta0404.y);
    _TMP42 = pow(_TMP34.z, _beta0404.z);
    _TMP35 = vec3(_TMP40, _TMP41, _TMP42);
    _x0492 = -_TMP35;
    _TMP40 = pow(2.71828198E+00, _x0492.x);
    _TMP41 = pow(2.71828198E+00, _x0492.y);
    _TMP42 = pow(2.71828198E+00, _x0492.z);
    _TMP491 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP401 = (_scale0404/3.00000000E+00)*(_TMP451 + _TMP471 + _TMP491);
    _scanline_intensity = _TMP299 + _TMP401;
    _a0502 = _dist22 + vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00);
    _b0502 = vec3( 2.00000000E+00, 2.00000000E+00, 2.00000000E+00) - _dist22;
    _dist1or41 = _a0502 + _TMP281*(_b0502 - _a0502);
    _TMP36 = inversesqrt(2.00000000E+00);
    _TMP27 = 1.00000000E+00/_TMP36;
    _TMP40 = pow(_TMP22.x, _beam_spot_power);
    _TMP41 = pow(_TMP22.y, _beam_spot_power);
    _TMP42 = pow(_TMP22.z, _beam_spot_power);
    _TMP37 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP28 = vec3(_beam_min_sigma, _beam_min_sigma, _beam_min_sigma) + _sigma_range3*_TMP37;
    _alpha0506 = _TMP27*_TMP28;
    _TMP40 = pow(_TMP22.x, _beam_shape_power);
    _TMP41 = pow(_TMP22.y, _beam_shape_power);
    _TMP42 = pow(_TMP22.z, _beam_shape_power);
    _TMP38 = vec3(_TMP40, _TMP41, _TMP42);
    _beta0506 = _beam_min_shape + _shape_range3*_TMP38;
    _alpha_inv0506 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_alpha0506;
    _beta_inv0506 = vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00)/_beta0506;
    _sph0532 = _beta_inv0506 + vec3( 5.00000000E-01, 5.00000000E-01, 5.00000000E-01);
    _lanczos_sum0532 = vec3( 8.10911953E-01, 8.10911953E-01, 8.10911953E-01) + vec3( 4.80835468E-01, 4.80835468E-01, 4.80835468E-01)/(_beta_inv0506 + vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _base0532 = (_sph0532 + vec3( 1.12906826E+00, 1.12906826E+00, 1.12906826E+00))/vec3( 2.71828175E+00, 2.71828175E+00, 2.71828175E+00);
    _TMP40 = pow(_base0532.x, _sph0532.x);
    _TMP41 = pow(_base0532.y, _sph0532.y);
    _TMP42 = pow(_base0532.z, _sph0532.z);
    _TMP39 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP29 = _TMP39*_lanczos_sum0532*_beta0506;
    _scale0506 = (((_TMP22.xyz*_beta0506)*5.00000000E-01)*_alpha_inv0506)/_TMP29;
    _sample_offset10506 = vec3(TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00, TEX3.x/3.00000000E+00);
    _dist210506 = _dist1or41 + _sample_offset10506;
    _a0542 = _dist1or41 - _sample_offset10506;
    _dist310506 = abs(_a0542);
    _a0544 = _dist1or41*_alpha_inv0506;
    _TMP30 = abs(_a0544);
    _TMP40 = pow(_TMP30.x, _beta0506.x);
    _TMP41 = pow(_TMP30.y, _beta0506.y);
    _TMP42 = pow(_TMP30.z, _beta0506.z);
    _TMP31 = vec3(_TMP40, _TMP41, _TMP42);
    _x0554 = -_TMP31;
    _TMP40 = pow(2.71828198E+00, _x0554.x);
    _TMP41 = pow(2.71828198E+00, _x0554.y);
    _TMP42 = pow(2.71828198E+00, _x0554.z);
    _TMP553 = vec3(_TMP40, _TMP41, _TMP42);
    _a0564 = _dist210506*_alpha_inv0506;
    _TMP32 = abs(_a0564);
    _TMP40 = pow(_TMP32.x, _beta0506.x);
    _TMP41 = pow(_TMP32.y, _beta0506.y);
    _TMP42 = pow(_TMP32.z, _beta0506.z);
    _TMP33 = vec3(_TMP40, _TMP41, _TMP42);
    _x0574 = -_TMP33;
    _TMP40 = pow(2.71828198E+00, _x0574.x);
    _TMP41 = pow(2.71828198E+00, _x0574.y);
    _TMP42 = pow(2.71828198E+00, _x0574.z);
    _TMP573 = vec3(_TMP40, _TMP41, _TMP42);
    _a0584 = _dist310506*_alpha_inv0506;
    _TMP34 = abs(_a0584);
    _TMP40 = pow(_TMP34.x, _beta0506.x);
    _TMP41 = pow(_TMP34.y, _beta0506.y);
    _TMP42 = pow(_TMP34.z, _beta0506.z);
    _TMP35 = vec3(_TMP40, _TMP41, _TMP42);
    _x0594 = -_TMP35;
    _TMP40 = pow(2.71828198E+00, _x0594.x);
    _TMP41 = pow(2.71828198E+00, _x0594.y);
    _TMP42 = pow(2.71828198E+00, _x0594.z);
    _TMP593 = vec3(_TMP40, _TMP41, _TMP42);
    _TMP503 = (_scale0506/3.00000000E+00)*(_TMP553 + _TMP573 + _TMP593);
    _scanline_intensity = _scanline_intensity + _TMP503;
    _TMP46 = _scanline_intensity*5.00000000E-01;
    _color0604 = vec4(_TMP46.x, _TMP46.y, _TMP46.z, 1.00000000E+00);
    FragColor = _color0604;
    return;
} 
#endif
