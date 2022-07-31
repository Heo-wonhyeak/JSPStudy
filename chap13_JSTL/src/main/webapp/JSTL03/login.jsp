<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>login</title>
</head>
<body>
	<form action="result2.jsp" method="post">
			아이디 : <input type="text" name="userId" autofocus/><br/>
			비밀번호 : <input type="password" name="userPw"/><br/>
			<input type="submit" value="로그인하기" />
			<input type="reset" value="다시입력" /><br/>
	</form>
</body>
</html>