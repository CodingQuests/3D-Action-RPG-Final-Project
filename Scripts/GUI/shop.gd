extends CanvasLayer


@onready var shop_item_scene:PackedScene = preload("res://Scenes/GUI/shop_item.tscn")
var current_item: ItemData

func _ready() -> void:
	for i in Game.items:
		if i != "default":
			var shop_item_temp = shop_item_scene.instantiate()
			shop_item_temp.item_info = Game.items[i]
			shop_item_temp.get_node("image").texture = Game.items[i].item_texture
			get_node("shop_items").add_child(shop_item_temp)
	get_node("item_info").hide()
func _on_buy_pressed() -> void:
	get_node("../container/Inventory").add_item(str(current_item.item_name))
func _on_close_pressed() -> void:
	
	get_tree().paused = false
	Game.shopping = false
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	self.hide()
