extends MeshInstance3D

@export var rotationSpeed : float;
@export var rotationVector : Vector3;

func _process(delta: float) -> void:
	self.rotate(rotationVector,rotationSpeed*delta)
