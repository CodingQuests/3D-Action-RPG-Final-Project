extends Area3D


var rng: int

func _ready() -> void:
	var tween = create_tween()
	var rng_position = Vector3(randi_range(-1,1), 1,randi_range(-1,1))
	tween.tween_property(self, "position", position + rng_position, 0.3)
	
	rng = randi_range(0,2)
	get_node("potion").hide()
	get_node("sword").hide()
	get_node("body").hide()
	match rng:
		0: #long sword
			get_node("sword").show()
		1: # potion
			get_node("potion").show()
		2: #body armor
			get_node("body").show()


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		match rng:
			0:
				get_node("../../GUI/container/Inventory").add_item("long sword")
			1:
				get_node("../../GUI/container/Inventory").add_item("small potion")
			2:
				get_node("../../GUI/container/Inventory").add_item("body armor")
		get_node("pickup").play()
		self.hide()


func _on_pickup_finished() -> void:
	self.queue_free()
