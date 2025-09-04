extends Node2D

'''
1. match문이란?
	ㄴ 여러 조건을 간단하고 가독성 좋게 처리하는 분기문
	ㄴ 다른 언어의 switch문과 비슷함

2. match문
	match 변수:
		변수 값1:
			실행할 코드
		변수 값2:
			실행할 코드
		_:
			실행할 코드 (기본값, for문의 else 역할과 비슷)

3. 특징
	ㄴ match 변수와 변수값 비교 시 == 연산과 동일
	ㄴ 중첩된 if문보다 코드가 깔끔해짐
'''

func _ready() -> void:
	print("=====match 변수 String 사용=====")
	var grade: String = "B"
	match grade:
		"A":
			print("Grade A")
		"B":
			print("Grade B")
		"C":
			print("Grade C")
		_:
			print("You're fired!!!")

	print("======match 변수 int 사용======")
	var number: int = 3
	match number:
		1:
			print("Number is 1")
		2:
			print("Number is 2")
		_:
			print("No match...")
	
	print("======패턴 match 방식 사용======")
	var value: Array = [1, 2, 3]
	match value:
		[]:
			print("The array is empty")
		[_, _]:
			print("The array has 2 elements")
		[_, _, _]:
			print("The array has 3 elements")
		_:
			print("Other case")

'''
4. "match 변수 int 사용 예제"를 if문으로 구현했다면?
	var number: int = 3
	match number:
		1:
			print("Number is 1")
		2:
			print("Number is 2")
		_:
			print("No match...")
	
	↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
	
	var number: int = 3
	if number == 1:
		print("Number is 1")
	elif number == 2:
		print("Number is 2")
	else:
		print("No match...")

5. if문 match문 비교
	특징			|	if문							|	match문
	----------------------------------------------------------------------------
	용도			|	범위 비교(>, <),				|	변수의 값이 특정 하나와 정확히
				|	복합 조건(and, or) 등에 적합	|	일치하는지 비교하는 데 적합
	----------------------------------------------------------------------------
	가독성		|	조건이 많아지면 elif가 반복되어	|	여러 경우의 수를 한눈에
				|	가독성이 떨어질 수 있음			|	파악할 수 있어 가독성이 뛰어남
	----------------------------------------------------------------------------
	유연성		|	다양한 조건을 사용해 유연하게	|	특정 값 일치에 특화되어 있어
				|	설정할 수 있음					|	범위 비교 등에는 유용하지 않음
	----------------------------------------------------------------------------
	고급 기능		|	단순한 조건 분기에 주로 사용		|	배열의 크기 매칭 등
				|								|	고급 기능도 지원
	----------------------------------------------------------------------------
'''
