<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>결과창2</title>
</head>
<body>
	<c:if test="${(empty param.userId) or (empty param.userPw) }">
		아이디와 비밀번호를 확인하세요
		<a href="login.jsp">로그인</a>
	</c:if>
	<c:if test="${(not empty param.userId)and (not empty param.userPw)}">
		<b>환영합니다. ${param.userId }님 로그인 되었습니다.</b>
		<br/>
		<c:if test="${param.userId eq 'admin' }">
			<button>회원정보 삭제하기</button>
			<button>회원정보 수정하기</button>
		</c:if>
		
		<c:if test="${param.userId ne 'admin' }">
			<button>개인정보 수정</button>
		</c:if>
		
	</c:if>
</body>
</html>