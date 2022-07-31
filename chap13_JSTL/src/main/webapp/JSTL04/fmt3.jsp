<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL -fmt3</title>
</head>
<body>
	<c:set var="today" value="<%= new Date() %>"/>
	
	<h4>로케일</h4>
	한글로 설정 : <fmt:setLocale value="ko_kr"/>
	<fmt:formatNumber value="10000" type="currency"/><br/>
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br/>
	<br/>
	
	일어로 설정 : <fmt:setLocale value="ja_jp"/>
	<fmt:formatNumber value="10000" type="currency"/><br/>
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br/>
	<br/>
	
	영어로 설정 : <fmt:setLocale value="en_us"/>
	<fmt:formatNumber value="10000" type="currency"/><br/>
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br/>
	<br/>
	
	프랑스어 설정 : <fmt:setLocale value="ca_fr"/>
	<fmt:formatNumber value="10000" type="currency"/><br/>
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br/>
	<br/>
</body>
</html>