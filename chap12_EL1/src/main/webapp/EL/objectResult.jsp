<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>포워딩된 페이지 표현언어 - 객체 매개변수</title>
</head>
<body>
	<h2>영역을 통해 전달된 객체 읽기</h2>
	<ul>
		<li>Person 객체 - 이름 : ${personObj.name }, 나이 : ${personObj.age }</li>
		<li>String 객체 : ${requestScope.StringObj }</li>
		<li>Integer 객체 : ${IntegerObj }</li>
	</ul>
	
	<h2>매개변수로 전달된 값 읽기</h2>
	<ul>
		<li>param.firstNum : ${param.firstNum }</li>
		<li>param.firstNum + param.secondNum : ${param.firstNum + param.secondNum }</li>
		<li>${param.firstNum } + ${param.secondNum }</li>
	</ul>
</body>
</html>