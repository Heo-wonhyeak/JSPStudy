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
	<title>FMT - 날짜 포맷</title>
</head>
<body>
	<c:set var="today" value="<%= new Date() %>"/>
	
	<h4>날짜 포맷</h4>
	full : <fmt:formatDate value="${today }" dateStyle="full"/><br/>
	long : <fmt:formatDate value="${today }" dateStyle="long"/><br/>
	medium : <fmt:formatDate value="${today }" dateStyle="medium"/><br/>
	short : <fmt:formatDate value="${today }" dateStyle="short"/><br/>
	default : <fmt:formatDate value="${today }" dateStyle="default"/><br/>
	
	<h4>시간 포맷</h4>
	full : <fmt:formatDate value="${today }" type="time" timeStyle="full"/><br/>
	long : <fmt:formatDate value="${today }" type="time" timeStyle="long"/><br/>
	medium : <fmt:formatDate value="${today }" type="time" timeStyle="medium"/><br/>
	short : <fmt:formatDate value="${today }" type="time" timeStyle="short"/><br/>
	default : <fmt:formatDate value="${today }" type="time" timeStyle="default"/><br/>
	
	<h4>날짜,시간 포맷</h4>
	full,full : <fmt:formatDate value="${today }" type="both" timeStyle="full" dateStyle="full"/><br/>
	long,full : <fmt:formatDate value="${today }" type="both" timeStyle="long" dateStyle="full"/><br/>
	medium,full : <fmt:formatDate value="${today }" type="both" timeStyle="medium" dateStyle="full"/><br/>
	short,full : <fmt:formatDate value="${today }" type="both" timeStyle="short" dateStyle="full"/><br/>
	long,medium : <fmt:formatDate value="${today }" type="both" timeStyle="long" dateStyle="medium"/><br/>
	
	<h5>패턴 사용</h5>
	<fmt:formatDate value="${today }" type="both" pattern="yyyy=MM-dd hh:mm:ss" />
	
	<h4>타임존</h4>
	<fmt:formatDate value="${today }" type="both" timeZone="GMT" dateStyle="full" timeStyle="full"/><br/>
	<fmt:formatDate value="${today }" type="both" timeZone="America/Chicago" dateStyle="full" timeStyle="full"/><br/>
	
	<fmt:timeZone value="GMT">
		<fmt:formatDate value="${today }" type="both"/><br/>
	</fmt:timeZone>
</body>
</html>