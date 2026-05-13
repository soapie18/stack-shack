extends Node2D

@onready var component_pool = ComponentsTable.components_dictionary
var component: ComponentBase


func _ready() -> void:
	_spawn_trigger()


func _spawn_trigger():
	await _spawning()


func _spawning():
	var random_component = _randomise_component()
	component = random_component.instantiate()
	add_child(component)
	component.is_falling = true
	
	await get_tree().create_timer(randf_range(4,8)).timeout
	
	_spawn_trigger()


func _randomise_component() -> PackedScene:
	var chosen_key = component_pool.keys().pick_random()
	print(typeof(chosen_key))
	var random_component = component_pool[chosen_key]
	print(typeof(component_pool[chosen_key]))
	return random_component
