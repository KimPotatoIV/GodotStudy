extends Node2D

'''
1. Group이란?
	ㄴ 여러 노드를 묶어서 한 번에 제어할 수 있는 기능
	ㄴ 하나의 노드가 여러 Group에 속할 수 있음
	ㄴ ex) "Enemy"로 등록된 모든 노드의 체력 깎기

2. Group 등록 방법
	ㄴ 에디터 -> Node -> Groups -> + 버튼 -> "Group명" 입력
	ㄴ 코드로 등록
		add_to_group("Group명")
	ㄴ 코드로 제거
		remove_from_group("Group명")

3. Group 관련 주요 함수(method)
	3-1. get_tree().get_nodes_in_group("Group명")
		ㄴ Group에 속한 노드들을 Array로 반환
		ㄴ 직접 순회하면서 개별 처리 가능
	
	3-2. get_tree().call_group("그룹명", "메서드명", 인자...)
		ㄴ Group에 속한 모든 노드에서 특정 함수를 한 번에 호출
	
	3-3. is_in_group("그룹명")
		ㄴ 해당 노드가 그룹에 속했는지 확인

4. get_nodes_in_group() vs. call_group() 차이
	4-1. get_nodes_in_group()
		ㄴ 배열로 반환하며 유연한 제어 가능
		ㄴ 메서드 존재 여부 확인 가능
	
	4-2. call_group()
		ㄴ 바로 호출하며 빠르고 간단
		ㄴ 모든 노드가 동일 함수를 가진다는 전제가 필요
'''

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var enemies: Array = get_tree().get_nodes_in_group("Enemy")
		for enemy in enemies:
			if enemy.has_method("take_damage"):
				enemy.take_damage(10)
		
	elif Input.is_action_just_pressed("ui_cancel"):
		get_tree().call_group("Enemy", "take_damage", 20)
