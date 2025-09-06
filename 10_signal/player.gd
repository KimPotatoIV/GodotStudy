extends Node2D

func _ready() -> void:
	$"../Monster".hit.connect(_on_enemy_hit)

func _on_enemy_hit(damage: int) -> void:
	print("적에게 받은 데미지: ", damage)

# Player는 Monster의 내부 동작을 직접 알 필요가 없음
# Player는 필요한 시그널만 받아서 반응하면 되기 때문에 결합도가 낮아짐
