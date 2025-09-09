extends Node2D

func _init() -> void:
	print("Child: _init()")

func _enter_tree() -> void:
	print("Child: _enter_tree()")

func _ready() -> void:
	print("Child: _ready()")
