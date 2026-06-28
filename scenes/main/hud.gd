extends Control

func _ready() -> void:
	update_level_indicator()
	
	
func update_level_indicator() -> void:
	%CurrentLevel.set_text(str(PlayerData.level))
	

func _on_player_update_hp_bar(hp_bar_value: int) -> void:
	%HitpointsBar.value = hp_bar_value
