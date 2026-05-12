extends Node2D
class_name components_table

@export var components_dictionary: Dictionary[String, PackedScene] = {
	#Fillings
	"sponge_filling" : preload("res://Scenes/DessertComponents/filling_sponge.tscn"),
	"chocolate_filling" : preload("res://Scenes/DessertComponents/filling_chocolate.tscn"),
	"toffee_filling" : preload("res://Scenes/DessertComponents/filling_toffee.tscn"),
	"pink_filling" : preload("res://Scenes/DessertComponents/filling_pink.tscn"),
	#Icing
	"chocolate_icing" : preload("res://Scenes/DessertComponents/icing_chocolate.tscn"),
	"pink_icing" : preload("res://Scenes/DessertComponents/icing_pink.tscn"),
	"sprinkles_icing" : preload("res://Scenes/DessertComponents/icing_sprinkles.tscn"),
	"toffee_icing" : preload("res://Scenes/DessertComponents/icing_toffee.tscn"),
	#Toppings
	"candle_topping" : preload("res://Scenes/DessertComponents/topping_candle.tscn"),
	"cherry_topping" : preload("res://Scenes/DessertComponents/topping_cherry.tscn"),
	"fudge_topping" : preload("res://Scenes/DessertComponents/topping_fudge.tscn"),
	"strawberry_topping" : preload("res://Scenes/DessertComponents/topping_strawberry.tscn"),
	"wafer_topping" : preload("res://Scenes/DessertComponents/topping_wafer.tscn"),
}
