extends Node

'''
- 주석(Comment)이란?
	ㄴ 코드에 설명을 적기 위해 작성하는 텍스트로 프로그램 실행에는 아무런 영향을 주지 않음
	ㄴ 개발자나 협업자에게 코드의 의미를 전달하거나 추후 유지보수를 쉽게 하기 위해 작성하는 메모

- 주석 사용 방법
	ㄴ 한 줄 주석: # 기호 뒤에 작성
	ㄴ 여러 줄 주석: 작은따옴표 3개 혹은 큰따옴표 3개로 감싸 작성
'''

"""
1. 함수란?
	ㄴ 특정 작업을 하나로 묶은 코드 블록
	ㄴ 자주 쓰는 로직을 함수로 만들어두면 코드가 깔끔하고 재사용하기 쉬움
	ㄴ GDScript에서는 func 키워드로 정의

2. 함수 작성 방법
	func 함수이름() -> 반환형:
		실행할 코드
"""

var number_a: int = 2
var number_b: int = 3

'''
	_ready 함수는 현재 노드 및 자식 노드들이
		씬 트리에 완전히 추가되어 준비되었을 때 한 번만 호출되는 함수
	게임 시작 시점에 필요한 초기화 로직을 넣는 곳
'''
func _ready() -> void:
	subscribe()
	print("calculate_sum_1_result: ", calculate_sum_1())
	print("calculate_sum_2_result: ", calculate_sum_2(number_a, number_b))

# print 함수는 텍스트나 변수 값을 Output 콘솔(출력창)에 표시하는 함수
func subscribe() -> void:
	print("subscribe: KimPotatoIV")

func calculate_sum_1() -> int:
	return number_a + number_b

func calculate_sum_2(value_a: int, value_b: int) -> int:
	return value_a * value_b
