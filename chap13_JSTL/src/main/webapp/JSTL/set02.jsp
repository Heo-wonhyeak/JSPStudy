<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.ezenac.jstl.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - set02</title>
</head>
<body>
	<h4>List 컬렉션 이용</h4>
	<%
		ArrayList<Person> pList = new ArrayList<>();
		pList.add(new Person("이성계",55));
		pList.add(new Person("정도전",50));
	%>
	<c:set var="personList" value="<%= pList %>" scope="request"/>
	<ul>
		<li>person1 이름 : ${requestScope.personList[0].name }</li>
		<li>person1 나이 : ${requestScope.personList[0].age }</li>
		<li>person2 이름 : ${requestScope.personList[1].name }</li>
		<li>person2 나이 : ${requestScope.personList[1].age }</li>
	</ul>
	
	<h4>Map 컬렉션 이용</h4>
	<%
		Map<String,Person> pMap = new HashMap<>();
		pMap.put("personArgs1", new Person("신사임당",40));
		pMap.put("personArgs2",new Person("이이",60));
	%>
	<!-- request영역에 변수명 personMap으로 저장 -->
	<c:set var="personMap" value="<%= pMap %>" scope="request"/>
	<!-- 키를 통해 접근하여 출력함 -->
	<ul>
		<li>이름 : ${requestScope.personMap.personArgs1.name }</li>
		<li>나이 : ${requestScope.personMap.personArgs1.age }</li>
		<li>이름2 : ${personMap.personArgs2.name }</li>
		<li>나이2 : ${personMap.personArgs2.age }</li>
	</ul>
</body>
</html>