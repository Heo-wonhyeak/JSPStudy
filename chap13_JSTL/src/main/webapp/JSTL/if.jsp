<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<c:set var="id" value="ezen03" scope="page"/>
<c:set var="name" value="${'이순신' }"/>
<c:set var="number" value="100" />
<%-- <c:set var="string" value="Java" /> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSTL - if</title>
</head>
<body>
	<c:if test="${1<2 }" var="ifVar" scope="page">
		<h4>참입니다.</h4>
	</c:if>
	ifVar : ${ifVar }<br/>
	
	<h4>EL 양쪽에 빈 공백이 있는 경우</h4>
	<c:if test=" ${true } " var="result">
		<h4>EL 양쪽에 빈 공백이 있는 경우</h4>
	</c:if>
	result : ${result } <br/>
	
	<c:if test="${13 !=13 }">
		출력되지 않음
	</c:if>
	
	<c:if test="${(id=='ezen03') && (name=='이순신') }">
		<h4>아이디 ${id }인 분의 이름은 ${name }</h4>
	</c:if>
	
	<h4>JSTL의 if 태그로 짝수 / 홀수 판단하기</h4>
	<c:if test="${number mod 2 eq 0 }" var="result2">
		${number }는 짝수 입니다.<br/>
	</c:if>
	result2 : ${result2 }<br/>
	
	<h4>문자열 비교와 else 구문처럼 사용하기</h4>
	<c:if test="${string eq 'Java' }" var="result3">
		<h4>출력되지 않음</h4><br/>
	</c:if>
	
	<c:if test="${not result3 }">
		'Java'와 string은 같지 않습니다.
	</c:if>
	
	<h4>조건식 주의사항</h4>
	<c:if test="true" var="result4">
		true라는 값은 이엘 코드가 아니어도 반환 가능! 하지만 일반 서식은 안됨[무조건 false] (ex. 13==13) <br/>
	</c:if>
	result4 : ${result4 }
	
	<h4>조건식 주의사항</h4>
	<c:if test="TrUe" var="result5">
		true는 대소문자 구분 없음! True TRue tRuE ... (ex. 13==13) <br/>
	</c:if>
	result5 : ${result5 }
	
</body>
</html>