extends NinePatchRect

func _on_bau_desbloquear_bau(nomeMissao:String) -> void:
	$VBoxContainer.get_node(nomeMissao).get_node("TextureRect/TextureRect2").show()
	print(nomeMissao)
