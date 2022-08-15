<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>ID선택자</title>
	<script type="text/javascript">
		/* document에 DOM이 로드되는 이벤트처리 함수 */
		$(document).ready(function() {
			/* 페이지 로드시 id값이 unique인 태그를 검색한후 html() 이용해 태그의 값을 가져옴 */
			alert($('#unique').html())	
		})
	</script>
</head>
<body>
	<div class="class1">안녕하세요</div>
	<div id="unique">제이쿼리입니다!</div>
</body>
</html>