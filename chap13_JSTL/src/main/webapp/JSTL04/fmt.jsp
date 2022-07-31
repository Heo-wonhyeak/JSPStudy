<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - fmt</title>
</head>
<body>
	<h4>숫자 포맷</h4>
	<c:set var="number1" value="12345"/>
	<fmt:formatNumber value="${number1 }"/><br/>
	<fmt:formatNumber value="${number1 }" groupingUsed="false"/><br/>
	<br/>
	통화 기호 : <fmt:formatNumber value="${number1 }" type="currency"/><br/>
	퍼센트 : <fmt:formatNumber value="${number1 }" type="percent"/><br/><br/>
	
	<fmt:formatNumber value="123456789.12" var="numberPrint" pattern="#,####.##"/>
	${numberPrint }
	
</body>
</html>