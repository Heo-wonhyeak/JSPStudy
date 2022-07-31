<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - url</title>
</head>
<body>
	<c:url value="/JSTL02/inc/OtherPage.jsp" scope="request" var="url">
		<c:param name="userParam1" value="abcdefg2" />
		<c:param name="userParam2">배고파</c:param>
	</c:url>
	<a href="${url }">OtherPage.jsp 바로가기</a>
</body>
</html>