extends VideoStreamPlayer

func _ready():
	play()
	var music = load("res://assets/audio/music/musica2.ogg")
	$"../AudioStreamPlayer".stream = music
	$"../AudioStreamPlayer".play()
