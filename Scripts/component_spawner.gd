extends Node2D

@onready var falling_component = preload("res://Scenes/falling_component.tscn")

func _ready() -> void:
	_spawn_trigger()

func _spawn_trigger():
	await _spawning()

func _spawning():
	var falling_instance = falling_component.instantiate()
	falling_instance.global_position = self.global_position
	falling_instance.is_falling = true
	get_tree().root.add_child(falling_instance)
	
	await get_tree().create_timer(randi() % 6).timeout
	
	_spawn_trigger()


func _process(_delta) -> void:
	pass
