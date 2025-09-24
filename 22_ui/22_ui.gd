extends Node2D

'''
1. UI(User Interface)란?
	ㄴ 사용자가 게임과 상호작용할 수 있는 화면 요소
	ㄴ ex) 버튼, 체력바, 인벤토리 창, 미니맵, 대화창 등

2. UI를 다루는 노드
	2-1. CanvasLayer 노드
		ㄴ UI를 게임 월드와 분리해서 항상 화면에 일정하게 보이게 함
		ㄴ UI는 보통 CanvasLayer 노드 아래에 배치
		ㄴ ex) 월드 속 플레이어가 움직여도 체력바는 항상 같은 위치에 보이게 됨
	
	2-2. Control 노드 계열
		ㄴ UI 전용 노드
		ㄴ 화면 비율과 해상도에 맞게 자동으로 배치되는 특징이 있음

3. Control 노드의 기본 속성
	3-1. Anchor (앵커)
		ㄴ 부모 영역에서 자신의 기준점을 어디에 둘지 정하는 값
		ㄴ 0.0 ~ 1.0 사이 값
			ㄴ ex) (0,0) -> 부모의 좌상단
			ㄴ ex) (1,1) -> 부모의 우하단
		ㄴ 해상도가 달라져도 UI가 무너지지 않게 만드는 핵심 속성

	3-2. Anchors Preset
		ㄴ 자주 쓰는 앵커 값을 버튼 하나로 빠르게 적용 가능
		ㄴ ex) Full Rect, Center, Top Left 등

4. Container 노드
	ㄴ 자식 UI 노드들을 자동으로 정렬해주는 특수한 Control 노드
	ㄴ ex) HBoxContainer, VBoxContainer, MarginContainer 등

5. 정리
	ㄴ UI				-> Control 노드 기반
	ㄴ Anchor			-> 화면 크기에 상관없이 고정 배치
	ㄴ Container 노드		-> 자동 정렬, 복잡한 UI도 간단히 관리
	ㄴ CanvasLayer 노드	-> UI와 게임 월드 분리
'''
