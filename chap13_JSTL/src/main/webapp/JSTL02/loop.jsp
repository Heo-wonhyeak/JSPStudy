<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	List<String> dataList = new ArrayList<>();
	dataList.add("Hello world");
	dataList.add("Ezen!");
	dataList.add("Good morning");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>반복문</title>
</head>
<body>
	<!-- 표현언어에서 사용할 수 있도록 set 태그를 이용해 변수 list에 할당함 -->
	<c:set var="list" value="<%= dataList %>" />
	
	<!-- 반복 변수 i를 1~10까지 1씩 증가시키면서 반복 -->
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
		i = ${i } &nbsp;&nbsp;&nbsp; 반복횟수 : ${loop.count } <br/>
	</c:forEach>
	<br/>
	
	<c:forEach var="i" begin="1" end="10" step="2">
		5 * ${i } = ${5*i } <br/>
	</c:forEach><br/>

	<!-- 컬렉션 객체에 저장된 객체(데이터)를 반복해서 반복 변수 data에 하나씩 가져와 처리함 -->
	<c:forEach var="data" items="${list }">
		${data }<br/>
	</c:forEach><br/>
	
</body>
</html>