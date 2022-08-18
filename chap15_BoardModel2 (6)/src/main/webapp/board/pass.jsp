<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>파일 첨부형 게시판 - 비밀번호 체크</title>
  <script type="text/javascript">
  	/* 비밀번호 입력했는지 확인 */
  	function validateForm(form) {
		if (form.pass.value == "") {
			alert("비밀번호를 입력하세요.")
			form.pass.focus()
			return false
		}
	}
  
  </script>
</head>
<body>
	<h2>파일 첨부형 게시판 - 비밀번호 검증</h2>
	<form action="../board/pass.do" name="writeFrm" method="post" 
	      onsubmit="return validateForm(this)">
	    <!-- 삭제 혹은 수정할 게시물의 일련번호(idx)와 모드(mode)를 hidden타입 입력상자에 저장함 -->  
		<input type="hidden" name="idx" value="${param.idx }" />
		<input type="hidden" name="mode" value="${param.mode }">
		<table border="1" width="90%">
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="pass" style="width:100px;" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">비번검증</button>
					<button type="reset">RESET</button>
					<button type="button" onclick="location.href='../board/list.do'">목록보기</button>
				</td>
			</tr>
		</table>
	
	</form>
</body>
</html>



















