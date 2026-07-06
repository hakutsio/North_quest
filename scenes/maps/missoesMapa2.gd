extends NinePatchRect

var contMissao:int = 0

func _on_bau_desbloquear_bau(nomeMissao:String) -> void:
	contMissao += 1
	if contMissao == 1:
		$"../../StaticBody2D/Area2D/CollisionShape2D".set_deferred("disabled", false)
	$VBoxContainer.get_node(nomeMissao).get_node("TextureRect/TextureRect2").show()
	print(nomeMissao)


func _on_missao_1_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"RUMO À BASE ESCARLATE\n\n"
	+ "O Portal Escarlate o trouxe a uma nova\n"
	+ "região. Agora, sua missão é encontrar a\n"
	+ "Base Escarlate, onde está guardado o\n"
	+ "único Fragmento do Portal capaz de abrir\n"
	+ "o caminho para o Grande Pântano de Xunda.\n\n"
	+ "Siga em direção ao Sudeste e mantenha\n"
	+ "sua bússola sempre por perto. O caminho\n"
	+ "é perigoso, mas cada passo o aproxima do\n"
	+ "covil de Xunda, o Terrível Ogro.\n\n"
	+ "Objetivos:\n"
	+ "• Siga para o Sudeste.\n"
	+ "• Encontre a Base Escarlate.\n"
	+ "• Recupere o Fragmento do Portal.\n"
	+ "• Abra o caminho para o Grande Pântano de Xunda."
)


func _on_fechar_pressed() -> void:
	$"../../Player".popMissao = false
	$"../descricao".hide()


func _on_bussola_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"A BÚSSOLA\n\n"
	+ "A bússola mostra a direção em que você\n"
	+ "está caminhando. Ela ficará no canto\n"
	+ "inferior esquerdo da tela durante toda\n"
	+ "a aventura.\n\n"
	+ "Direções principais:\n"
	+ "• W = Norte (N)\n"
	+ "• D = Leste (L)\n"
	+ "• S = Sul (S)\n"
	+ "• A = Oeste (O)\n\n"
	+ "Direções colaterais:\n"
	+ "• W + D = Nordeste (NE)\n"
	+ "• W + A = Noroeste (NO)\n"
	+ "• S + D = Sudeste (SE)\n"
	+ "• S + A = Sudoeste (SO)\n\n"
	+ "Sempre observe a bússola antes de seguir\n"
	+ "para uma missão. Ela será sua melhor\n"
	+ "aliada para encontrar o caminho correto!"
)


func _on_missao_6_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"O Panano do XUNDA\n\n"
	+ "Tião Gavião, o Portal para o Terrível\n"
	+ "Pântano do Ogro Xunda encontra-se a\n"
	+ "Noroeste (NO) da Base Escarlate.\n\n"
	+ "Antes de seguir até lá, você precisa\n"
	+ "encontrar a Base Escarlate e recuperar\n"
	+ "o Fragmento de Portal guardado nela.\n\n"
	+ "Sem esse fragmento, o Portal Escarlate\n"
	+ "permanecerá selado e você não conseguirá\n"
	+ "atravessá-lo.\n\n"
	+ "Primeiro encontre a Base Escarlate.\n"
	+ "Depois, com o Fragmento de Portal em\n"
	+ "mãos, siga para Noroeste (W + A).\n\n"
	+ "Só então você poderá atravessar o portal\n"
	+ "e enfrentar os perigos do Terrível\n"
	+ "Pântano do Ogro Xunda."
)
