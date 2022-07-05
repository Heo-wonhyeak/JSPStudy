<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
</head>
<body>
	<%
		out.print("텍스트 테스트 입니다."); // 버퍼에 저장
		out.clearBuffer();
		
		out.print("<h2> out 내장 객체</h2>");
		
		//버퍼 크기 정보 확인
		out.print("출력 버퍼의 크기 : "+out.getBufferSize() + "<br/>");
		out.print("남은 버퍼의 크기 : "+out.getRemaining() + "<br/>");
		
		out.flush();
		
		out.print("flush 후 버퍼의 크기 : "+out.getRemaining() + "<br/>");
	%>
</body>
</html>