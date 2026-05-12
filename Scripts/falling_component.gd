extends Node2D

@onready var component_pool = ComponentsTable.components_dictionary

func _ready() -> void:
	print("spawned")
	var random_component = _randomise_component()
	var component_instance = random_component.instantiate()
	add_child(component_instance)
	

func _randomise_component() -> PackedScene:
	var chosen_key = component_pool.keys().pick_random()
	print(chosen_key)
	var random_component = component_pool[chosen_key]
	return random_component

func _fall_downwards(delta) -> void:
	position.y += 100 * delta
	pass

func _process(delta: float) -> void:
	_fall_downwards(delta)
