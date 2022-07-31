<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - out</title>
</head>
<body>
	<c:set var="iTag">
		i 태그는 <i>기울임</i>을 표현 합니다.
	</c:set>
	${iTag }<br/><br/>
	
	<c:out value="${iTag }"/>
	<br/>
	<h4>escapeXml="false"</h4>
	<c:out value="${iTag }" escapeXml="false" />
	<br/>
	<h4>default="no name"</h4>
	<!-- 변수값이 null 인 경우이므로 default값이 출력됨 -->
	<c:out value="${param.name }" default="no name"></c:out>
	<!-- 변수값이 빈문자열은 null 이 아닌 경우이므로 default값이 출력됨 -->
	<h4>value="" default="no name"</h4>
	<c:out value="" default="no name"></c:out>
</body>
</html>