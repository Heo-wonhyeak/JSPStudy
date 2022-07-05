<%@page import="kr.co.ezenac.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezenac.dto.Person" %>

<%
	//pageContext객체를 통해 page 영역에 속성값을 저장함. 
	pageContext.setAttribute("pageInteger", 1000);
	pageContext.setAttribute("pageString", "페이지 영역에 문자열");
	pageContext.setAttribute("pagePerson", new Person("허원혁",30));
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
</head>
<body>
	<h2>페이지 영역의 속성값 읽기</h2>
	<%
		//속성 읽기
		int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
		String pString = pageContext.getAttribute("pageString").toString();
		Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>pInteger : <%= pInteger %></li>
		<li>pString : <%= pString %></li>
		<li>pPerson : <%= pPerson.getName() %>,<%=pPerson.getAge() %></li>
	</ul>
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="pageInclude.jsp" %>
	
	<h2>페이지 이동후 page 영역 읽어오기</h2>
	<a href="pageLocation.jsp">click</a>
</body>
</html>