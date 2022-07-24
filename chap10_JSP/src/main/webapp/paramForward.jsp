<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>액션 태그 - param</title>
</head>
<body>
	<jsp:useBean id="person" class="kr.co.ezenac.bean.Person" scope="request"/>
	<h2>포워드된 페이지에서 매개변수 확인</h2>
	<ul>
		<li>이름 : <jsp:getProperty property="name" name="person"/>
		<li>나이 : <jsp:getProperty property="age" name="person"/>
		<li>이름 : <%= request.getParameter("param1") %></li>
		<li>주소 : <%= request.getParameter("param2") %></li>
		<li>국적 : <%= request.getParameter("param3") %></li>
	</ul>
	<!--jsp:include 인클루드한 JSP페이지와는 변수를 직접 공유 불가 -->
	<!-- jsp:param 인클루드한 페이지로도 매개변수 전달 가능 -->
	<jsp:include page="Inc/paramInclude.jsp">	
		<jsp:param value="경기도 양평군" name="loc1"/>	
		<jsp:param value="용문면" name="loc2"/>
	</jsp:include>
</body>
</html>