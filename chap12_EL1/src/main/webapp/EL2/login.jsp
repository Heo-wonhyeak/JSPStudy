<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인</title>
</head>
<body>
	<form action="member3.jsp" >
		아이디 : <input type="text" size="20" /><br/>
		비밀번호 : <input type="password" size="20"" /> <br/>
		<input type="submit" value="로그인" />
		<input type="reset" value="다시입력" /><br/>
		
		<!-- 기존 방식 : 직접 컨텍스트 이름 입력 -->
		<a href="http://localhost:8080/chap12_EL1/EL2/memberForm.jsp">회원가입</a><br/>
		
		<!-- 익스프레션을 활용한 request.getContextPath()메서드를 이용해 컨텍스트 이름을 가져옴 -->
		<a href="<%= request.getContextPath() %>/EL2/memberForm.jsp">회원가입</a><br/>
		
		<!-- EL을 활용한 방법 : 자바코드 사용하지 않고 pageContext 속성인 request 하위의 contextPath 속성으로 컨텍스트 이름 가져옴 -->
		<!-- ${pageContext.request.servletContext.contextPath } -->
		<a href="${pageContext.request.contextPath }/EL2/memberForm.jsp ">회원가입</a>
	</form>
</body>
</html>