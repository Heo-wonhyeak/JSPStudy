<%@page import="kr.co.ezenac.bean.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>액션태그 - usebean</title>
</head>
<body>
	<h2>UseBean 액션 태그</h2>
	<h3>자바빈즈 생성하기</h3>
	<jsp:useBean id="person" class="kr.co.ezenac.bean.Person" scope="request"/>	
<%-- 상기 한줄을 java형식으로 풀어 만든 결과
	<%
		Person person2 =(Person)request.getAttribute("person");	//request 영역에서 가져옴
		if(person2 == null) {
			person2 = new Person();
			request.setAttribute("person2", person2);
		}
	%> --%>
	
	<!-- 액션 태그로 자바빈즈를 생성할 때는 기본 생성자를 사용하고, 
		값을 생성할때는 세터 , 호출할때는 게터 메서드를 사용함-->
	<h3>액션태그로 자바빈즈 속성 지정하기</h3>
	<jsp:setProperty property="name" name="person" value="정도전"/>
	<jsp:setProperty property="age" name="person" value="40"/>
	
	<h3>액션태그로 자바빈즈 속성 호출하기</h3>
	<ul>
		<li>이름 : <jsp:getProperty property="name" name="person"/></li>
		<li>나이 :<jsp:getProperty property="age" name="person"/></li>
	</ul>
</body>
</html>