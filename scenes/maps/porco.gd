extends AnimatedSprite2D

@export var lista_direcoes:Array [Vector2]

var indiceDirecao:int = 0
var vida:int = 100

func _ready() -> void:
	await get_tree().create_timer(randf_range(0.4, 8)).timeout
	mudarDirecao()

func mudarDirecao() -> void:
	var tween = get_tree().create_tween()
	if global_position.x < lista_direcoes[indiceDirecao].x:
		flip_h = false
	elif global_position.x > lista_direcoes[indiceDirecao].x:
		flip_h = true
		
	tween.tween_property(self, "position", lista_direcoes[indiceDirecao],2)
	play("run")
	await tween.finished
	play("idle")
	await get_tree().create_timer(randf_range(0.4, 8)).timeout
	indiceDirecao += 1 
	
	if indiceDirecao >= lista_direcoes.size():
		indiceDirecao = 0
	mudarDirecao()
	
func take_damage(damage_taken: int) -> void:
	vida -= damage_taken
	if vida <= 0:
		death()
		
func death():
	var carne = load("res://scenes/carne.tscn").instantiate()
	get_tree().root.add_child(carne)
	carne.global_position = global_position
	queue_free()
	
