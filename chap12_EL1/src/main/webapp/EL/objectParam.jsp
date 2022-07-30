<%@page import="kr.co.ezenac.el.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어 - 객체 매개변수</title>
</head>
<body>
	<%
		request.setAttribute("personObj", new Person("이순신",30));
		request.setAttribute("StringObj", "나는 문자열입니다.");
		request.setAttribute("IntegerObj", new Integer(100));
	%>
	
	<jsp:forward page="objectResult.jsp">
		<jsp:param value="10" name="firstNum"/>		
		<jsp:param value="20" name="secondNum"/>	
	</jsp:forward>
</body>
</html>