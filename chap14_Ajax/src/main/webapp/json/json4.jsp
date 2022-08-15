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
				let jsonStr = '[{"name":"이순신","age":30, "gender":"남자","nickname":"충무공"},{"name":"이도","age":20, "gender":"남자","nickname":"세종대왕"},{"name":"신사임당","age":50, "gender":"여자","nickname":"어머님"}]'
				/* JSON.parse를 가지고 JS객체로 변환 */
				let jsonInfo = JSON.parse(jsonStr)
				
				let output = "회원 정보<br/>"
				output += "================<br/>"
				for(let i in jsonInfo) {
					output += "이름:" + jsonInfo[i].name
					output += " 나이:" + jsonInfo[i].age
					output += " 성별:" + jsonInfo[i].gender
					output += " 별명:" + jsonInfo[i].nickname+"<br/>"
				}
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