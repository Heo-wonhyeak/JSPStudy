<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - catch</title>
</head>
<body>
	<%
		int num1 = 100;
	%>
	<!-- catch 태그 블록 안의 스클립틀릿에서 예외 일어남
		=> 이 발생한 예외를 catch 태그가 갑아 eMessage에 저장 -->
	<c:catch var="eMessage">
		<%
			int result = num1/0;
		%>
	</c:catch>
	메시지 내용 : ${eMessage }
	
	<h4>El에서의 예외</h4>
	<c:set var="num2" value="200"/>
	<c:catch var="errMessage">
		${num2 + "일" }
	</c:catch>
	예외 내용 : ${errMessage }
</body>
</html>