extends Sprite2D

var personagem_alcance: CharacterBody2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: personagem_alcance = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D: personagem_alcance = null 

func _process(delta: float) -> void:
	print(personagem_alcance)
	if personagem_alcance != null:
		$AnimationPlayer.play("attack")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$AnimationPlayer.play("idle")
	
func attack_bomb() -> void:
	if personagem_alcance != null:
		var direcao = global_position.direction_to(personagem_alcance.global_position)
		var bomba = preload("res://scenes/bomba.tscn").instantiate()
		add_child(bomba)
		bomba.direcao = direcao
	
	
	
	
	
	
	
	
