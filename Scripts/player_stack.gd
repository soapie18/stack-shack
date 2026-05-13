extends CharacterBody2D

@export var movement_speed: float = 400
@export var movement_lerp_weight: float = 0.8

var current_stack: Array
@onready var current_stack_point = $StackPoint

@onready var area2D = $Area2D

func _process(_delta: float) -> void:
	
	#Horizontal movement
	var direction = Input.get_axis("move_left","move_right")
	
	#NEXT - CAP MOVEMENT SO NOT OFF SCREEN
	if direction:
		velocity.x = move_toward(velocity.x, direction * movement_speed, movement_lerp_weight)
	else:
		velocity.x = move_toward(velocity.x, 0.0, movement_lerp_weight)
	
	velocity.y = 0
	
	#Raising the Area2D to be able to detect the next object falling.
	area2D.global_position = current_stack_point.global_position
	
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is ComponentBase:
		body.is_falling = false
		body.set_deferred("monitorable", false)
		body.global_position = current_stack_point.global_position
		#Reparenting the falling componenet to be a child of the plate.
		body.call_deferred("reparent", self)
	
		#Stopping further collisions for this component.
		var collider = body.get_node("CollisionShape2D")
		body.remove_child(collider)
		
	
		current_stack.append(body)
		current_stack_point = current_stack.back().get_node("StackPoint")
		
		print(current_stack)
