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
COMPAT_VARYING     vec2 VARdelta;
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size1;
float _placeholder39;
};
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
    vec2 _texCoord1;
    vec4 _t1;
    vec2 VARorig_tex;
    vec2 VARdelta;
};
out_vertex _co1;
input_dummy _IN1;
orig _ORIG1;
vec4 _r0009;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 OrigTextureSize;
COMPAT_ATTRIBUTE vec2 OrigTexCoord;
void main()
{
    vec2 _ps;
    _r0009 = VertexCoord.x*MVPMatrix[0];
    _r0009 = _r0009 + VertexCoord.y*MVPMatrix[1];
    _r0009 = _r0009 + VertexCoord.z*MVPMatrix[2];
    _r0009 = _r0009 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0009;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/OrigTextureSize.x, 1.00000000E+00/OrigTextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    VARorig_tex = OrigTexCoord;
    _co1._t1 = vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    VARdelta = vec2(InputSize.x/OutputSize.x, (5.00000000E-01*InputSize.x)/OutputSize.x);
    gl_Position = _r0009;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _co1._t1;
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
COMPAT_VARYING     vec2 VARdelta;
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder36;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 _t1;
    vec2 VARorig_tex;
    vec2 VARdelta;
};
vec4 _ret_0;
vec3 _TMP46;
float _TMP45;
float _TMP50;
vec3 _TMP44;
float _TMP43;
vec3 _TMP42;
vec3 _TMP41;
vec3 _TMP40;
float _TMP39;
vec2 _TMP38;
vec3 _TMP33;
vec3 _TMP34;
vec3 _TMP35;
vec3 _TMP36;
vec3 _TMP37;
vec3 _TMP28;
vec3 _TMP29;
vec3 _TMP30;
vec3 _TMP31;
vec3 _TMP32;
float _TMP27;
float _TMP26;
float _TMP52;
float _TMP53;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP49;
float _TMP48;
float _TMP47;
float _TMP22;
float _TMP21;
float _TMP20;
vec4 _TMP19;
float _TMP18;
vec4 _TMP17;
float _TMP16;
vec4 _TMP15;
vec4 _TMP51;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec2 _TMP0;
out_vertex _co1;
uniform sampler2D Texture;
orig _ORIG1;
input_dummy _IN1;
vec2 _x0064;
vec2 _val0066;
float _x0068;
float _TMP69;
float _x0076;
float _TMP77;
float _x0084;
float _TMP85;
float _x0092;
float _TMP93;
vec2 _c0100;
vec2 _c0102;
vec2 _c0104;
vec2 _c0106;
vec2 _c0110;
vec2 _c0112;
vec2 _c0114;
vec4 _r0116;
vec4 _TMP119;
vec4 _x0126;
vec2 _c0134;
vec2 _c0140;
float _x0146;
float _x0150;
float _x0154;
float _x0158;
float _x0162;
float _x0166;
float _x0170;
float _x0172;
float _x0176;
float _x0180;
vec4 _info0182;
float _x0184;
float _x0188;
float _x0192;
float _x0194;
float _x0198;
float _x0202;
float _x0204;
float _x0208;
float _x0212;
float _x0214;
float _x0218;
float _x0222;
float _x0224;
float _x0228;
float _x0232;
float _x0236;
float _x0240;
float _x0244;
float _x0248;
float _x0250;
float _x0254;
float _x0258;
float _x0262;
float _x0266;
float _x0268;
float _x0272;
float _x0276;
float _x0280;
float _x0284;
float _x0288;
float _x0296;
float _TMP297;
float _x0314;
float _TMP315;
float _x0328;
float _TMP329;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform sampler2D OrigTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _px;
    float _pxr;
    float _pxd;
    float _edr3_nrl;
    float _edr3_ndu;
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    vec4 _icomp;
    float _info1;
    float _info_nr;
    float _info_nd;
    float _aux;
    vec3 _slep;
    vec3 _fp1;
    vec3 _color;
    _x0064 = TEX0.xy*TextureSize;
    _TMP0 = fract(_x0064);
    _pos = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _val0066 = vec2(float((_pos.x > 0.00000000E+00)), float((_pos.y > 0.00000000E+00)));
    _dir = _val0066 - vec2(float((_pos.x < 0.00000000E+00)), float((_pos.y < 0.00000000E+00)));
    _x0068 = -_dir.y*_dir.x;
    _TMP50 = min(1.00000000E+00, _x0068);
    _TMP69 = max(0.00000000E+00, _TMP50);
    _x0076 = _dir.y*_dir.x;
    _TMP50 = min(1.00000000E+00, _x0076);
    _TMP77 = max(0.00000000E+00, _TMP50);
    _g1 = _dir*(_TMP69*TEX1.zw + _TMP77*TEX1.xy);
    _x0084 = _dir.y*_dir.x;
    _TMP50 = min(1.00000000E+00, _x0084);
    _TMP85 = max(0.00000000E+00, _TMP50);
    _x0092 = -_dir.y*_dir.x;
    _TMP50 = min(1.00000000E+00, _x0092);
    _TMP93 = max(0.00000000E+00, _TMP50);
    _g2 = _dir*(_TMP85*TEX1.zw + _TMP93*TEX1.xy);
    _c0100 = VARorig_tex + _g1;
    _TMP5 = COMPAT_TEXTURE(OrigTexture, _c0100);
    _c0102 = VARorig_tex - _g2;
    _TMP6 = COMPAT_TEXTURE(OrigTexture, _c0102);
    _c0104 = VARorig_tex - _g1;
    _TMP7 = COMPAT_TEXTURE(OrigTexture, _c0104);
    _c0106 = VARorig_tex + _g2;
    _TMP8 = COMPAT_TEXTURE(OrigTexture, _c0106);
    _TMP9 = COMPAT_TEXTURE(OrigTexture, VARorig_tex);
    _c0110 = VARorig_tex + 2.00000000E+00*_g1;
    _TMP10 = COMPAT_TEXTURE(OrigTexture, _c0110);
    _c0112 = VARorig_tex + _g1 + _g2;
    _TMP11 = COMPAT_TEXTURE(OrigTexture, _c0112);
    _c0114 = VARorig_tex + 2.00000000E+00*_g2;
    _TMP12 = COMPAT_TEXTURE(OrigTexture, _c0114);
    _r0116 = _dir.x*vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00);
    _r0116 = _r0116 + _dir.y*vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00);
    _TMP51 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _r0116);
    _TMP119 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP51);
    _x0126 = _TMP119 + 5.00000000E-01;
    _icomp = floor(_x0126);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP16 = dot(_TMP15, _icomp);
    _info1 = 2.55000000E+02*_TMP16 + 5.00000000E-01;
    _c0134 = TEX0.xy + _g1;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0134);
    _TMP18 = dot(_TMP17, _icomp);
    _info_nr = 2.55000000E+02*_TMP18 + 5.00000000E-01;
    _c0140 = TEX0.xy + _g2;
    _TMP19 = COMPAT_TEXTURE(Texture, _c0140);
    _TMP20 = dot(_TMP19, _icomp);
    _info_nd = 2.55000000E+02*_TMP20 + 5.00000000E-01;
    _x0146 = _info1/2.00000000E+00;
    if (_x0146 < 0.00000000E+00) { 
        _x0150 = -_x0146;
        _TMP53 = floor(_x0150);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0146);
    } 
    _x0154 = _TMP52/2.00000000E+00;
    if (_x0154 < 0.00000000E+00) { 
        _x0158 = -_x0154;
        _TMP53 = floor(_x0158);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0154);
    } 
    _x0162 = _TMP52/2.00000000E+00;
    if (_x0162 < 0.00000000E+00) { 
        _x0166 = -_x0162;
        _TMP53 = floor(_x0166);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0162);
    } 
    _TMP21 = _x0162 - _TMP52;
    _x0170 = _TMP21 + 5.00000000E-01;
    _px.x = floor(_x0170);
    _x0172 = _TMP52/2.00000000E+00;
    if (_x0172 < 0.00000000E+00) { 
        _x0176 = -_x0172;
        _TMP53 = floor(_x0176);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0172);
    } 
    _TMP22 = _x0172 - _TMP52;
    _x0180 = _TMP22 + 5.00000000E-01;
    _px.y = floor(_x0180);
    _x0184 = _TMP52/2.00000000E+00;
    if (_x0184 < 0.00000000E+00) { 
        _x0188 = -_x0184;
        _TMP53 = floor(_x0188);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0184);
    } 
    _TMP47 = _x0184 - _TMP52;
    _x0192 = _TMP47 + 5.00000000E-01;
    _info0182.x = floor(_x0192);
    _x0194 = _TMP52/2.00000000E+00;
    if (_x0194 < 0.00000000E+00) { 
        _x0198 = -_x0194;
        _TMP53 = floor(_x0198);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0194);
    } 
    _TMP48 = _x0194 - _TMP52;
    _x0202 = _TMP48 + 5.00000000E-01;
    _info0182.y = floor(_x0202);
    _x0204 = _TMP52/2.00000000E+00;
    if (_x0204 < 0.00000000E+00) { 
        _x0208 = -_x0204;
        _TMP53 = floor(_x0208);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0204);
    } 
    _TMP49 = _x0204 - _TMP52;
    _x0212 = _TMP49 + 5.00000000E-01;
    _info0182.z = floor(_x0212);
    _info0182.w = _TMP52;
    _x0214 = _info_nr/2.00000000E+00;
    if (_x0214 < 0.00000000E+00) { 
        _x0218 = -_x0214;
        _TMP53 = floor(_x0218);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0214);
    } 
    _TMP23 = _x0214 - _TMP52;
    _x0222 = _TMP23 + 5.00000000E-01;
    _edr3_nrl = floor(_x0222);
    _x0224 = _TMP52/2.00000000E+00;
    if (_x0224 < 0.00000000E+00) { 
        _x0228 = -_x0224;
        _TMP53 = floor(_x0228);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0224);
    } 
    _x0232 = _TMP52/2.00000000E+00;
    if (_x0232 < 0.00000000E+00) { 
        _x0236 = -_x0232;
        _TMP53 = floor(_x0236);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0232);
    } 
    _x0240 = _TMP52/2.00000000E+00;
    if (_x0240 < 0.00000000E+00) { 
        _x0244 = -_x0240;
        _TMP53 = floor(_x0244);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0240);
    } 
    _TMP24 = _x0240 - _TMP52;
    _x0248 = _TMP24 + 5.00000000E-01;
    _pxr = floor(_x0248);
    _x0250 = _info_nd/2.00000000E+00;
    if (_x0250 < 0.00000000E+00) { 
        _x0254 = -_x0250;
        _TMP53 = floor(_x0254);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0250);
    } 
    _x0258 = _TMP52/2.00000000E+00;
    if (_x0258 < 0.00000000E+00) { 
        _x0262 = -_x0258;
        _TMP53 = floor(_x0262);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0258);
    } 
    _TMP25 = _x0258 - _TMP52;
    _x0266 = _TMP25 + 5.00000000E-01;
    _edr3_ndu = floor(_x0266);
    _x0268 = _TMP52/2.00000000E+00;
    if (_x0268 < 0.00000000E+00) { 
        _x0272 = -_x0268;
        _TMP53 = floor(_x0272);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0268);
    } 
    _x0276 = _TMP52/2.00000000E+00;
    if (_x0276 < 0.00000000E+00) { 
        _x0280 = -_x0276;
        _TMP53 = floor(_x0280);
        _TMP52 = -_TMP53;
    } else {
        _TMP52 = floor(_x0276);
    } 
    _TMP26 = _x0276 - _TMP52;
    _x0284 = _TMP26 + 5.00000000E-01;
    _pxd = floor(_x0284);
    _TMP27 = dot(vec4( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00, 1.00000000E+00), _info0182);
    _x0288 = _TMP27 + 5.00000000E-01;
    _aux = floor(_x0288);
    if (_aux >= 6.00000000E+00) { 
        if (_aux == 6.00000000E+00) { 
            _TMP28 = vec3( -1.00000000E+00, 2.00000000E+00, 5.00000000E-01);
        } else {
            if (_aux == 7.00000000E+00) { 
                _TMP29 = vec3( 2.00000000E+00, -1.00000000E+00, 5.00000000E-01);
            } else {
                if (_aux == 8.00000000E+00) { 
                    _TMP30 = vec3( -1.00000000E+00, 3.00000000E+00, 5.00000000E-01);
                } else {
                    if (_aux == 9.00000000E+00) { 
                        _TMP31 = vec3( 3.00000000E+00, -1.00000000E+00, 5.00000000E-01);
                    } else {
                        if (_aux == 1.00000000E+01) { 
                            _TMP32 = vec3( 3.00000000E+00, 1.00000000E+00, 1.50000000E+00);
                        } else {
                            _TMP32 = vec3( 1.00000000E+00, 3.00000000E+00, 1.50000000E+00);
                        } 
                        _TMP31 = _TMP32;
                    } 
                    _TMP30 = _TMP31;
                } 
                _TMP29 = _TMP30;
            } 
            _TMP28 = _TMP29;
        } 
        _slep = _TMP28;
    } else {
        if (_aux == 0.00000000E+00) { 
            _TMP33 = vec3( 1.00000000E+00, 1.00000000E+00, 7.50000000E-01);
        } else {
            if (_aux == 1.00000000E+00) { 
                _TMP34 = vec3( 1.00000000E+00, 1.00000000E+00, 5.00000000E-01);
            } else {
                if (_aux == 2.00000000E+00) { 
                    _TMP35 = vec3( 2.00000000E+00, 1.00000000E+00, 5.00000000E-01);
                } else {
                    if (_aux == 3.00000000E+00) { 
                        _TMP36 = vec3( 1.00000000E+00, 2.00000000E+00, 5.00000000E-01);
                    } else {
                        if (_aux == 4.00000000E+00) { 
                            _TMP37 = vec3( 3.00000000E+00, 1.00000000E+00, 5.00000000E-01);
                        } else {
                            _TMP37 = vec3( 1.00000000E+00, 3.00000000E+00, 5.00000000E-01);
                        } 
                        _TMP36 = _TMP37;
                    } 
                    _TMP35 = _TMP36;
                } 
                _TMP34 = _TMP35;
            } 
            _TMP33 = _TMP34;
        } 
        _slep = _TMP33;
    } 
    if (_dir.x*_dir.y > 0.00000000E+00) { 
        _TMP38 = abs(_pos);
    } else {
        _TMP38 = abs(_pos.yx);
    } 
    _fp1 = vec3(_TMP38.y, _TMP38.x, -1.00000000E+00);
    _color = _TMP9.xyz;
    if (_aux < 1.00000000E+01) { 
        _TMP39 = dot(_fp1, _slep);
        _x0296 = _TMP39/(2.00000000E+00*VARdelta.x) + 5.00000000E-01;
        _TMP50 = min(1.00000000E+00, _x0296);
        _TMP297 = max(0.00000000E+00, _TMP50);
        _TMP40 = _TMP8.xyz + _px.y*(_TMP5.xyz - _TMP8.xyz);
        _TMP41 = _TMP7.xyz + _px.y*(_TMP6.xyz - _TMP7.xyz);
        _TMP42 = _TMP40 + _px.x*(_TMP41 - _TMP40);
        _color = _TMP9.xyz + _TMP297*(_TMP42 - _TMP9.xyz);
    } else {
        if (bool(_edr3_nrl)) { 
            _TMP43 = dot(_fp1, vec3( 3.00000000E+00, 1.00000000E+00, 1.50000000E+00));
            _x0314 = _TMP43/(2.00000000E+00*VARdelta.x) + 5.00000000E-01;
            _TMP50 = min(1.00000000E+00, _x0314);
            _TMP315 = max(0.00000000E+00, _TMP50);
            _TMP44 = _TMP11.xyz + _pxr*(_TMP10.xyz - _TMP11.xyz);
            _color = _TMP9.xyz + _TMP315*(_TMP44 - _TMP9.xyz);
        } else {
            if (bool(_edr3_ndu)) { 
                _TMP45 = dot(_fp1, vec3( 1.00000000E+00, 3.00000000E+00, 1.50000000E+00));
                _x0328 = _TMP45/(2.00000000E+00*VARdelta.x) + 5.00000000E-01;
                _TMP50 = min(1.00000000E+00, _x0328);
                _TMP329 = max(0.00000000E+00, _TMP50);
                _TMP46 = _TMP12.xyz + _pxd*(_TMP11.xyz - _TMP12.xyz);
                _color = _TMP9.xyz + _TMP329*(_TMP46 - _TMP9.xyz);
            } 
        } 
    } 
    _ret_0 = vec4(_color.x, _color.y, _color.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif