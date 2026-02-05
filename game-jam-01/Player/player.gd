extends CharacterBody2D

var speed: int = 200;

func _physics_process(_delta: float) -> void:
	move()
	
func move() -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	
	velocity = speed * direction;
	move_and_slide()
