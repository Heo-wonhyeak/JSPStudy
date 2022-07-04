<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>result jsp</title>
</head>
<body>
	<h1>결과 출력</h1>
	<% 
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
	%>
	<h2>아이디 : <%= userId %></h2>
	<h2>비밀번호 : <%= userPw %></h2>
</body>
</html>