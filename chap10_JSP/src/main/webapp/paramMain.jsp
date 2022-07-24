<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String pValue = "대한민국";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>액션 태그 - param</title>
</head>
<body>
	<jsp:useBean id="person" class="kr.co.ezenac.bean.Person" scope="request" />
	<jsp:setProperty property="name" name="person" value="이순신"/>
	<jsp:setProperty property="age" name="person" value="32"/>
	<jsp:forward page="paramForward.jsp?param1=류현진">
		<jsp:param value="경기도 용인시" name="param2"/>
		<jsp:param value="<%= pValue %>" name="param3"/>
	</jsp:forward>
</body>
</html>