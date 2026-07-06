extends StaticBody2D
signal desbloquearBau

var player
var estaAberto: bool = false

@export var codigoItem:String 

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Personagem:
		player = body
		$Sprite2D.show()


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Personagem:
		player = null 
		$Sprite2D.hide()
		
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact")and player != null and estaAberto == false:
		LevelData.reproduzirAudio("res://assets/audio/music/bauAbrindov2.mp3", 0.0)
		$AnimatedSprite2D.play("abrir")
		estaAberto = true
		if codigoItem.contains("missao"):
			emit_signal("desbloquearBau", codigoItem)
			$"../../UI/dialogo".inicializarDialogo(codigoItem)
			if codigoItem == "missao1":
				$"../../UI/bussola/Sprite2D".show()
				
