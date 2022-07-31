<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>결과 표시</title>
</head>
<body>
	<c:set var="score" value="${param.score }"/>
	<c:choose>
		<c:when test="${empty score }">
			학점을 입력해주세요<br/>
			<a href="scoreTest.jsp">다시입력</a>
		</c:when>
		<c:when test="${score <= 100 and score >90 }">
			${score }점은 A학점 입니다.
		</c:when>
		<c:when test="${score <= 90 and score >80 }">
			${score }점은 B학점 입니다.
		</c:when>
		<c:when test="${score <= 80 and score >70 }">
			${score }점은 C학점 입니다.
		</c:when>
		<c:when test="${score <= 70 and score >60 }">
			${score }점은 D학점 입니다.
		</c:when>
		<c:when test="${score <= 60 and score >=0 }">
			${score }점은 F학점 입니다.
		</c:when>
		<c:otherwise>
			${score }점은 잘못 입력하셨습니다..<br/>
			<a href="scoreTest.jsp">다시입력</a>
		</c:otherwise>
	</c:choose>
</body>
</html>