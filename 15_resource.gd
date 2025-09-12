extends Node2D

'''
1. 리소스(Resource)란?
	1-1. 게임에서 사용하는 모든 외부 데이터를 의미
		ㄴ 이미지 (PNG, JPG)
		ㄴ 사운드 (WAV, OGG, MP3)
		ㄴ 씬 (.tscn)
		ㄴ 폰트, 애니메이션, 머티리얼 등
	
	1-2. 고도 엔진에서는 res:// 경로를 통해 불러옴

2. 리소스 불러오기 방식
	2-1. 에디터에서 드래그 앤 드롭
		ㄴ Sprite2D -> Texture에 이미지 파일을 드래그
		ㄴ AudioStreamPlayer -> Stream에 사운드 파일을 드래그
	
	2-2. 코드에서 불러오기
		ㄴ load()	->	실행 시점에 리소스를 불러옴
			var texture = load("res://player.png")
			$Sprite2D.texture = texture
		
		ㄴ preload()	->	스크립트가 로드될 때 미리 불러오므로 성능적으로 안전
			var jump_sound = preload("res://jump.wav")
			func _ready() -> void:
				$AudioStreamPlayer.stream = jump_sound
		
		▶ 씬도 불러오기 가능
			func _ready() -> void:
				var enemy_scene: PackedScene = load("res://Enemy.tscn")
				var enemy = enemy_scene.instantiate()
				add_child(enemy)
				enemy.position = Vector2(200, 200)
			
			ㄴ PackedScene = 설계도 / instantiate() = 실제 생성
		
		▶ load vs preload 차이
		=======================================================================
		load()		||	실행 중에 불러오기 때문에 지연(로딩 딜레이)이 생길 수 있음
					||	게임 중 드물게 쓰는 리소스에 사용 추천
		-----------------------------------------------------------------------
		preload()	||	게임 시작 시 미리 메모리에 올려놓기 때문에 빠름
					||	게임 중 자주 쓰는 리소스에 사용 추천
		=======================================================================

3. 정리
	ㄴ 리소스는 게임 자원 (이미지, 사운드, 씬 등)
	ㄴ 간단한 방법으로 에디터 드래그 앤 드롭
	ㄴ 코드에서 다루는 방법으로 load() / preload()
	ㄴ 씬도 리소스로 불러와 인스턴싱 가능
'''
