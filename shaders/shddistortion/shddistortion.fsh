// Based on: https://github.com/did10/godot3D-effect/blob/master/3DDistortionShader.shader

const float pi = 3.1415;
const float curve = 0.35;
const float screenWidth = 1280.0;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 pos = vec2(v_vTexcoord);
	
	float top_or_bottom = (0.5 - v_vTexcoord.y);
	float left_or_right = (-sin(gl_FragCoord.x / screenWidth * pi) * curve);
	pos.y /= 1.0 + curve * 2.0;
	pos.y += top_or_bottom * left_or_right + (curve / 2.0);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, pos );
}
