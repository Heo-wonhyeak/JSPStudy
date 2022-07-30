<%@page import="kr.co.ezenac.el.Person"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Object> list = new ArrayList<>();
	list.add("이순신");
	list.add(new Person("이방원",42));
	pageContext.setAttribute("Ocean", list);		//List 컬레션을 page 영역에 저장함
	
	//Map 컬렉션~~~ 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>List 컬렉션</title>
</head>
<body>
	<ul>
		<li>0번째 요소 : ${Ocean[0] }</li>
		<li>1번째 요소 : ${Ocean[1].name }, ${Ocean[1].age }</li>
	</ul>
</body>
</html>