extends Area2D

var direcao: Vector2

func _process(delta: float) -> void:
	translate(direcao*delta*256)

func _on_timer_timeout() -> void:
	var spell = load("res://scenes/spell.tscn").instantiate()
	if is_instance_valid(get_tree()):
		get_tree().root.call_deferred("add_child", spell)
	spell.global_position = global_position
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body is Personagem:
		body.take_damage(30)
		_on_timer_timeout()
