<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<title>텍스트에 박스 표시</title>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#input").keypress(function (e) {
				if(e.keyCode === 13) {
					fnProcess();
				}
			});
		})
		
		function fnProcess() {
			let value = $("#textInput").val()
			$("#textOutput").val(value)
		}
	</script>
</head>
<body>
	<input type="text" id="textInput" autofocus />
	<input type="button" id="input" value="입력하기" onclick="fnProcess()" /><br/><br/>
	
	결과 : <br/>
	<input type="text" id="textOutput" disabled/>
</body>
</html>