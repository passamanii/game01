class_name SkillButton extends TextureButton

@onready var panel: Panel = $Panel
@onready var label: Label = $MarginContainer/Label
@onready var line_2d: Line2D = $Line2D

@export var nome: String = ''
@export var descricao: String = ''
@export var custo: int = 0


func _ready() -> void:
	update_lines()
	
func update_lines() -> void:
	
	if (get_parent() is SkillButton):
		line_2d.add_point(global_position + size/2)
		line_2d.add_point(get_parent().global_position + size/2)
		
var level : int = 0:
	
	set(value):
		level = value
		label.text = str(level) + '/3'

func _on_pressed() -> void:
	
	if (Player_Stats.spentable_xp >= custo):
		level = min(level+1, 3)
		panel.show_behind_parent = true
		line_2d.default_color = Color(0.671, 0.536, 0.251, 1.0)
		
		print(Player_Stats.spentable_xp)
		Player_Stats.spentable_xp -= custo
		print(Player_Stats.spentable_xp)
		var skills = get_children()
		
		for skill in skills: 
			if skill is SkillButton and level == 1:
				skill.show()
	
