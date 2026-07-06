extends CharacterBody2D
class_name Personagem
signal update_hp_bar(hp_bar_value: int)


enum State {
	IDLE,
	RUN,
	ATTACK,
	DEAD
}

@export_category("Stats")
@export var speed: int = 400
@export var attack_damage: int = 60
@export var hitpoints: int = 250

@export var next_level: String

var state: State = State.IDLE
var move_direction: Vector2 = Vector2(0,0)
var attack_speed: float
var hitpoints_max: int
var popMissao: bool = false

@onready var animation_tree: AnimationTree = $AnimationTree
@onready var animation_playback: AnimationNodeStateMachinePlayback = $AnimationTree["parameters/playback"]

func _ready() -> void:
	hitpoints_max = hitpoints
	animation_tree.set_active(true)
	calculate_stats()
	
func reproduzirSom(caminho:String, volume:float = 0.0):
	LevelData.reproduzirAudio(caminho,volume)
	
	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and popMissao == false:
		attack()

func _physics_process(_delta: float) -> void:
	if popMissao == true:
		velocity = Vector2(0, 0)
		move_and_slide()
		state = State.IDLE
		update_animation()
		return
	if not state == State.ATTACK:
		movement_loop()
		
func calculate_stats() -> void:
	attack_speed = Equations.calculate_attack_speed()
	speed = int(400 * Equations.get_level_multiplier())
	attack_damage = int(60 * Equations.get_level_multiplier())
	var time_factor: float = Equations.BASE_ATTACK_SPEED / attack_speed
	animation_tree.set("parameters/attack/TimeScale/scale", time_factor)
	print("my fuck velociti attack", attack_speed)

	
func movement_loop() -> void:
	move_direction.x = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	move_direction.y = int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	var motion: Vector2 = move_direction.normalized() * speed
	set_velocity(motion)
	move_and_slide()
	
	if state == State.IDLE or State.RUN:
		if move_direction.x < -0.01:
			$Sprite2D.flip_h = true
		elif move_direction.x > 0.01:
			$Sprite2D.flip_h = false
	 	
	
	if motion != Vector2.ZERO and state == State.IDLE:
		state = State.RUN
		update_animation()
	elif motion == Vector2.ZERO and state == State.RUN:
		state = State.IDLE
		update_animation()
		
		
func update_animation() -> void:
	match state:
		State.IDLE:
			animation_playback.travel("idle")
		State.RUN:
			animation_playback.travel("run")
		State.ATTACK:
			animation_playback.travel("attack")
			
			
func attack() -> void:
	if state == State.ATTACK:
		return
	state = State.ATTACK
	
	var mouse_pos: Vector2 = get_global_mouse_position()
	var attack_dir: Vector2 = (mouse_pos - global_position).normalized()
	reproduzirSom("res://assets/audio/music/attackEspada.mp3")
	$Sprite2D.flip_h = attack_dir.x < 0 and abs(attack_dir.x) >= abs(attack_dir.y)
	animation_tree.set("parameters/attack/BlendSpace2D/blend_position", attack_dir)
	update_animation()
	
	await get_tree().create_timer(attack_speed).timeout
	state = State.IDLE
	
func ganharVida(vida: int) -> void:
	reproduzirSom("res://assets/audio/music/comendoCarne.mp3")
	hitpoints = min(hitpoints + vida, hitpoints_max)
	@warning_ignore("integer_division")
	update_hp_bar.emit((hitpoints * 100) / hitpoints_max)
	
	
func take_damage(damage_taken: int) -> void:
	hitpoints -= damage_taken
	@warning_ignore("integer_division")
	update_hp_bar.emit((hitpoints * 100) / hitpoints_max)
	print(hitpoints)
	reproduzirSom("res://assets/audio/music/tomandoDano.mp3")
	if hitpoints <= 0:
		death()
		

func death() -> void:
	get_tree().change_scene_to_file("res://scenes/main/end_game_screen.tscn")
			
			
func _on_hit_box_area_entered(area: Area2D) -> void:
	area.owner.take_damage(attack_damage)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body is CharacterBody2D):
		get_tree().change_scene_to_file(next_level)
	pass # Replace with function body.
