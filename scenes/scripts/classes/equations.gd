class_name Equations
extends Node

const BASE_ATTACK_SPEED: float = 0.6

const MAX_LEVEL := 10
const MAX_MULTIPLIER := 2.0

static func get_level_multiplier() -> float:
	return 1.0 + float(PlayerData.level - 1) / (MAX_LEVEL - 1)

static func calculate_attack_speed() -> float:
	return BASE_ATTACK_SPEED / get_level_multiplier()
