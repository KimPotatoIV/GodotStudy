extends Node2D

'''
1. 시그널(Signal)이란?
	ㄴ Node가 어떤 사건(Event)을 외부로 알리는 메커니즘
	ㄴ 한 노드(Node)가 다른 노드의 내부 동작을 직접 호출하지 않고도 알림을 보내고,
		다른 노드들이 그 알림을 받아 처리할 수 있게 해 결합도를 낮추는 패턴
	ㄴ 관찰자(Observer) 패턴을 구현한 것과 비슷한 개념
	
	1-1. 시그널의 종류
		ㄴ 엔진(내장) 시그널
			ㄴ 엔진이 이미 정의한 시그널
		ㄴ 커스텀 시그널
			ㄴ 사용자가 스크립트에서 signal 키워드로 선언하는 시그널로
				커스텀 시그널도 엔진 시그널과 동일한 방식으로 연결/발신이 가능

2. 기본 사용법
	2-1. 시그널 선언
		ㄴ signal hit
		ㄴ signal hit(damage: int)
			ㄴ 전달 인자 타입은 원하는 대로 지정 가능
	
	2-2. 시그널 발산(emit)
		ㄴ hit.emit()
		ㄴ hit.emit(10)
	
	2-3. 시그널 연결(connect)
		ㄴ 에디터에서 연결
			ㄴ 노드 선택 -> Signals 탭 -> 원하는 시그널 더블 클릭 -> 함수 자동 생성됨
		
		ㄴ 코드로 연결
			var enemy = Enemy.new()
			add_child(enemy)
			enemy.hit.connect(_on_enemy_hit)
			
			func _on_enemy_hit(damage: int) -> void:
				print("적에게 받은 데미지: ", damage)
'''
