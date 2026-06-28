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
		$AnimatedSprite2D.play("abrir")
		estaAberto = true
		if codigoItem.contains("missao"):
			emit_signal("desbloquearBau", codigoItem)
			if codigoItem == "missao1":
				$"../../UI/Sprite2D".show()
				
