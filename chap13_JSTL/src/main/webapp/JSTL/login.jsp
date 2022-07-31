<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- pageContext 내장 객체의 컨텍스트 이름을 변수 contextPath에 미리 설정함 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인</title>
</head>
<body>
	<form action="member3.jsp" >
		아이디 : <input type="text" size="20" /><br/>
		비밀번호 : <input type="password" size="20"" /> <br/>
		<input type="submit" value="로그인" />
		<input type="reset" value="다시입력" /><br/><br/>
	</form>
	
	<a href="http://localhost:8080/chap13_JSTL/JSTL/memberForm.jsp">회원 가입</a> <br/>
	
	<a href="<%=request.getContextPath() %>/JSTL/memberForm.jsp">회원 가입</a> <br/>
	
	<a href="${contextPath }/JSTL/memberForm.jsp">회원가입</a>
	
</body>
</html>