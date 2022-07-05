<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<String> lists0 = new ArrayList<>();
	lists0.add("이젠");
	lists0.add("강남역");
	
	session.setAttribute("lists", lists0);	//보통 같은 이름사용 구분하기 위해 다르게 설정
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>session 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<a href="sessionLocation.jsp">sessionLocation.jsp 바로가기</a>
</body>
</html>