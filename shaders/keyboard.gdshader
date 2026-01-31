shader_type spatial;

uniform sampler2D mask_texture;
uniform float glow_strength : hint_range(0.0, 10.0) = 3.0;

vec3 hsv_to_rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0/3.0, 1.0/3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void fragment() {
    float mask = texture(mask_texture, UV).r;

    float hue = fract(TIME * 0.2);
    vec3 rgb = hsv_to_rgb(vec3(hue, 1.0, 1.0));

    EMISSION = rgb * mask * glow_strength;
	ALBEDO = rgb * mask;
}
