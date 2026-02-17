extends Node2D

@export var player: BasePlayer
@export var enemy: PackedScene
@export var spawn_timer: Timer

const distance = 1500

func spawn_enemy() -> void:
	var pos = get_random_position()
	
	var enemy_instance: BaseEnemy = enemy.instantiate()
	enemy_instance.position = pos
	
	get_tree().current_scene.add_child(enemy_instance)

func _on_spawn_timer_timeout() -> void:
	spawn_enemy()

func get_random_position() -> Vector2:
	return player.position + distance * Vector2.RIGHT.rotated(randf_range(0, 2 * PI))
