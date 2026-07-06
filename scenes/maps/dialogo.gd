extends ColorRect

var indiceDialogo:int = 0 
var dialogoAtual:Dictionary = {}

var dialogo:Dictionary = {
	"dialogoInicial": {
		"dialogo1": {
			"texto": "Tião! Finalmente encontrei você!",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo2": {
			"texto": "Baltazar? Faz tempo que não nos vemos.\n\nO que aconteceu? Você parece preocupado.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo3": {
			"texto": "O terrível Ogro Xunda está devastando nossas terras.\n\nSeus exércitos já destruíram inúmeras vilas e estão cada vez mais próximos.\nPara derrotá-lo, você precisará encontrar os Fragmentos Perdidos e restaurar os antigos portais.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo4": {
			"texto": "Então os boatos eram verdade...\n\nSe ninguém fizer nada, logo nossa vila será a próxima.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo5": {
			"texto": "Mas antes, você precisa aprender a sobreviver.\nA partir deste momento sua jornada será solitária.\nConfie nos seus instintos. E tente não morrer.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo6": {
			"texto": "Porém existe um problema...",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo7": {
			"texto": "Você não sabe se localizar.
			
			Sua primeira missão será encontrar uma Bússola Antiga escondida.
			Derrote o Cavaleiro Alado e abra o baú próximo.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo8": {
			"texto": "Use W, A, S e D para se movimentar. Clique com o botão esquerdo do mouse para atacar.
			
			Pressione F para interagir com baús.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo9": {
			"texto": "Se sua vida estiver baixa, derrote um porco ou uma ovelha para obter carne consuma-as para recuperar sua vida.
			Você pode consultar suas missões no canto superior direito da tela.
			
			Agora vá, aventureiro. Sua jornada está apenas começando!",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		}
	},
	"missao1":{
		"dialogo1":{
			"texto": "Nossa! Acho que encontrei o que eu precisava... uma Bússola Antiga!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo2":{
			"texto": "Com ela vou conseguir me orientar melhor e aprender a me localizar por essas terras.
			Agora sim! Já posso seguir minha jornada em busca dos Fragmentos Perdidos.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		}
	},
	"missao2":{
		"dialogo1": {
			"texto": "Ufa... consegui passar por todos os guerreiros alados.
			
			Este baú realmente escondia algo importante.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo2":{
			"texto": "Encontrei o Primeiro Fragmento do Portal!
			Agora falta encontrar o outro fragmento. Estou cada vez mais perto de derrotar o Ogro Xunda.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		}
	},
	"missao3":{
		"dialogo1": {
			"texto": "Que desastre... Minha vila foi completamente destruída.
			
			O Ogro Xunda e seus goblins não tiveram piedade de ninguém. Eu juro que ele vai pagar por tudo o que fez.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo2": {
			"texto": "Finalmente! Encontrei o Segundo Fragmento do Portal.
			
			Agora os fragmentos necessários já estão comigo.
			Só preciso encontrar o Portal Escarlate.
			
			",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo3":{
			"texto": "Se Baltazar estava certo, ele me levará até a Vila Escarlate. É hora de continuar minha jornada.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		}
	},
	"dialogoInicialMapa2": {
		"dialogo1": {
			"texto": "Ora, ora... até que enfim você chegou à Vila Escarlate!\n\nConfesso que achei que você fosse se perder pelo caminho de novo.\nMas vejo que a bússola está começando a fazer efeito.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo2": {
			"texto": "Mas não baixe a guarda.\nSua missão está longe de terminar.\n\nO próximo portal é a única passagem para o seu destino final.\nVocê precisará encontrá-lo para continuar sua jornada.\n\nAgora vá! O tempo está contra nós.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo3": {
			"texto": "Meu Deus... mais um portal? Ainda estou aprendendo a me localizar com essa bússola.\nBaltazar, me ajuda!\n\nQual direção eu devo seguir desta vez? Não quero acabar perdido de novo.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo4": {
			"texto": "iii ala da teus pulo malandro!",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		}
	},
	"missao5": {
		"dialogo1": {
			"texto": "Ufa... finalmente consegui passar pela terrível Vila Escarlate. Encontrei o fragmento que abre o caminho para o Pântano.\nAgora só preciso localizar o portal mais uma vez.\n\nEspero que a bússola não me deixe na mão desta vez.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		}
	},
	"dialogoInicialMapa3": {
		"dialogo1": {
			"texto": "Ora, ora... você realmente conseguiu chegar até aqui!\n\nConfesso que achei que fosse se perder no caminho. No começo você não conseguia nem encontrar o Norte!\n\nMas você aprendeu, enfrentou todos os desafios e provou que eu estava errado.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo2": {
			"texto": "Agora a parte mais difícil começa.\n\nProcure pelos 3 Fragmentos da Chave espalhados por esta região.\nQuando reunir todos eles, a Estrada da Morte será desbloqueada e você poderá seguir até o covil do Ogro Xunda.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo3": {
			"texto": "Entendido!\n\nVou encontrar os três fragmentos, abrir a Estrada da Morte e acabar de uma vez por todas com o Ogro Xunda!\n\nEssa batalha termina hoje!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo4": {
			"texto": "Você faz parecer fácil...\n\nMas espero que os Xamãs Rema Rema estejam de bom humor. Quando acordam do lado errado da cama, costumam transformar aventureiros em lembranças.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		},
		"dialogo5": {
			"texto": "Ah, e cuide para não virar poeira. Eu odiaria ter que buscar outro Herói.",
			"texturaAlvo": "res://assets/ui/art/mago.png"
		}
	},
	"missao7": {
		"dialogo1": {
			"texto": "Então... você é o Tião Gavião.
			Achei que desistiria antes mesmo de chegar à Vila dos Calcificados.Mas aqui está você... 
			
			carregando o primeiro Fragmento da Chave.
			Interessante...",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		},
		"dialogo2": {
			"texto": "Você deve ser o Ogro Xunda.Tudo o que ouvi sobre você é verdade.Suas criaturas espalham medo por onde passam.
			
			Vou encontrar os Fragmentos da Chave, abrir a Estrada da Morte e colocar um fim ao seu reinado!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo3": {
			"texto": "Hahaha... Gosto da sua coragem. Mas os próximos Fragmentos são bem protegidos.
			Dúvido muito que consiga superar meu corredor polonês...",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		},
		"dialogo4": {
			"texto": "Não consigo acreditar que pensa em me derrotar apenas com coragem.Coragem pode levá-lo até bem longe, Tião Gavião...
			Mas, quando finalmente abrir a Estrada da Morte e chegar ao meu covil...
			
			Você descobrirá que coragem, sozinha, jamais será suficiente para me derrotar! HAHAHAHA",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		}
	},
	"missao8": {
		"dialogo1": {
			"texto": "Mais um Fragmento conquistado! Estou cada vez mais perto de abrir a Estrada da Morte.
			
			Continue me esperando, Xunda... logo será a sua vez.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo2": {
			"texto": "Hahaha... Você realmente acredita que esta foi uma vitória?
			O verdadeiro desafio começa agora.
			
			À sua frente está o corredor dos meus Xamãs Rema Rema. Você não poderá alcançá-los... mas eles alcançarão você sem dificuldade.",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		},
		"dialogo3": {
			"texto": "Corra, desvie, esconda-se... faça o que quiser.No fim, seus ossos vão virar fumaça antes mesmo de encontrar o último Fragmento da Chave! Hahaha! 
			
			Jamais conseguirá superar minhas armadilhas... e muito menos meus Xamãs Rema Rema!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		}
	},
	"missao9": {
		"dialogo1": {
			"texto": "INÚTEIS!! Não consigo acreditar que vocês deixaram esse miserável atravessar 
			
			Ele sobreviveu às minhas armadilhas... e derrotou até os meus mais fortes Calcificados!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		},
		"dialogo2": {
			"texto": "Agora o seu reinado acabou, Ogro Xunda! 
			
			Tenho os três Fragmentos da Chave. o caminho para a Estrada da Morte está aberto vou acabar com todo o mal que você espalhou!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/UI Elements/UI Elements/Human Avatars/Avatars_01.png"
		},
		"dialogo3": {
			"texto": "Veremos, pequenino...
			
			Venha até o meu covil.Eu mesmo vou liquidá-lo de uma vez por todas!\n\nHahaha!",
			"texturaAlvo": "res://Tiny Swords (Free Pack)/Tiny Swords (Enemy Pack) (3)/Tiny Swords (Enemy Pack)/Enemy Pack/Enemy Avatars/Enemy Avatars_16.png"
		}
	},
}

func inicializarDialogo(tipoDialogo: String) -> void:
	$"../../Player".popMissao = true
	show()
	dialogoAtual = dialogo[tipoDialogo]
	indiceDialogo = 0
	carregarDialogo()

func carregarDialogo() -> void:
	var infoDialogoAtual = dialogoAtual[dialogoAtual.keys()[indiceDialogo]]
	$TextureRect.texture = load(infoDialogoAtual["texturaAlvo"])
	$Label.text = infoDialogoAtual["texto"]
	$Label.visible_ratio = 0 
	
func _process(delta: float) -> void:
	if $Label.visible_ratio != 1:
		$Label.visible_ratio += delta
	
	if Input.is_action_just_pressed("Pular"):
		if $Label.visible_ratio != 1:
			$Label.visible_ratio = 1
		elif $Label.visible_ratio == 1:
			indiceDialogo += 1
			if indiceDialogo > dialogoAtual.size() -1:
				hide()
				$"../../Player".popMissao = false
				return 
			carregarDialogo()
		
	
	
