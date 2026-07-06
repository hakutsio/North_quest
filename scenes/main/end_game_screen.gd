extends Control

signal repeat_level(origin: String)
signal main_menu(origin: String)

var victorious: bool = false

func _ready() -> void:
	victorious = LevelData.vitoria
	if victorious:
		LevelData.reproduzirAudio("res://assets/audio/music/finalVitoria.mp3",0.0)
		$VB/Result.set_text("Vitória")
		$VB/Sprite2D.texture = load("res://assets/sprites/finalVitoria.png")
	else:
		LevelData.reproduzirAudio("res://assets/audio/music/gameOver.mp3",0.0)
		

func _on_repetir_pressed() -> void:
	repeat_level.emit("end_game_screen")
	LevelData.vitoria = false 
	PlayerData.level = 1
	PlayerData.experience = 0 
	get_tree().change_scene_to_file("res://scenes/maps/mapa_1.tscn")


func _on_main_menu_pressed() -> void:
	main_menu.emit("end_game_screen")
	LevelData.vitoria = false 
	get_tree().change_scene_to_file("res://scenes/ui/main_menu.tscn")
	
