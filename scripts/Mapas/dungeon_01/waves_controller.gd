extends Node

@export_category("Objects")
@export var wave_label: Label
@export var time_left_label: Label
@export var spawner_controller: Node
@export var cutscene_manager: Dungeon01CutsceneManager

var seconds_left: int = 60
var actual_wave: int = 1

signal finished_dungeon_01(win: bool)

func format_time() -> String:
	if seconds_left == 60:
		return "1:00"
	
	return "0:" + str(seconds_left).lpad(2, "0")

func wave_finished() -> void:
	spawner_controller.pause()
	
	for enemy in get_tree().get_nodes_in_group("Enemy"):
		enemy.queue_free()
		
	seconds_left = 60
	actual_wave += 1
	wave_label.text = "Wave " + str(actual_wave)
	spawner_controller.start()
	print(actual_wave)

func win() -> void:
	spawner_controller.pause()
	for enemy in get_tree().get_nodes_in_group("Enemy"):
		enemy.queue_free()
	emit_signal("finished_dungeon_01", true)

func _on_spawn_timer_timeout() -> void:
	seconds_left -= 10
	if (seconds_left < 0 and actual_wave >= 5):
		win()
		time_left_label.text = "0:00"
		return
	elif (seconds_left < 0):
		if (actual_wave == 1 and !Cutscenes_Controller.showed_first_wave_finished_cutscene):
			cutscene_manager.first_time_finishing_wave_1_cutscene()
			await cutscene_manager.cutscene_finished
			
		wave_finished()
		
	time_left_label.text = format_time()
