class_name InventoryItem
extends TextureRect

@export var data: ItemData

func _ready() -> void:
	if data:
		expand_mode = TextureRect.EXPAND_IGNORE_SIZE
		stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		texture = data.item_texture
		tooltip_text = "Name: %s\n%s\nStats: %s Damage, %s Defense, %s Health" % [data.item_name, data.description, data.item_damage, data.item_defense, data.item_health]
		if data.stackable:
			var label = Label.new()
			label.text = str(data.count)
			label.position = Vector2(24,16)
			add_child(label)
func init(d: ItemData) -> void:
	data = d
func _get_drag_data(at_position: Vector2) -> Variant:
	set_drag_preview(make_drag_preview(at_position))
	return self
	
func make_drag_preview(at_position: Vector2)-> Control:
	var t := TextureRect.new()
	t.texture = self.texture
	
	t.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	t.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	t.custom_minimum_size = self.size
	t.modulate.a = 0.5
	t.position = Vector2(-at_position)
	var c:= Control.new()
	c.add_child(t)
	return c
