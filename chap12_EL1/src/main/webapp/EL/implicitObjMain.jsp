<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num1 =3;
	/* 4가지 영역 모두에 scopeValue 라는 같은 이름으로 속성 저장함 */
	pageContext.setAttribute("scopeValue","페이지 영역");
	request.setAttribute("scopeValue", "리퀘스트영역");
	session.setAttribute("scopeValue", "세션영역");
	application.setAttribute("scopeValue", "어플리케이션 영역");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어 (EL) - 내장 객체</title>
</head>
<body>
	<h2>각 영역에 저장된 속성 읽기(EL 내장객체)</h2>
	<ul>
		<li>스크립틀릿에서 선언한 변수 : <%= num1 %></li>
		<!-- EL의 내장 객체를 통해 각 영역에 저장된 속성 값 출력 -->
		<li>페이지 영역(EL) : ${pageScope.scopeValue }</li>
		<li>리퀘스트 영역(EL) : ${requestScope.scopeValue }</li>
		<li>세션 영역(EL) : ${sessionScope.scopeValue }</li>
		<li>어플리케이션 영역(EL) : ${applicationScope.scopeValue }</li>
	</ul>
	
	<h2>영역 지정 없이 속성 읽기</h2>	
	<ul>
		<!-- 가장 좁은 영역부터 찾아 들어감. -->
		<li>${scopeValue }</li>
	</ul>
	
	<jsp:forward page="implicitForwardPage.jsp"/>
</body>
</html>