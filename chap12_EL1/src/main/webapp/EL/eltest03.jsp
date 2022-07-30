<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="m1" class="kr.co.ezenac.el.MemberBean" scope="page"/>	<!-- 유즈빈 생성 -->
<jsp:setProperty property="name" name="m1" value="이순신"/>	<!-- 빈의 name 속성에 값을 설정함 -->
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page" />	<!-- ArrayList 객체를 빈으로 생성 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>표현언어 - empty 연산</title>
</head>
<body>
	<h2>empty 연산자</h2>
	<h3>
		empty m1 : ${empty m1 } <br/> <!-- m1의 name 속성이 설정되어 있으므로 false 반환함. -->  
		not empty m2 : ${ not empty m2 } <br/> <!-- m2 ArrayList 값이 비어있으므로 false 반환함 -->
		<br/>
		empty "Hello" :  ${empty "Hello"  } <br/> 
		empty null :  ${empty null  } <br/> 
		empty "" :  ${empty ""  } <br/> 
	</h3>
</body>
</html>