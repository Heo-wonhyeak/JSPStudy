<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core 태그 라이브러리를 사용하기 위해 반드시 선언해야 함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<!-- 변수선언함 vlue 속성에서는 el 사용하여 초기화 할 수 있음. -->
<c:set var="id" value="ezen" scope="page"/>
<c:set var="pwd" value="0824" />
<%-- <c:set var="name" value="${'이순신' }"/> --%>
<c:set var="age" value="${30 }" />
<c:set var="height" value="${180 }" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 정보 출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor ="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="8%"><b>비밀번호</b></td>
			<td width="8%"><b>이름</b></td>
			<td width="5%"><b>나이</b></td>
			<td width="5%"><b>키</b></td>
		</tr>
		
		<c:choose>
			<c:when test="${empty name }">	<!-- 변수name이 null이거나 빈 문자열인지 체크 -->
				<tr align="center" >	
					<td colspan="5">이름을 입력하세요!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center" >	
					<td >${pageScope.id }</td>
					<td >${pwd }</td>
					<td >${name }</td>
					<td >${age }</td>
					<td >${height }</td>
				</tr>
			</c:otherwise>
		</c:choose>
		
		
		<!-- 표현언어(el)로 변수에 바로 접근하여 값 출력 -->
		
		
	</table>
</body>
</html>