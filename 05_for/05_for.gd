extends Node2D

'''
1. 반복문이란?
	ㄴ 특정 코드를 여러 번 반복 실행하기 위한 문법
	ㄴ for문과 while문이 대표적

2. for문
	for 변수 in 반복할_대상:
		실행할 코드
	
	ㄴ 반복할_대상의 요소들을 순서대로 하나씩 꺼내서 변수에 저장
	ㄴ 변수 이름은 자유롭게 정할 수 있음
	ㄴ 각 반복마다 코드가 실행됨
	
	2-1. range() 함수와 함께 사용하기
		ㄴ range(n)					->	0부터 n-1까지 숫자를 생성
		ㄴ range(start, end)			->	start부터 end-1까지 숫자를 생성
		ㄴ range(start, end, step)	->	step 간격으로 숫자를 생성
	
	2-2. break와 continue
		ㄴ break		->	반복문을 즉시 종료
		ㄴ continue	->	이번 반복만 건너뛰고 다음 반복으로 넘어감
'''

var sports: Array = ["football", "basketball", "baseball"]

func _ready() -> void:
	for game in sports:
		print(game)
	
	print("====================")
	
	for i in range(3):
		print(i)
	
	print("====================")
	
	for i in range(2, 10, 2):
		print(i)
	
	print("====================")
	
	for i in range(5):
		if i == 3:
			break
		print(i)

	print("====================")

	for i in range(5):
		if i == 2:
			continue
		print(i)
