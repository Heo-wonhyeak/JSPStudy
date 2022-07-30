<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "ezen");
	request.setAttribute("pwd", "0824");
	session.setAttribute("name", "이젠");
	application.setAttribute("email", "ezen@naver.com");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>EL로 내장 객체 속성 값 출력</title>
</head>
<body>
	<jsp:forward page="member.jsp" />
</body>
</html>