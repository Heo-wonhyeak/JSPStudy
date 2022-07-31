<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - forEach (향상된 for문)</title>
</head>
<body>
	<h4>향상된 for문 형태의 forEach태그</h4>
	<%
		String[] rgba ={"red","Green","Blue","Black"};
	%>
	<c:forEach items="<%= rgba %>" var="color">
		<span style="color : ${color}">${color }</span>
	</c:forEach>
	
	<h4> varStatus 속성</h4>
	<table border="1">
		<c:forEach items="<%= rgba %>" var="color" varStatus="ezen">
				<tr>
					<td>count : ${ezen.count }</td>
					<td>index : ${ezen.index }</td>
					<td>current : ${ezen.current }</td>
					<td>first : ${ezen.first }</td>
					<td>last : ${ezen.last }</td>
				</tr>
		</c:forEach>
	</table>
</body>
</html>