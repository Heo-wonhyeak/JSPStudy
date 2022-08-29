<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style type="text/css">
		#loginwrap{
			width: 300px;
			height: 150px;
			border : 1px solid black;
			margin: 20px auto;
		}
		table{
			margin: 0 auto;
			padding:40px;
		}
		span{
			position: absolute;
			top: 12px;
			background-color: white;
			left:44%;
		}
	</style>
	<script type="text/javascript">

	</script>
</head>
<body>
	<div id="loginwrap">
		<span>로그인</span>
		<form id="loginFrm" action="loginPro.jsp" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="userId"/>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="userPw"/>
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>