extends Node2D

func _ready() -> void:
	add_to_group("Enemy")

func take_damage(amount: int) -> void:
	print("Take damage: ", amount)
