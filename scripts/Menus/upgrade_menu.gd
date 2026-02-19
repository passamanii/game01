extends Control

@onready var label: Label = $"Menu_Brackground/Panel(Xp)/Label"

var base: String = 'XP: '

func _process(_delta: float) -> void:
	var xp: String = str(Player_Stats.spentable_xp)
	update_xp_shown(xp)
	
func update_xp_shown(xp):
	label.text = base + xp
