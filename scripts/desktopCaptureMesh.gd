extends MeshInstance3D

@onready var mesh_instance := self
var mat: ShaderMaterial
var desktop_tex: ImageTexture
var screen_capture: LiveScreenCapture
var readyTex := false

@export var screenNumber: int
@export var width: int
@export var height: int
@export var rotationAngle: int

func _ready():
	# Make material unique
	var m = mesh_instance.get_active_material(0)
	if m:
		var unique_mat = m.duplicate() as ShaderMaterial
		mesh_instance.set_surface_override_material(0, unique_mat)
		mat = unique_mat

	# Create preallocated texture
	desktop_tex = ImageTexture.new()
	mat.set_shader_parameter("desktop_tex", desktop_tex)

	# Start capture
	screen_capture = LiveScreenCapture.new()
	if screen_capture.start_capture(screenNumber, width, height, rotationAngle):
		print("Desktop capture started")
	else:
		print("Failed to start capture")

func _process(_delta):
	if not screen_capture or not mat:
		return

	var img = screen_capture.get_image_copy()
	if not img or img.is_empty():
		return
	
	img.srgb_to_linear()
	if not readyTex:
		desktop_tex.set_image(img)
		readyTex = true
	else:
		desktop_tex.update(img)

	mat.set_shader_parameter("desktop_tex", desktop_tex)
	
func _exit_tree():
	if screen_capture:
		screen_capture.stop_capture()
		screen_capture = null
