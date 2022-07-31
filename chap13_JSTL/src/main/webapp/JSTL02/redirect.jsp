<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - redirect </title>
</head>
<body>
	<c:set var="sessionVar" value="이젠it" scope="session"/>
	<c:set var="requestVar2" value="reqeust" scope="request"/>
	<!-- 리다이렉트는 포워드와 달리 request 영역은 공유되지 않음 -->
	<c:redirect url="/JSTL02/inc/OtherPage.jsp">
		<c:param name="userParam1" value="ezen" />
		<c:param name="userParam2" value="java" />
	</c:redirect>
</body>
</html>