<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인 성공</title>
	<%
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		if(userId != "" && userPw != "") {
			if(userId.equals(userPw)) {
				session.setAttribute("userId", userId);
				%>

				<script>
					alert('로그인 인증되었습니다.');
				</script>

				<%
			} else {
				%>
				<script type="text/javascript">
					alert("로그인실패!");
					location.href='loginForm.jsp';
				</script>
				<%
			}
		} else {
			%>
				<script type="text/javascript">
					alert("로그인실패!");
					location.href='loginForm.jsp';
				</script>
			<%
		}
	%>
</head>
<body>
	<h1>로그인확인</h1>
	<%=userId %>님이 로그인했습니다
</body>
</html>