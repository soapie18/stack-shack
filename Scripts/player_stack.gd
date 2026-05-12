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
	
	move_and_slide()
	
	#var collision = move_and_collide(velocity * delta)
	
	#if collision:
		#var other = collision.get_collider()
		#print(other)
		#typeof(other)
		#var instance = other.instantiate()
		#instance.global_position = current_stack.back().stack_point.global_position
		#instance.is_falling = false
		#add_child(instance)
		#
		#current_stack.append(other)


func _on_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	print(typeof(body))
	
	
