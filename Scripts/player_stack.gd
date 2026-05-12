extends CharacterBody2D

@export var movement_speed: float = 400
@export var movement_lerp_weight: float = 0.8

var current_stack: Array

func _process(delta: float) -> void:
	
	#Horizontal movement
	var direction = Input.get_axis("move_left","move_right")
	
	#NEXT - CAP MOVEMENT SO NOT OFF SCREEN
	if direction:
		velocity.x = move_toward(velocity.x, direction * movement_speed, movement_lerp_weight)
	else:
		velocity.x = move_toward(velocity.x, 0.0, movement_lerp_weight)
	
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		var other = collision.get_collider()
		print(other)
		#var instance = other.instantiate()
		#instance.global_position = current_stack.back().stack_point.global_position
		#other.is_falling = false
		#add_child(instance)
		#add_child(other)
		
		current_stack.append(other)
		
		
