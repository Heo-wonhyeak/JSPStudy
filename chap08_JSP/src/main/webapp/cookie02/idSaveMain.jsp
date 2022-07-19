<%@page import="kr.co.ezenac.utility.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이름이 loginId인 쿠키를 읽어와 loginId 변수에 저장함
	String loginId = CookieManager.readCookie(request, "loginId");

	String cookieCheck = "";
	if(!loginId.equals("")) {	//쿠키에 저장된 아이디가 있다면 "loginId"에 빈 문자열 외의 문자열을 저장
		cookieCheck = "checked";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cookie - 아이디 저장하기</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<form action="idSaveProcess.jsp" method="post">
		아이디 : <input type="text" name="user_id" value="<%= loginId %>"/>
		<input type="checkbox" name="save_check" value="Y" <%= cookieCheck%>/>아이디 저장하기<br/>
		비밀번호 : <input type = "password" name = "user_pw" /><br/>
		<input type="submit" value="로그인하기" />
	</form>
</body>
</html>