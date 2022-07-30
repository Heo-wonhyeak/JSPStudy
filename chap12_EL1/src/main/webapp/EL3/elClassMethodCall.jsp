<%@page import="kr.co.ezenac.el.ELClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ELClass elClass = new ELClass();
	pageContext.setAttribute("elClass", elClass);	//페이지 영역에 저장
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>EL - 메서드 호출</title>
</head>
<body>
	<h3>영역에 저장 후 메서드 호출</h3>
	220610-3225567 => ${elClass.getGender("220610-3225567") }<Br/>
	220610-4225567 => ${elClass.getGender("220610-4225567") }<br/>
	
	<h3>클래스명을 통해 정적 메서드 호출</h3>
	${elClass.showGugudan(7) }
</body>
</html>