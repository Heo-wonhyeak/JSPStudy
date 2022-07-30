<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = 3;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어에서 사용되는 데이터 출력</title>
</head>
<body>
	<h1>
		${100 } <Br/>
		${"좋은 목요일 입니다." } <br/>
		${10 + 1 } <br/>
		${"10" + 1 } <br/>	<!-- 숫자형 문자열과 실제 숫자를 더하면 문자여링 자동으로 숫자로 변환 -->
		<%-- ${null + 10 } --%> <br/>	<!-- null 변수사용하면 예외가 발생하지 않음 -->
	</h1>
	<h3>
		스크립틀릿에서 선언한 변수 : <br/>
	</h3>
</body>
</html>