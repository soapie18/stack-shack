extends Node2D

@onready var component_pool = ComponentsTable.components_dictionary

@export var component: Node2D

@export var is_falling: bool = false

func _ready() -> void:
	var random_component = _randomise_component()
	component = random_component.instantiate()
	add_child(component)


func _randomise_component() -> PackedScene:
	var chosen_key = component_pool.keys().pick_random()
	var random_component = component_pool[chosen_key]
	return random_component


func _fall_downwards(delta) -> void:
	position.y += 100 * delta


func _process(delta: float) -> void:
	if is_falling:
		_fall_downwards(delta)
	
