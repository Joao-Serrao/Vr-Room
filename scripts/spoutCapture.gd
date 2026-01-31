extends MeshInstance3D

@onready var mesh_instance := self
var mat: ShaderMaterial
var spout_tex: SpoutTexture

@export var senderName: String

var desktop_tex_assigned = false

func _ready():
	# Create the SpoutTexture
	spout_tex = SpoutTexture.new()
	spout_tex.sender_name = senderName
	
	# Make material unique
	var m = mesh_instance.get_active_material(0)
	if m:
		var unique_mat = m.duplicate() as ShaderMaterial
		mesh_instance.set_surface_override_material(0, unique_mat)
		mat = unique_mat
		
		# Assign the SpoutTexture to the shader
		mat.set_shader_parameter("desktop_tex", spout_tex)
