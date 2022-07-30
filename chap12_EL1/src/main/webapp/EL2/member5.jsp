<%@page import="kr.co.ezenac.el.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
	<!-- 회원 정보를 저장할 빈 생성 -->
<jsp:useBean id="m1" class="kr.co.ezenac.el.MemberBean"/>
	<!-- 전송된 회원 정보를 빈의 속성에 설정 -->
<jsp:setProperty property="*" name="m1"/>
	<!-- membersList로 ArrayList 객체 생성 -->
<jsp:useBean id="membersList" class="java.util.ArrayList"/>
	<!-- 회원 정보를 저장할 membersMap으로 HashMap 객체 생성 -->
<jsp:useBean id="membersMap" class="java.util.HashMap" />

<%	
	/* HashMap에 key/value 쌍으로 회원정보를 저장함 */
	membersMap.put("idkey", "ezenac2");
	membersMap.put("pwdkey","0824");
	membersMap.put("namekey","이젠아카데미2");
	membersMap.put("emailkey","ezenac2@gmail.com");
	
	/* 자바 코드로 새 회원 정보를 저장하는 객체 생성 */
	MemberBean m2 = new MemberBean("ezenac","0824","이젠아카데미","ezenac@gmail.com");
	/* 두개의 MemberBean 객체를 ArrayList에 저장됨 */
	membersList.add(m1);
	membersList.add(m2);
	
	/* 회원정보가 저장된 membersList를 membersList라는 key 로 HashMap에 저장 */
	membersMap.put("membersList", membersList);
%>

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
		
		<!-- HashMap에 ArrayList를 저장하고 ArrayList를 .연산자를 이용해 첫번째 회원 정보를 불러옴 -->
		<tr align="center" >	
			<td width="20%">${membersMap.membersList[0].id }</td>
			<td width="20%">${membersMap.membersList[0].pwd }</td>
			<td width="20%">${membersMap.membersList[0].name }</td>
			<td width="20%">${membersMap.membersList[0].email }</td>
		</tr>
		
		<!-- HashMap에 ArrayList를 저장하고 ArrayList를 .연산자를 이용해 두번째 회원 정보를 불러옴 -->
		<tr align="center" >	
			<td width="20%">${membersMap.membersList[1].id }</td>
			<td width="20%">${membersMap.membersList[1].pwd }</td>
			<td width="20%">${membersMap.membersList[1].name }</td>
			<td width="20%">${membersMap.membersList[1].email }</td>
		</tr>
		
		<!-- HashMap이름 뒤에 .연산자로 저장시 사용한 key를 사용하여 value 를 불러옴 -->
		<tr align="center" >	
			<td width="20%">${membersMap.idkey }</td>
			<td width="20%">${membersMap.pwdkey }</td>
			<td width="20%">${membersMap.namekey }</td>
			<td width="20%">${membersMap.emailkey }</td>
		</tr>
	</table>
</body>
</html>