<%@page import="kr.co.ezenac.utility.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = CookieManager.readCookie(request, "loginId");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인 성공</title>
</head>
<body>
	<h2><%= loginId %>님 환영합니다.</h2>
</body>
</html>