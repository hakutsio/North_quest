extends NinePatchRect

var contMissao:int = 0

func _on_bau_desbloquear_bau(nomeMissao:String) -> void:
	contMissao += 1
	$VBoxContainer.get_node(nomeMissao).get_node("TextureRect/TextureRect2").show()
	print(nomeMissao)
	if contMissao >= 3:
		$"../../stagio3/cerca".set_cell(Vector2i(49,56))
		$"../../stagio3/cerca".set_cell(Vector2i(49,57))
		$"../../stagio3/cerca".set_cell(Vector2i(48,57))
		$"../../stagio3/cerca".set_cell(Vector2i(48,58))

func _on_missao_1_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text =(
	"A VILA DOS CALCIFICADOS\n\n"
	+ "Após atravessar o Grande Pântano de Xunda,\n"
	+ "siga para o Norte. Lá está uma antiga vila,\n"
	+ "dominada há muitos anos pelos temidos\n"
	+ "Calcificados, guerreiros esqueletos que\n"
	+ "protegem seus domínios com determinação.\n\n"
	+ "Em algum lugar da vila está escondido o\n"
	+ "primeiro dos três Fragmentos da Chave,\n"
	+ "necessários para abrir a Estrada da Morte,\n"
	+ "o único caminho até o covil de Xunda.\n\n"
	+ "Objetivos:\n"
	+ "• Siga para o Norte.\n"
	+ "• Explore a Vila dos Calcificados.\n"
	+ "• Recupere o 1º Fragmento da Chave."
)


func _on_fechar_pressed() -> void:
	$"../../Player".popMissao = false
	$"../descricao".hide()


func _on_missao_2_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"O CAMINHO DO OESTE\n\n"
	+ "O segundo Fragmento da Chave está a Oeste\n"
	+ "da Vila dos Calcificados. Antes de seguir,\n"
	+ "certifique-se de já possuir o primeiro\n"
	+ "fragmento, pois sua volta será ainda mais\n"
	+ "difícil.\n\n"
	+ "Após recuperar o fragmento, você deverá\n"
	+ "atravessar o território dos temidos\n"
	+ "Rema Rema, xamãs que patrulham o pântano\n"
	+ "em botes e plataformas flutuantes.\n\n"
	+ "Objetivos:\n"
	+ "• Siga para o Oeste.\n"
	+ "• Recupere o 2º Fragmento da Chave.\n"
	+ "• Atravesse o território dos Rema Rema.\n"
	+ "• Chegue vivo ao outro lado."
)


func _on_missao_3_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"A ÚLTIMA FORTALEZA\n\n"
	+ "Você sobreviveu ao Corredor Polonês.\n"
	+ "Agora siga para o Oeste, onde está a\n"
	+ "Segunda Base dos Calcificados, muito mais\n"
	+ "forte e perigosa que a primeira.\n\n"
	+ "Lá repousa o terceiro e último Fragmento\n"
	+ "da Chave. Somente com os três fragmentos\n"
	+ "será possível abrir o caminho até Xunda,\n"
	+ "o Terrível Ogro.\n\n"
	+ "Após reunir a chave, siga para o Norte.\n"
	+ "Lá fica o covil de Xunda. Derrote-o e\n"
	+ "traga a paz de volta ao reino.\n\n"
	+ "Objetivos:\n"
	+ "• Siga para o Oeste.\n"
	+ "• Infiltre-se na Segunda Base dos Calcificados.\n"
	+ "• Recupere o 3º Fragmento da Chave.\n"
	+ "• Siga para o Norte.\n"
	+ "• Derrote Xunda e salve o reino."
)


func _on_bussola_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"COMO USAR A BÚSSOLA\n\n"
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


func _on_missao_10_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"O COVIL DE XUNDA\n\n"
	+ "Você recuperou os 3 Fragmentos da Chave!\n\n"
	+ "A Estrada da Morte já pode ser aberta.\n"
	+ "Somente quem reuniu todos os fragmentos\n"
	+ "consegue atravessar esse antigo caminho.\n\n"
	+ "O Covil do Ogro Xunda fica ao Norte (N)\n"
	+ "da localização do terceiro baú.\n\n"
	+ "Antes de seguir, verifique se as três\n"
	+ "missões foram concluídas. Caso contrário,\n"
	+ "a Estrada da Morte permanecerá selada.\n\n"
	+ "Quando tudo estiver pronto, siga para o\n"
	+ "Norte e prepare-se para o confronto final\n"
	+ "contra o terrível Ogro Xunda!"
)
