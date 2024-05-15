extends Control


func _process(delta: float) -> void:
	get_node("stats_label").text = "
	Player Health: %s
	Player Attack: %s
	Player Defense: %s
	Player Level: %s
	Player EXP: %s / %s
	" % [Game.player_health, Game.player_damage, Game.player_defense, Game.player_level, Game.current_exp, Game.exp_to_next_level]
	
