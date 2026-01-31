shader_type spatial;
render_mode unshaded, cull_disabled;

uniform sampler2D desktop_tex;

void fragment() {
    vec4 c = texture(desktop_tex, UV);
	 c.rgb = pow(c.rgb, vec3(2.2)) ;
    ALBEDO = c.rgb; // swap BGR -> RGB in shader
	//ALBEDO = vec3(0);
}
