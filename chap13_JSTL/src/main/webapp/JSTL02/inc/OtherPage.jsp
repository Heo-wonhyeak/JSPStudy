<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - otherPage</title>
</head>
<body>
	<h4>otherPage.jsp</h4>
	<ul>
		<li>저장된session : ${sessionVar }</li>
		<li>저장된request : ${requestVar2 }</li>
		<li>매개변수 1 : ${param.userParam1 }</li>
		<li>매개변수 2 : ${param.userParam2 }</li>
	</ul>
</body>
</html>