<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 각 내장 객체 받아옴 */
	request.setCharacterEncoding("utf-8");
	/* String id = request.getAttribute("id").toString();
	String pwd = request.getAttribute("pwd").toString();
	String name = session.getAttribute("name").toString();
	String email = application.getAttribute("email").toString(); */
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>포워딩 된 회원 정보 출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor ="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="8%"><b>비밀번호</b></td>
			<td width="5%"><b>이름</b></td>
			<td width="10%"><b>이메일</b></td>
		</tr>
<%-- 		
		<tr align="center" >	
			<td ><%= id %></td>
			<td ><%= pwd %></td>
			<td ><%= name %></td>
			<td ><%= email %></td>
		</tr>
--%>
		<!-- 자바코드 없이 바로 바인딩된 속성이름으로 회원 정보 출력 -->
		<tr align="center" >	
			<td >${id }</td>
			<td >${pwd }</td>
			<td >${name }</td>
			<td >${email }</td>
		</tr>
	</table>
</body>
</html>