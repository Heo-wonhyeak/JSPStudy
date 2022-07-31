<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>결과 화면</title>
</head>
<body>
	<!-- empty 연산자 이용해 id 값이 비어쓴ㄴ지 체크 -->
	<c:if test="${(empty param.userId) or (empty param.userPw) }">
		아이디와 비밀번호를 확인하세요
		<a href="login.jsp">로그인</a>
	</c:if>
	<c:if test="${(not empty param.userId)and (not empty param.userPw)}">
		<b>환영합니다. ${param.userId }님 로그인 되었습니다.</b>
	</c:if>
</body>
</html>