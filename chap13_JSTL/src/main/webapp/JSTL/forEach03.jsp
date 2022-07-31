<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.ezenac.jstl.Person"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - forEach (향상된 for문 - collection)</title>
</head>
<body>
	<h4>List 컬렉션 사용</h4>
	<%
		LinkedList<Person> lists = new LinkedList<>();
		lists.add(new Person("이순신",34));
		lists.add(new Person("정도전",50));
		lists.add(new Person("이도",25));
	%>
	
	<c:set var="lists" value="<%=lists %>"/>
	<c:forEach var="list" items="${lists }">
		<ul>
			<li>이름 : ${list.name }</li>
			<li>나이 : ${list.age }</li>
		</ul>
	</c:forEach>
	
	<h4>Map 컬렉션 사용</h4>
	<!-- 맵 컬렉션을 생성한 후 키와 함께 객체 세개 저장. -->
	<%
		Map<String,Person> maps = new HashMap<>();
		maps.put("1st", new Person("이순신",34));
		maps.put("2nd", new Person("정도전",44));
		maps.put("3rd", new Person("최영",54));
	%>
	<c:set var="maps" value="<%= maps %>"/>
	
	<!-- 맵에 저장된 값이 Person객체이므로 ${map.value.멤버변수명 } 형태로 출력 -->
	<c:forEach var="map" items="${maps }">
		<ul>
			<li>${map.key }이름 : ${map.value.name }</li>
			<li>${map.key }나이 : ${map.value.age }</li>
		</ul>
	
	</c:forEach>
</body>
</html>