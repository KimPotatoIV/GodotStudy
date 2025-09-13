extends Node2D

'''
1. Timer 노드란?
	ㄴ 일정 시간이 지나면 자동으로 timeout 시그널을 실행할 수 있다
	ㄴ 반복 실행 또는 1회 실행 가능
	ㄴ ex) 쿨타임, 카운트다운, 반복 이벤트

2. Timer 노드 기본 사용법
	2-1. 에디터에서 추가
		ㄴ Timer 노드 추가
		ㄴ timeout() 시그널을 함수에 연결 -> Wait Time 1.0 설정 및 Autostart 체크
		
			func _on_timer_timeout() -> void:
				print("1초마다 실행됨")
	
	2-2. 코드에서 제어
		func _ready() -> void:
			var timer_node = Timer.new()
			timer_node.wait_time = 2.0
			timer_node.one_shot = false
			add_child(timer_node)
			timer_node.start()
			timer_node.timeout.connect(_on_timer_node_timeout)
		
		func _on_timer_node_timeout() -> void:
			print("2초마다 실행됨")

3. await를 활용한 대기 처리
	ㄴ 노드를 추가하지 않고, 코드에서 대기 가능
	
		func _ready() -> void:
			print("3초 대기 시작")
			await get_tree().create_timer(3.0).timeout
			print("3초 후 실행됨")

4. Timer vs. await 차이
	==================================================================
	Timer 노드		||	씬 트리에 존재하며 반복 실행이나 제어 가능
					||	게임 전체에서 공유하거나 멈췄다가 다시 시작 가능
	------------------------------------------------------------------
	await			||	임시 타이머를 만들어 한 번만 대기 후 삭제됨
	create_timer()	||	타이머 노드가 없어도 잠깐 기다렸다가 다음 코드 실행
					||	간단한 딜레이 처리에 적합
	==================================================================

5. 정리
	ㄴ Timer 노드 = 반복 이벤트, 상세한 제어가 필요할 때 적합
	ㄴ await + create_timer() = 간단 대기 처리에 유용
	ㄴ 실전에서는 두 가지를 혼합해서 자주 활용
'''
