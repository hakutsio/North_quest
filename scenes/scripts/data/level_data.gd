extends Node

var vitoria:bool = false


const MAX_LEVEL: int = 10
const LEVEL_THRESHOLDS: Array[int] = [
	800, 
	2000,
	4000,  
	6000,
	8000,  
	9600, 
	12000, 
	14000, 
	15000,
]

func reproduzirAudio(caminho:String, volume:float):
	var audio:AudioStreamPlayer = load("res://scenes/entities/enemies/audio.tscn").instantiate()
	
	audio.stream = load(caminho)
	audio.volume_db = volume
	get_tree().root.call_deferred("add_child", audio)
