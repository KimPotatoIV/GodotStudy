extends Node2D

'''
1. AnimatedSprite2D 노드란?
	ㄴ 2D 캐릭터나 오브젝트에 애니메이션을 적용하는 노드
	ㄴ 여러 프레임 이미지를 순서대로 재생해 애니메이션 효과를 만듦

2. SpriteFrames 리소스
	ㄴ AnimatedSprite2D가 사용하는 애니메이션 데이터
	ㄴ 애니메이션 이름별로 여러 프레임을 등록 가능
	ㄴ 주요 속성
		ㄴ Animations	: "idle", "run", "jump" 등 이름 지정
		ㄴ Speed(FPS)	: 초당 재생할 프레임 수
		ㄴ Loop			: 반복 여부 설정
		ㄴ Autoplay		: 자동 재생 시작 여부 설정

3. 기본 사용법
	ㄴ 코드 예제: 아래 _process() 참고

4. 주요 메서드
	ㄴ play("Animation name")	: 지정한 이름의 애니메이션 재생
	ㄴ stop()					: 애니메이션 정지
	ㄴ is_playing() 				: 재생 여부 확인(bool 반환)
	ㄴ flip_h / flip_v			: 좌우 / 상하 반전

5. 정리
	ㄴ AnimatedSprite2D				-> 2D 애니메이션 노드
	ㄴ SpriteFrames					-> 애니메이션 데이터 저장
	ㄴ play("Animation name"), stop()	-> 코드로 제어 가능
	ㄴ flip_h / flip_v				-> 캐릭터 방향 전환 시 유용
'''

var anim_node: AnimatedSprite2D

func _ready() -> void:
	anim_node = $CharacterBody2D/AnimatedSprite2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		anim_node.play("run")
	elif Input.is_action_just_pressed("ui_cancel"):
		anim_node.play("tired")
	elif Input.is_action_just_pressed("ui_left"):
		anim_node.flip_h = not anim_node.flip_h
	elif Input.is_action_just_pressed("ui_up"):
		anim_node.flip_v = not anim_node.flip_v
