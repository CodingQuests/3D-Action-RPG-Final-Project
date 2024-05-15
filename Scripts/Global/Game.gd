extends Node

signal health_changed(damage)
signal level_up()

var items = {
	"long sword": preload("res://Scenes/GUI/Inventory/Item Resources/Long Sword.tres"),
	"small potion": preload("res://Scenes/GUI/Inventory/Item Resources/small potion.tres"),
	"body armor": preload("res://Scenes/GUI/Inventory/Item Resources/body_armor.tres"),
}
var gold: int = 100
var player_health: int = 2
var player_health_max: int = 2
var right_hand_equipped: ItemData
var body_equipped: ItemData

var player_damage: int = 0
var player_defense: int = 0

var current_exp: int = 0
var exp_to_next_level: int = 100
var player_level: int = 1

var shopping: bool = false
func _ready() -> void:
	self.process_mode = Node.PROCESS_MODE_ALWAYS
	
func _process(delta: float) -> void:
	player_damage = right_hand_equipped.item_damage + body_equipped.item_damage
	player_defense = right_hand_equipped.item_defense + body_equipped.item_defense
func damage_player(amount):
	self.emit_signal("health_changed", amount)
	player_health -= amount

func heal_player(amount):
	self.emit_signal("health_changed", -amount)
	player_health += amount
	if player_health > player_health_max: #Avoids overhealling
		player_health = player_health_max

func gain_exp(exp_amount: int):
	current_exp += exp_amount
	while current_exp >= exp_to_next_level:
		#level up
		self.emit_signal("level_up")
		player_level += 1
		player_health_max += player_level*10
		player_health = player_health_max
		current_exp -= exp_to_next_level
		exp_to_next_level = round(exp_to_next_level*1.3)
		exp_to_next_level = exp_to_next_level* pow(1.2, player_level - 1)
