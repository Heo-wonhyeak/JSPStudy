<%@page import="kr.co.ezenac.jstl.Person"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- prefix :접두어 만들기 코어는 관례적으로 c 사용 / uri : 태그라이브러리 URI 식별자 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - set</title>
</head>
<body>
	<!-- 변수 선언 -->
	<c:set var="directVar" value="100" />
	<c:set var="elVar" value="${directVar mod 5 }"/>
	<c:set var="expVar" value="<%= new Date() %>"/>
	<c:set var="valVar">변수값 설정</c:set>
	
	<h4>EL을 이용해 값 출력</h4>
	<ul>
		<li>directVar : ${directVar }</li>
		<li>directVar : ${pageScope.directVar }</li>
		<li>elVar : ${elVar }</li>
		<li>expVar : ${expVar }</li>
		<li>valVar : ${valVar }</li>
	</ul>
	
	<h4>자바빈즈 생성 - 생성자 사용</h4>
	<!-- 자바빈즈도 변수로 선언 가능, 자바빈즈 생성시 생성자를 통해 초기값 설정 -->
	<!-- request영역에 저장된 자바빈즈 출력함 -->
	<c:set var="personVar" value='<%= new Person("허원혁",30) %>' scope="request"/>
	<ul>
		<li>personVar.name,personVar.age : ${personVar.name },${personVar.age }</li>
		<li> 이름 : ${requestScope.personVar.name }</li>
		<li> 나이 : ${requestScope.personVar.age }</li>
	</ul>
	
	<h4>자바빈즈 생성2 - target, property 사용</h4>
	<!-- 자바빈즈 생성 후, 값을 나중에 설정하려면 target(변수를 지정), property(멤버 변수명) 속성을 사용 -->
	<c:set var="personVar2" value="<%= new Person() %>" scope="request"/>
	<c:set target="${personVar2 }" property="name" value="김나현"/>
	<c:set target="${personVar2 }" property="age" value="28"/>
	<ul>
		<li>이름 : ${requestScope.personVar2.name }</li>
		<li>나이 : ${requestScope.personVar2.age }</li>
	</ul>
</body>
</html>