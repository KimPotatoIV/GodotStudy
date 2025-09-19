extends Node2D

'''
1. AudioStreamPlayer 노드란?
	ㄴ 오디오(배경음, 효과음 등)를 재생하는 노드
	ㄴ 주로 두 가지 용도로 구분
		ㄴ BGM (배경음악 재생 전용)
		ㄴ SFX (효과음 재생 전용)

2. Audio 노드 종류
	ㄴ AudioStreamPlayer		: 일반 오디오 재생 (배경음악, 효과음)
	ㄴ AudioStreamPlayer2D	: 2D 공간에서 위치 기반 사운드
	ㄴ AudioStreamPlayer3D	: 3D 공간에서 위치 기반 사운드

3. 주요 메서드 & 속성
	ㄴ stream		-> 재생할 오디오 파일
	ㄴ autoplay		-> 씬 시작 시 자동 재생 여부
	ㄴ play()		-> 재생 시작
	ㄴ stop()		-> 재생 정지
	ㄴ playing		-> 재생 중인지 (bool 반환)
	ㄴ volume_db		-> 음량 조절
	ㄴ pitch_scale 	-> 재생 속도/음정 변화
	ㄴ bus			-> 연결할 오디오 버스 이름

4. 오디오 믹싱 (기본)
	4-1. bus로 구분
		ㄴ Audio -> Bus Layout에서 버스 추가 가능
		ㄴ 아래 예제와 같이 코드로도 추가 가능
		ㄴ AudioStreamPlayer의 bus 속성에 원하는 버스 이름 지정
		ㄴ 볼륨 및 효과를 각각 한 번에 조절 가능
	
	4-2. Audio 노드로 구분
		ㄴ Audio 노드 여러 개 생성
		ㄴ ex) BGM, SFX 분리

5. 정리
	ㄴ 오디오는 AudioStreamPlayer (2D / 3D)로 재생
	ㄴ 반복 음원은 Loop 설정
	ㄴ 효과음은 play() 호출 시마다 실행
	ㄴ 버스 시스템 혹은 Audio 노드 구분으로 BGM 및 효과음 따로 관리 가능
'''

const BGM_STREAM: AudioStream = \
	preload("res://20_audio/audio/flappy_ghost.wav")
const SFX_STREAM: AudioStream = \
	preload("res://20_audio/audio/game_over.wav")

var bgm: AudioStreamPlayer
var sfx: AudioStreamPlayer

func _ready() -> void:
	bgm = $AudioStreamPlayerBGM
	sfx = $AudioStreamPlayerSFX
	
	AudioServer.add_bus(1)
	AudioServer.add_bus(2)
	
	AudioServer.set_bus_name(1, "BGM")
	AudioServer.set_bus_name(2, "SFX")
	
	bgm.set_bus("BGM")
	sfx.set_bus("SFX")
	
	print(bgm.bus)
	print(sfx.bus)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		sfx.stop()
		bgm.stream = BGM_STREAM
		bgm.play()
	elif Input.is_action_just_pressed("ui_down"):
		bgm.stop()
		sfx.stream = SFX_STREAM
		sfx.play()
