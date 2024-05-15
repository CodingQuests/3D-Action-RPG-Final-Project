extends Node

var AIController

func _ready() -> void:
	AIController = get_parent().get_parent()
	AIController.get_node("AnimationTree").get("parameters/playback").travel("Death")
	
func _physics_process(delta: float) -> void:
	if AIController:
		AIController.velocity.x = 0
		AIController.velocity.z = 0
		
