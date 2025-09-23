extends Node2D

'''
1. TileMapLayer 노드란?
	ㄴ 실제 타일을 배치하는 노드
	ㄴ 각 TileMapLayer는 타일 배치 외에 다음과 같은 기능을 따로 가질 수 있음
		- 물리 레이어				(Physics Layers)
		- 내비게이션 레이어			(Navigation Layers)
		- 광원 차단 레이어			(Occlusion Layers)
		- 사용자 지정 데이터 레이어	(Custom Data Layers)

2. TileMapLayer의 주요 Layers 실무 활용 예시
	2-1. 물리 레이어 (Physics Layers)
		ㄴ 충돌 처리를 담당하는 데이터
		ㄴ 캐릭터가 벽에 막히도록 하거나, 총알이 특정 오브젝트에 튕기도록 함
		ㄴ ex) 벽, 바닥, 장애물 충돌
	
	2-2. 내비게이션 레이어 (Navigation Layers)
		ㄴ AI 길 찾기 전용 데이터
		ㄴ NavigationXX2D 노드가 참조하는 경로 정보
		ㄴ ex) NPC가 길을 찾아 특정 지점까지 이동
	
	2-3. 광원 차단 레이어 (Occlusion Layers)
		ㄴ 빛을 차단하는 데이터
		ㄴ 빛이 벽 뒤쪽까지 새어 나오지 않도록 처리
		ㄴ ex) 던전 벽, 기둥 뒤에 그림자 생기게 하기
	
	2-4. 사용자 지정 데이터 레이어 (Custom Data Layers)
		ㄴ 개발자가 원하는 사용자 지정 데이터
		ㄴ bool, int, float, string, 색상 등 다양한 값 부여 가능
		ㄴ ex) 타일마다 고유 ID, 자원량, 소유자 정보 저장

3. Tile Set의 각종 Layers 기능 심화 강의 링크
	3-1. [Godot] 고도 엔진으로 Navigation 2D Node! 길 찾기 기능은 이걸로 끝!
		ㄴ Physics Layers와 Navigation Layers 강의
		ㄴ https://youtu.be/uS8pBQWMm5c
	
	3-2. [Godot] 고도 엔진으로 던전에서 사용하는 Light 구현하기!
		ㄴ Occlusion Layers 강의
		ㄴ https://youtu.be/-_LUvruOXzI
	
	3-3. [Godot] 고도 엔진으로 턴제 게임에서 이동 가능 발판 구현하기!
		ㄴ Custom Data Layers 강의
		ㄴ https://youtu.be/pDcp-IAofWY
	
	3-4. [Godot] 고도 엔진에서 유도미사일 구현하기!
		ㄴ Physics Layers와 Navigation Layers 강의
		ㄴ https://youtu.be/21sHOixKjSo

4. 정리
	ㄴ Godot 4.x에서 타일 배치의 핵심은 TileMapLayer
	ㄴ TileMapLayer는 각종 Layers로 확장 가능
'''
