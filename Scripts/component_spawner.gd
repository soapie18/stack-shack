extends Node2D

@onready var falling_component = preload("res://Scenes/falling_component.tscn")

func _process(_delta) -> void:
	#ASAP - move this to happen in a coroutine!
	var falling_instance = falling_component.instantiate()
	falling_instance.global_position = self.global_position
	get_tree().root.add_child(falling_instance)
