class_name ComponentBase extends CharacterBody2D

@export var is_falling: bool = true
@export var falling_speed: float = 4000

func _fall_downwards(delta) -> void: 
	velocity.y = falling_speed * delta
	move_and_slide()


func _process(delta: float) -> void:
	if is_falling:
		_fall_downwards(delta)
