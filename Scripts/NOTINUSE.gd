class_name FallingComponent extends Node2D

@onready var component_pool = ComponentsTable.components_dictionary

var component: ComponentBase

func _ready() -> void:
	var random_component = _randomise_component()
	component = random_component.instantiate()
	add_child(component)
	component.is_falling = true


func _randomise_component() -> PackedScene:
	var chosen_key = component_pool.keys().pick_random()
	print(typeof(chosen_key))
	var random_component = component_pool[chosen_key]
	print(typeof(component_pool[chosen_key]))
	return random_component


func _fall_downwards(delta) -> void:
	position.y += 100 * delta


func _process(delta: float) -> void:
	if component.is_falling:
		_fall_downwards(delta)
	
