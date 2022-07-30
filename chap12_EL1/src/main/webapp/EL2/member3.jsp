<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!-- 회원 정보를 저장할 빈 생성 -->
<jsp:useBean id="m" class="kr.co.ezenac.el.MemberBean" />
<!-- 전송된 회원 정보를 빈의 속성에 설정 -->
<jsp:setProperty property="*" name="m"/> <!-- 프로퍼티 모두 저장 * -->

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
		
		<!-- 표현식 이용해 회원 정보 출력 -->
<%-- 		
		<tr align="center" >	
			<td width="20%"><%= m.getId() %></td>
			<td width="20%"><%= m.getPwd() %></td>
			<td width="20%"><%= m.getName() %></td>
			<td width="20%"><%= m.getEmail() %></td>
		</tr>
--%>
		<tr align="center" >	
			<td width="20%">${m.id }</td>
			<td width="20%">${m.pwd }</td>
			<td width="20%">${m.name }</td>
			<td width="20%">${m.email }</td>
		</tr>
	</table> 
</body>
</html>