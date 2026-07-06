extends NinePatchRect

var contMissao:int = 0

func _on_bau_desbloquear_bau(nomeMissao:String) -> void:
	contMissao += 1
	if contMissao == 3:
		$"../../StaticBody2D/Area2D/CollisionShape2D".set_deferred("disabled", false)
	$VBoxContainer.get_node(nomeMissao).get_node("TextureRect/TextureRect2").show()
	print(nomeMissao)
	if nomeMissao == "missao1":
		$"../../mapa1/cerca".set_cell(Vector2i(38,57))
		$"../../mapa1/cerca".set_cell(Vector2i(39,57))
		$"../../mapa1/cerca".set_cell(Vector2i(40,57))
		$"../../mapa1/cerca".set_cell(Vector2i(41,57))

func _on_missao_1_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = ("A DESCOBERTA\n\n"
	+ "À sua frente está o Guarda Dourado,\n"
	+ "protetor de um antigo baú.\n\n"
	+ "Derrote-o para seguir sua jornada.\n\n"
	+ "Objetivos:\n"
	+ "• Derrote o Guarda Dourado.\n"
	+ "• Abra o baú.")


func _on_fechar_pressed() -> void:
	$"../../Player".popMissao = false
	$"../descricao".hide()


func _on_missao_2_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"O CHAMADO DO NORTE\n\n"
	+ "Agora que você domina o uso da bússola,\n"
	+ "é hora de colocá-la à prova.\n\n"
	+ "Conta a lenda que, ao extremo Norte do\n"
	+ "local onde o Guarda Dourado foi derrotado,\n"
	+ "fica a Vila Dourada. Seus guardas alados\n"
	+ "protegem um antigo monastério onde está\n"
	+ "escondido o Primeiro Fragmento do Portal.\n\n"
	+ "Você é livre para explorar o mundo,\n"
	+ "mas seguir para o Norte é o melhor\n"
	+ "caminho para continuar sua jornada.\n\n"
	+ "Objetivos:\n"
	+ "• Use a bússola para encontrar o Norte.\n"
	+ "• Chegue à Vila Dourada.\n"
	+ "• Encontre o monastério.\n"
	+ "• Recupere o Primeiro Fragmento do Portal."
)


func _on_missao_3_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"AS CINZAS DO LESTE\n\n"
	+ "A partir da vila Dourada\n"
	+ "siga para o Leste.\n\n"
	+ "Lá você encontrará a Vila do Tião Gavião,\n"
	+ "devastada pelos goblins, capangas de\n"
	+ "Xunda, o Terrível Ogro.\n\n"
	+ "Em meio ao caos, procure o antigo\n"
	+ "Monastério dos Guerreiros Azuis.\n"
	+ "Mesmo consumido pelas chamas, o\n"
	+ "Segundo Fragmento do Portal permanece\n"
	+ "intacto, aguardando um novo guardião.\n\n"
	+ "Ao recuperá-lo, o Portal Escarlate será\n"
	+ "ativado, permitindo que sua jornada\n"
	+ "continue rumo à Vila Escarlate.\n\n"
	+ "Objetivos:\n"
	+ "• Siga para o Leste partindo da vila dourada.\n"
	+ "• Encontre a Vila do Tião Gavião.\n"
	+ "• Localize o Monastério dos Guerreiros Azuis.\n"
	+ "• Recupere o Segundo Fragmento do Portal.\n"
	+ "• Após siga para Sudeste em busca do portal."
)


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


func _on_missao_4_pressed() -> void:
	$"../../Player".popMissao = true
	$"../descricao".show()
	$"../descricao/Label".text = (
	"Portal Escarlate\n\n"
	+ "Tião Gavião, o Portal Escarlate encontra-se\n"
	+ "na direção Sudeste (SE).\n\n"
	+ "Mas atenção!\n"
	+ "Você só conseguirá atravessá-lo se estiver\n"
	+ "carregando os dois Fragmentos de Portal.\n\n"
	+ "Sem eles, o portal permanecerá instável e\n"
	+ "não permitirá sua passagem.\n\n"
	+ "Use sua bússola para seguir rumo ao\n"
	+ "Sudeste (S + D) e encontre os dois\n"
	+ "fragmentos antes de tentar cruzar o\n"
	+ "Portal Escarlate.\n\n"
	+ "Boa sorte... você vai precisar!"
)
