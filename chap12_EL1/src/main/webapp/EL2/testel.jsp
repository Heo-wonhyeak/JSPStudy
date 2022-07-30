<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 변수 선언
	pageContext.setAttribute("num1", 9);
	pageContext.setAttribute("num2", "10");
	
	pageContext.setAttribute("nullStr", null);
	pageContext.setAttribute("emptyStr", "");
	pageContext.setAttribute("lengthZero", new Integer[0]);
	pageContext.setAttribute("sizeZero", new ArrayList());
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>el - 연산자</title>
</head>
<body>
	${ numberVar = 10 }	<!-- 할당과 동시에 출력 -->
	<%-- ${ numberVar = 10;' } <!-- 값만 할당 출력은 x 500에러가 한번씩뜨는데 왜그러지..? --> --%>
	<br/>
	<h3>empty 연산자</h3>
	empty nullStr : ${empty nullStr } <br/>	<!-- true -->
	empty emptyStr : ${empty emptyStr } <br/> <!-- true -->
	empty lengthZero : ${empty lengthZero } <br/> <!-- true -->
	empty sizeZero : ${empty sizeZero } <br/> <!-- true -->
	
	<h3>삼항 연산자</h3>
	num1 gt num2 ? 참 : 거짓 => ${num1 gt num2 ? "num1이 크다" : "num2가 크다" }
	
	<h3>null 연산자</h3>
	null + 10 : ${nullStr + num2 }<br/>	<!-- null 은 0 num2 는 숫자로 캐스팅 -->
	9 + "10" : ${num1 + num2 } <br/>

</body>
</html>