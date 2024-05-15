extends Node

var AIController

func _ready() -> void:
	AIController = get_parent().get_parent()
	if AIController.Awakening:
		await AIController.get_node("AnimationTree").animation_finished
	AIController.get_node("AnimationTree").get("parameters/playback").travel("Idle")
func _physics_process(delta: float) -> void:
	if AIController:
		AIController.velocity.x = 0
		AIController.velocity.z = 0
		
