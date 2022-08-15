<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ID 선택자2</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		function addHtml() {
			$("#article").append("추가되었습니다.<br/>") /* 쌓임 */
			$("#article").html("추가되었습니다.<br/>")	/* 한번만 출력됨 */
		}
		function addImage() {
			$(".class1").html("<img src='../img/cuteDog.jpeg' alt='dog'/>")
		}
	</script>
</head>
<body>
	<div>
		<p id="article"></p>
	</div>
	<div class="class1"></div>
	<div class="class1"></div>
	<input type="button" value="추가하기" onclick="addHtml()" />
	<input type="button" value="이미지확인" onclick="addImage()"/>
</body>
</html>