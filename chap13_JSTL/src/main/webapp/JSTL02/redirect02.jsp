<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
</head>
<body>
	<c:redirect url="member.jsp">
		<c:param name="id" value="${'ezen400' }" />
		<c:param name="pwd" value="${'0824' }" />
		<c:param name="name" value="이젠400" />
		<c:param name="email" value="ezen400@gmail.com" />
	</c:redirect>
</body>
</html>