<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style type="text/css">
		a {
			text-decoration: none;
			color : #A9BCF5;
		}
		a:hover{
			color : #F7819F;
		}
		nav {
			display: inline-block;
			width : 15%;
			position : absolute;
			left : 30px;
			top : 260px;
		}
	</style>
</head>
<body>
	<nav>
		<div id= "nav">
			<ul>
				<li>
					<a href="../book/insertBook.do">도서 입력</a>
				</li>
				<li>
					<a href="../book/bookList.do">도서 목록</a>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>