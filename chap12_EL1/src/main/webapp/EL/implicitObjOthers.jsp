<%@page import="kr.co.ezenac.el.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	CookieManager.makeCookie(response, "ELCookie", "EL좋아요", 10);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어 - 그 외 내장객체</title>
</head>
<body>
	<h3>쿠키 값 읽기</h3>
	<ul>
		<li>EL Cookies 값 : ${cookie.ELCookie.value }</li>
	</ul>
	
	<h3>HTTP 헤더 읽기</h3>
	<ul>
		<li>host : ${header.Host }</li>
		<li>User-Agent : ${header['user-agent'] }</li>
		<li>Cookie : ${header.Cookie }</li>
	</ul>
	
	<h3>컨텍스트 초기화 매개 변수 읽기</h3>
	<ul>
		<li>OracleURL : ${initParam.OracleURL }</li>
	</ul>
	
	<h3>컨텍스트 루트 경로 읽기</h3>
	<ul>
		<li>${pageContext.request.contextPath }</li>
	</ul>
</body>
</html>