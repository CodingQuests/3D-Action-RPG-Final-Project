extends Node3D


var camroot_h = 0
var camroot_v = 0
@export var cam_v_max = 75
@export var cam_v_min = -55
var h_sensitivity: float = 0.01
var v_sensitivity: float = 0.01
var h_acceleration: float = 10.0
var v_acceleration: float = 10.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		camroot_h += -event.relative.x * h_sensitivity
		camroot_v += event.relative.y * v_sensitivity
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	camroot_v = clamp(camroot_v, deg_to_rad(cam_v_min),deg_to_rad(cam_v_max))
	get_node("h").rotation.y = lerpf(get_node("h").rotation.y, camroot_h, delta*h_acceleration)
	get_node("h/v").rotation.x = lerpf(get_node("h/v").rotation.x, camroot_v, delta*v_acceleration)
	
	
	
	
	
	
	
	
	
	
	
	
	
