<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>내장객체 - request</title>
</head>
<!-- HTTP 요청 헤더 정보
		- user-agent : 웹 브라우저 종류
		- referer : 웹을 서핑하면서 링크를 통해 다른 사이트로 	방문시 남는 흔적
		- cookie : 쿠키 정보 -->
<body>
	<h2>3. 요청 헤더 정보 출력하기</h2>
	<%
		Enumeration headers = request.getHeaderNames();	// 모든 요청 헤더의 이름 반환함
		while(headers.hasMoreElements()) {				// 출력할 요청 헤더명이 더 있는지 확인함
			String headerName = (String)headers.nextElement();		//헤더명이 있다면 요청헤더 이름 얻어옴
			String headerValue = request.getHeader(headerName);		// 헤더명을 건네 헤더값을 얻어옴
			out.print("헤더명 : "+headerName +", 헤더값 : "+headerValue+"<br/>");
		}
	%>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않음</p>
</body>
</html>