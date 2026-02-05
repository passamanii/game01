extends Node

signal timer_end

var day_time: int = 600

func _ready() -> void:
	set_process(false)

func _process(delta: float) -> void:
	tic_tac(delta)

func start_timer() -> void:
	set_process(true)

func tic_tac(delta) -> void:
	day_time -= delta
	
	if day_time <= 0:
		emit_signal("timer_end")

func stop_timer() -> void:
	set_process(false)
