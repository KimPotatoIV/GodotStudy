extends Node2D

signal hit(damage: int)

func _ready() -> void:
	hit.emit(10)

# Monster는 누가 듣는지는 신경 쓸 필요가 없음
