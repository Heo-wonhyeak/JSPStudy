<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./isLoggedIn.jsp" %> 	<%-- 로그인 확인 --%>   
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판 내용 작성</title>
  <script type="text/javascript">
  	function validateForm(form) {		//폼내용 검증
		if (form.title.value == "") {
			alert("제목을 입력하세요.")
			form.title.focus()
			return false
		}
  		if (form.content.value == "") {
  			alert("내용을 입력하세요.")
  			form.content.focus()
  			return false
  		}
	}
  </script>
</head>
<body>
	<jsp:include page="../common/link.jsp" />
	<h2> 회원 게시판 - 글쓰기</h2>
	<form action="writeProcess.jsp" name="writeFrm" method="get" 
	      onsubmit="return validateForm(this)">
		<table border="1" width="90%">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" style="width: 90%" />
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="content" style="width: 90%; height: 100px;"></textarea>
				</td>
			</tr>	
			<tr>
				<td colspan="2" align="center">
					<button type="submit">작성 완료</button>
					<button type="reset">다시 입력</button>
					<button type="button" onclick="location.href='list.jsp'">목록 보기</button>
				</td>
			</tr>		
		</table>
	</form>
</body>
</html>


























