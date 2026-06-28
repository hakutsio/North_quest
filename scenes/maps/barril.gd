extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D: 
		$AnimationPlayer.play("explosao")
		$Sprite2D2.show()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$raioExplosao/CollisionShape2D.set_deferred("disabled", false)
	for i in 10:
		var explosao = load("res://explosao_barril.tscn").instantiate()
		get_tree().root.add_child(explosao)
		explosao.global_position = global_position + Vector2(randi_range(-86,86),randi_range(-86,86)) + Vector2(0,128)
	var music = load("res://assets/audio/music/explosaoBarril.mp3")
	$AudioStreamPlayer.stream = music
	$AudioStreamPlayer.play()
	await get_tree().physics_frame
	await get_tree().physics_frame
	queue_free()

func _on_raio_explosao_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.take_damage(50)
