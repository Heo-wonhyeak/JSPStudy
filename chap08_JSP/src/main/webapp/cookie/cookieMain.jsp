<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cookie</title>
</head>
<body>
	<h1>1. 쿠키(Cookie) 설정</h1>
	<%
		Cookie cookie = new Cookie("ezenCookie", "쿠키주세요");	//쿠키이름, 값
		cookie.setPath(request.getContextPath()); 	// 쿠키가 적용될 경로 지정. 경로를 컨텍스트 루트로 설정
			// /Users/hwh/workspace-JSP/chap08_JSP 웹애플리케이션 전체에서 쿠키 사용
		
		cookie.setMaxAge(3600);		//쿠키가 유지될 기간을 초 단위로 설정함 - Default = 브라우저 닫힐때 삭제됨 / 유지시간을 1시간으로 설정함
		response.addCookie(cookie);	// 응답 헤더에 쿠키 추가
	%>
	<h2>2. 쿠키(Cookie) 설정직후 쿠키값 확인하기</h2>
	<%
		Cookie[] cookies = request.getCookies();		// 요청헤더의 모든 쿠키 얻기
		if(cookies != null) {
			for(Cookie c : cookies) {
				String cookieName = c.getName();		//쿠키 이름 얻기
				String cookieValue = c.getValue();		//쿠키 값 얻기
				// 화면에 출력
				out.print(String.format("%s : %s<br/>",cookieName,cookieValue));
			}
		}
	%>
</body>
</html>