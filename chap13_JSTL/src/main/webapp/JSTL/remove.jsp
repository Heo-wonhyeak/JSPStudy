<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 변수 선언 -->
<c:set var="scopeVar" value="PageValue" />
<c:set var="scopeVar" value="RequestValue" scope="request" />
<c:set var="scopeVar" value="SessionValue" scope="session" />
<c:set var="scopeVar" value="ApplicationValue" scope="application" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - remove</title>
</head>
<body>
	<h4>출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul>
	<%-- <c:remove var="scopeVar" scope="application"/>
	<h4>application remove 후 출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul> --%>
	
	<%-- <c:remove var="scopeVar" scope="session"/>
	<h4>session remove 후 출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul> --%>
	
	<%-- <c:remove var="scopeVar" scope="request"/>
	<h4>request remove 후 출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul> --%>
	
	<%-- <c:remove var="scopeVar" scope="page"/>
	<h4>page remove 후 출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul> --%>
	
	<c:remove var="scopeVar"/>
	<h4>scope 지정 안하고 remove 후 출력하기</h4>
	<ul>
		<li>scopeVar : ${pageScope.scopeVar }</li>
		<li>scopeVar : ${requestScope.scopeVar }</li>
		<li>scopeVar : ${sessionScope.scopeVar }</li>
		<li>scopeVar : ${applicationScope.scopeVar }</li>
	</ul>
</body>
</html>