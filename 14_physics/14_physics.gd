extends Node2D

'''
1. 물리(Physics)란?
	ㄴ 게임 속에서 물체가 부딪히고, 튕기고, 막히는 등 일련의 과정을 의미
	ㄴ 개발자는 "물리 노드"와 "충돌 모양"을 올바르게 설정해 주면 됨

2. 충돌을 위한 기본 노드
	2-1. CollisionShape2D / CollisionPolygon2D
		ㄴ 충돌 영역을 정의하는 노드
		ㄴ 사각형, 원, 다각형 등 다양한 모양 지원
		ㄴ PhysicsBody2D 계열 혹은 Area2D 노드 같은 상위 노드의 자식으로 붙여야 동작
	
	2-2. PhysicsBody2D 계열
		ㄴ StaticBody2D
			ㄴ 절대 움직이지 않는 물체 (벽, 땅)
		
		ㄴ RigidBody2D
			ㄴ 물리 법칙(힘, 중력, 마찰 등)에 따라 자동으로 움직이는 물체 (박스, 공)
			ㄴ 좌표를 직접 바꾸는 대신 apply_force(), apply_impulse() 등으로
				힘을 가해 움직임
		
		ㄴ CharacterBody2D
			ㄴ 플레이어, NPC 같은 캐릭터 전용
			ㄴ move_and_slide() 같은 이동 함수 제공
		
		ㄴ AnimatableBody2D
			ㄴ 애니메이션이나 코드로 직접 움직이지만, 물리 충돌은 정상적으로 반영됨
			ㄴ ex) 움직이는 발판, 미는 블록, 애니메이션으로 움직이는 함정
	
	2-3. Area2D
		ㄴ 충돌을 감지만 하는 용도
		ㄴ 실제로 막히거나 튕기지는 않음 (아이템 줍기, 함정 트리거, 공격 범위 감지)
		ㄴ 주요 시그널
			ㄴ body_entered(body): 다른 PhysicsBody2D가 들어왔을 때
			ㄴ body_exited(body)	: PhysicsBody2D가 나갔을 때
			ㄴ area_entered(area): 다른 Area2D가 들어왔을 때
			ㄴ area_exited(area)	: Area2D가 나갔을 때

3. 정리
	ㄴ CollisionShape2D / CollisionPolygon2D		->	충돌 모양
	
	ㄴ StaticBody2D			->	고정된 물체
	ㄴ RigidBody2D			->	힘/중력에 의해 움직이는 물체
	ㄴ CharacterBody2D		->	캐릭터/NPC 전용
	ㄴ AnimatableBody2D		->	애니메이션/코드로 움직이는 물체
	
	ㄴ Area2D				->	충돌 감지용으로 시그널로 처리
'''
