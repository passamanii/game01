extends Node

@onready var library_animation: AnimationPlayer = $LibraryAnimation

var player: BasePlayer 

func _ready() -> void:
	if !Cutscenes.showed_library_cutscenes:
		player = get_tree().get_first_node_in_group("Player")
		player.set_physics_process(false)
		first_time_in_library_cutscene()

func move_backwards() -> void:
	player.animation_player.play("Walking_Back")
	
func move_right() -> void:
	player.animation_player.play("Walking_Right")

func first_time_in_library_cutscene() -> void:
	print("Acho que é aqui que vou ter que ficar durante o resto da semana...")
	await get_tree().create_timer(2).timeout

	# Começa animação da biblioteca
	library_animation.play("First_Enter_In_Library")
	await get_tree().create_timer(1).timeout
	print("eu tenho prova essa SEXTA!!!")
	
	# Espera a animação da biblioteca terminar
	await library_animation.animation_finished

	# Para animação do player
	player.animation_player.play("Idle_Right")
	print("Bibliotecário: Bom dia! Como posso te ajudar?")
	await get_tree().create_timer(0.1).timeout

	print("Aluno: Eu... eu tenho prova na sexta e não estudei nada.")
	await get_tree().create_timer(0.1).timeout

	print("Aluno: Eu preciso aprender tudo até lá. O senhor conhece algum livro que possa me salvar?")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Salvar...")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Existem livros nesta biblioteca que não estão no catálogo.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Livros antigos. Esquecidos.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Alguns dizem que são... amaldiçoados.")
	await get_tree().create_timer(0.1).timeout

	print("Aluno: Amal... o quê?")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Eles prometem conhecimento rápido.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Rápido demais.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Mas há um problema.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Eles estão trancados nos armários do setor restrito.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Protegidos por uma senha que ninguém jamais conseguiu decifrar.")
	await get_tree().create_timer(0.1).timeout

	print("Aluno: E... qual é essa senha?")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: A senha está espalhada pela faculdade.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Cada número escondido onde menos se espera.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Laboratórios. Quadros. Murais antigos.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Apenas quem realmente precisa do conhecimento consegue enxergar.")
	await get_tree().create_timer(0.1).timeout

	print("Aluno: Eu preciso. Muito.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Hmmm...")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Normalmente eu não ajudaria.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Mas...")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Como você é um dev, eu te dou a senha...")
	await get_tree().create_timer(0.1).timeout

	print("*O bibliotecário tira um papel velho e amarelado do bolso do casaco.*")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Anote bem.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: 4... 2... 6... 9.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Mas cuidado.")
	await get_tree().create_timer(0.1).timeout

	print("Bibliotecário: Nem todo conhecimento quer ser encontrado.")
	await get_tree().create_timer(0.1).timeout

	print("*Você sente um arrepio enquanto segura o papel.*")
	await get_tree().create_timer(0.1).timeout

	print("Objetivo atualizado: Encontrar o armário do setor restrito.")
	player.set_physics_process(true)
