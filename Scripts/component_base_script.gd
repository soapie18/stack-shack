extends CharacterBody2D

@export var dessert_resource: dessert_component

@onready var sprite = $Sprite2D

#func _ready() -> void:
	#sprite.texture = dessert_resource.sprite
