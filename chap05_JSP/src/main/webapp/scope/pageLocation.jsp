<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>page 영역</title>
</head>
<body>
	<h2>이동 후 page 영역의 속성 값 읽기</h2>
	<%
		Object pIntegerO = pageContext.getAttribute("pageInteger");
		Object pStringO = pageContext.getAttribute("pageString");
		Object pPersonO = pageContext.getAttribute("pagePerson");
	%>
	<ul>
		<li>Integer 객체 : <%= (pIntegerO == null) ? "값 없음" : pIntegerO %></li>
		<li>String 객체 : <%= (pStringO == null) ? "값 없음" : pStringO %></li>
		<li>Person 객체 : <%= (pPersonO == null) ? "값 없음" : pPersonO %></li>
	</ul>
</body>
</html>