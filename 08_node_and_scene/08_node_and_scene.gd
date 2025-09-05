extends Node2D

'''
1. Node란?
	ㄴ 고도 엔진에서 모든 요소(오브젝트, UI, 사운드 등)의 기본 단위
	ㄴ Node는 자신만의 기능을 가짐 (예: Sprite2D, Label, AudioStreamPlayer)
	ㄴ Node는 씬 트리(Scene Tree) 구조로 부모-자식 관계를 가짐
	ㄴ Node끼리 계층적으로 연결되어 Scene을 구성

2. Scene이란?
	ㄴ Node 트리 구조를 저장한 하나의 파일(.tscn)
	ㄴ 재사용 가능(Scene 안에 또 다른 Scene을 인스턴스로 추가 가능)
	ㄴ ex) Character Scene, Monster Scene, UI Scene

3. 씬 트리 구조 설명(계층 구조로 부모/자식 관계를 표현)
	MainScene
	├── Player (CharacterBody2D(Node))
	│	├── Sprite2D(Node)
	│	└── CollisionShape2D(Node)
	├── Enemy (CharacterBody2D(Node))
	└── UI (CanvasLayer(Node))
		└── Label(Node)

4. 코드를 이용해 Node를 추가하는 방법
	var label_node = Label.new()
	add_child(label_node)
	
	ㄴ .new()는 Node를 새로 생성 하는 함수로 아직 씬 트리에 연결되지 않은 상태
	ㄴ 현재 스크립트가 붙은 Node의 자식 Node로 label_node를 추가
	ㄴ 씬 트리에 들어가야만 실제로 게임 화면에 표시됨

▶ 구현해 보기
	ㄴ 3번 씬 트리 구조를 그대로 구현해보기
	ㄴ Label Node는 코드를 이용해 추가하기
'''
