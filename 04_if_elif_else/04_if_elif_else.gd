extends Node2D

'''
1. 조건문이란?
	ㄴ 조건식이 참(true)일 때만 특정 코드를 실행하기 위한 문법

2. if문
	if 조건식:
		실행할 코드
	
	ㄴ 코드 블록은 들여 쓰기(tab)로 구분

3. if-else문
	if 조건식:
		실행할 코드
	else:
		실행할 코드
	
	ㄴ 조건이 참이면 if 블록, 거짓이면 else 블록 실행

4. if-elif-else문
	if 조건식1:
		실행할 코드
	elif 조건식2:
		실행할 코드
	else:
		실행할 코드
	
	ㄴ elif는 else if의 줄임말
	ㄴ 여러 조건을 순차적으로 검사할 때 사용

5. 조건식 연산자 종류
	연산자  	|		의미				|	예제				|	결과
	---------------------------------------------------------------
	==  		|		같다				|	8 == 8			|	true
	!=  		|		다르다			|	8 != 7			|	true
	>  		|		크다				|	8 > 7			|	true
	<  		|		작다				|	8 < 9			|	true
	>=  		|		크거나 같다		|	8 >= 8			|	true
	<=  		|		작거나 같다		|	8 <= 10			|	true
	and  	|		모두 참			|	true and false	|	false
	or  		|		하나라도 참이면 참	|	true or false	|	true
	not  	|		반대 값			|	not true			|	false
'''

var health: int = 100
var mana: int = 25
var score: int = 75

func _ready() -> void:
	if health > 50:
		print("if: ", "Enough health")
	
	if mana > 50:
		print("if-else: ", "Enough mana")
	else:
		print("if-else: ", "Not enough mana")
	
	if score >= 90:
		print("if-elif-else: ", "Grade A")
	elif score >= 70:
		print("if-elif-else: ", "Grade B")
	else:
		print("if-elif-else: ", "Grade C")
	
	if health == 100 and not mana == 15:
		print("complex if: ", "true")
	else:
		print("complex if: ", "false")
