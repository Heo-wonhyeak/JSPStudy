<%@page import="kr.co.ezenac.dto.Person"%>
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
<h4>Include 페이지</h4>
<%
	int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
	Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer 객체(include) : <%= pInteger2 %></li>
	<li>Person 객체 (include): <%= pPerson2.getName() %></li>
	<li>Person 객체 (include): <%= pPerson2.getAge() %></li>
	<li>String 객체 (include): <%= pageContext.getAttribute("pageString").toString() %>
</ul>
</body>
</html>