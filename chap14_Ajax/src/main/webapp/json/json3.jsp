<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JSON 테스트</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		/* 페이지 로드되자마자 무조건 실행됨 */
		$(function() {
			/* #checkJson 클릭시 실행됨 */
			$('#checkJson').click(function(){
				let jsonStr = '{"name":"이순신","age":30, "gender":"남자","nickname":"충무공"}'
				/* JSON.parse를 가지고 JS객체로 변환 */
				let jsonInfo = JSON.parse(jsonStr)
				
				let output = "회원 정보<br/>"
				output += "================<br/>"
				output += "이름: " + jsonInfo.name +"<br/>"
				output += "나이: " + jsonInfo.age +"<br/>"
				output += "성별: " + jsonInfo.gender +"<br/>"
				output += "별명: " + jsonInfo.nickname +"<br/>"
				
				/* 회원 이름 출력 */
				$("#output").html(output)
			})
		})
	</script>
</head>
<body>
		<a id="checkJson" style="cursor : pointer;">출력</a><br/><br/>
		<div id="output"></div>
</body>
</html>