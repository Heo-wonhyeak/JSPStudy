<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>액션태그 - forward</title>
</head>
<body>
	<h2>포워드 결과</h2>
	<!-- 포워드 된 페이지는 이전 페이지와는 서로 다른 페이지임 => 페이지별 생성되는 page영역은 공유되지 않음
													포워드는 요청을 전달하므로 request 영역은 공유됨 -->
	<ul>
		<li>page 영역 : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request 영역 : <%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>