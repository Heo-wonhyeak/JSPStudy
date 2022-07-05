<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>내장 객체 - response</title>
</head>
<body>
	<h2>로그인 폼</h2>
	<%
		String loginErr = request.getParameter("loginErr");
		if(loginErr != null) out.print("로그인실패");
	%>
	<form action="./responseLogin.jsp" method="post">
		아이디 : <input type="text" name="user_id" />
		비밀번호 : <input type="password" name ="user_pw" />
		<input type="submit" value="로그인" />
	</form>
</body>
</html>