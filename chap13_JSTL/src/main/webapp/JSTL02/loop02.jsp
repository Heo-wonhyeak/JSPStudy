<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.ezenac.jstl.MemberBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	List<MemberBean> membersList = new ArrayList<>();
	MemberBean m1 = new MemberBean("ezen100","0824","이젠100","ezen100@gmail.com");
	MemberBean m2 = new MemberBean("ezen200","0824","이젠200","ezen200@gmail.com");
	MemberBean m3 = new MemberBean("ezen300","0824","이젠300","ezen300@gmail.com");
	membersList.add(m1);
	membersList.add(m2);
	membersList.add(m3);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>반복문</title>
</head>
<body>
	<c:set var="members" value="<%= membersList %>"/>
	
	<table border="1" align="center">
		<tr align="center" bgcolor ="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="8%"><b>비밀번호</b></td>
			<td width="8%"><b>이름</b></td>
			<td width="5%"><b>이메일</b></td>
		</tr>
		
	<c:forEach var="i" begin="0" end="2" step="1">
		<tr align="center">
			<td>${members[i].id }</td>
			<td>${members[i].pwd }</td>
			<td>${members[i].name }</td>
			<td>${members[i].email }</td>
		</tr>
	</c:forEach>
		
	<c:forEach var="member" items="${members }">
		<tr align="center">
			<td>${member.id }</td>
			<td>${member.pwd }</td>
			<td>${member.name }</td>
			<td>${member.email }</td>
		</tr>
	</c:forEach>
	
	</table>
</body>
</html>