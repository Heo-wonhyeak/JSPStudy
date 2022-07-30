<%@page import="kr.co.ezenac.el.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	MemberBean member = new MemberBean("ezen8","0824","이젠8","ezen8@gmail.com");
	
	/* 속성 이름 member로 MemberBean객체를 바인딩 */
	request.setAttribute("member", member);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어로 바인딩 속성 출력</title>
</head>
<body>
	<jsp:forward page="member2.jsp" />
</body>
</html>