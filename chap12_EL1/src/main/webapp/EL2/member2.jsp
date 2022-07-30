<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<td width="20%"><b>주소</b></td>
		</tr>
		
		<tr align="center" >	
			<td width="20%">${param.id }</td>
			<td width="20%">${param.pwd }</td>
			<td width="20%">${param.name }</td>
			<td width="20%">${param.email }</td>
			<td width="20%">${requestScope.address }</td> <!-- requestScope를 이용해 바인딩된 주소 정보 출력 -->
		</tr>
	</table>
</body>
</html>