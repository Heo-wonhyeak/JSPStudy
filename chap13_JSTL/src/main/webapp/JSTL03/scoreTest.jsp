<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>시험 점수 입력</title>
</head>
<body>
	<h1>시험 점수를 입력해 주세요.</h1>
	<form action="testResult.jsp">
		시험 점수 : <input type="text" name="score" autofocus/><br/>
		<input type="submit" value="학점변환"/>
	</form>
</body>
</html>