class_name ComponentBase extends CharacterBody2D

@export var is_falling: bool = true
@export var falling_speed: float = 4000

func _fall_downwards(delta) -> void:
	#Change this to move_and_slide() based movement so it doesnt crash against the plate. 
	velocity.y = falling_speed * delta
	move_and_slide()


func _process(delta: float) -> void:
	if is_falling:
		_fall_downwards(delta)
	
