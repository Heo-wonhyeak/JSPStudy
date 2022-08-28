<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>책등록</title>
	<style type="text/css">
		section {
			display: inline-block;
			width : 80%;
			position: relative;
			left:12%;
			padding:30px;
		}
		* {
		 margin : 0 auto;
		}
		a {
			text-decoration: none;
			color : #F78181;
		}
		a:hover{
			color : #BCA9F5;
		}
	</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<%@ include file="../common/nav.jsp" %>
	<section>
		<h2 >저장 성공</h2>
		<a href="../book/bookList.do" style="font-size:20px;">목록으로..</a>

	</section>
	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>