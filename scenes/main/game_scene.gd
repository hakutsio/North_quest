extends Node2D

signal levelup

@export var end_game_screen_packed: PackedScene

var total_enemies: int
var killes_enemies: int = 0

@onready var HUD: Control = $"../UI/HUD"
	
func enemy_died(exp_reward: int) -> void:
	print(exp_reward)
	killes_enemies += 1
	experience_gained(exp_reward)
	if killes_enemies == total_enemies:
		display_end_game_screen(true)

func experience_gained(exp_gain: int) -> void:
	if PlayerData.level == LevelData.MAX_LEVEL:
		return
	var new_experience: int = PlayerData.experience + exp_gain
	if new_experience >= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]:
		level_up(new_experience)
	else:
		PlayerData.experience = new_experience
		
func level_up(new_experience: int) -> void:
	print("yay, I got more powerful")
	new_experience -= LevelData.LEVEL_THRESHOLDS[PlayerData.level - 1]
	PlayerData.level += 1
	PlayerData.experience = new_experience
	levelup.emit()
	HUD.update_level_indicator()
	
func display_end_game_screen(victorious: bool) -> void:
	var end_game_screen_scene: Control = end_game_screen_packed.instantiate()
	end_game_screen_scene.victorious = victorious 
	
	var scene_handler: Node = get_node("/root/SceneHandler")
	end_game_screen_scene.repeat_level.connect(scene_handler.new_game)
	end_game_screen_scene.main_menu.connect(scene_handler.load_main_menu)
	$UI.add_child(end_game_screen_scene)
	
	await get_tree().create_timer(0.4).timeout
	var player: CharacterBody2D = get_tree().get_first_node_in_group("player")
	player.set_process_node(PROCESS_MODE_DISABLED)
	var enemies: Array = get_tree().get_first_nodes_in_group("enemies")
	for i: CharacterBody2D in enemies:
		i.set_process_node(PROCESS_MODE_DISABLED)
	
	


func _on_aranha_filha_died(exp: int) -> void:
	pass # Replace with function body.





func _on_goblin_tocha_9_died(exp: int) -> void:
	pass # Replace with function body.


func _on_enemy_7_died(exp: int) -> void:
	pass # Replace with function body.
