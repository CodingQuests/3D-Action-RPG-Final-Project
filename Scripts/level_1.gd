extends Node3D

@onready var warrior_scene:PackedScene = preload("res://Scenes/Monsters/warrior_skelly.tscn")
@onready var mage_scene:PackedScene = preload("res://Scenes/Monsters/mage_skelly.tscn")
@onready var gridmap = get_node("GridMap")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while get_node("Monsters").get_child_count() < 10:
		var x_pos = randi_range(-40, 40)
		var z_pos = randi_range(-40, 40)
		var monster_temp
		if randi_range(0,1) == 1:
			monster_temp = warrior_scene.instantiate()
		else:
			monster_temp = mage_scene.instantiate()
		if gridmap.get_cell_item(Vector3i(x_pos, 0, z_pos)) == 0:
			monster_temp.position = Vector3(x_pos, 3, z_pos)
			monster_temp.player = get_node("player")
			get_node("Monsters").add_child(monster_temp)
	Utils.load_game()
