<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>포워딩된 바인딩 출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor ="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="8%"><b>비밀번호</b></td>
			<td width="5%"><b>이름</b></td>
			<td width="10%"><b>이메일</b></td>
		</tr>
		
		<!-- 바인딩 시 속성 이름으로 각각의 MemberBean 속성에 접근하여 회원 정보 출력 -->
		<tr align="center" >	
			<td >${member.id }</td>
			<td >${member.pwd }</td>
			<td >${member.name }</td>
			<td >${member.email }</td>
		</tr>
	</table>
</body>
</html>