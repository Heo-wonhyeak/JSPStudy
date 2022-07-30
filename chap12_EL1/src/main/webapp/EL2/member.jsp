<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%> --%>
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
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		
		<!-- 기존의 방식 -->
		<%-- <tr align="center" >
			<td width="20%"><%= id %></td>
			<td width="20%"><%= pwd %></td>
			<td width="20%"><%= name %></td>
			<td width="20%"><%= email %></td>
		</tr> --%>
		
		<!-- param 객체를 이용해 getParameter()메서드를 이용하지 않고 값을 받아옴 -->
		<tr align="center" >	
			<td width="20%">${param.id }</td>
			<td width="20%">${param.pwd }</td>
			<td width="20%">${param.name }</td>
			<td width="20%">${param.email }</td>
		</tr>
	</table>
</body>
</html>