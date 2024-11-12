<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나이 계산기</title>
</head>
<body>
<%
	int year = Integer.parseInt(request.getParameter("year"));
	int age = calcAge(year);
	
	out.println("2000년에 태어난 당신은 2024년 올해 한국 나이로 25살이고" + zodiacAnimals + "입니다.");
%>
</body>
</html>

birthYear
dateYear
zodiacAnimals


    "Rat": "쥐",
    "Ox": "소",
    "Tiger": "호랑이",
    "Rabbit": "토끼",
    "Dragon": "용",
    "Snake": "뱀",
    "Horse": "말",
    "Goat": "양",
    "Monkey": "원숭이",
    "Rooster": "닭",
    "Dog": "개",
    "Pig": "돼지"