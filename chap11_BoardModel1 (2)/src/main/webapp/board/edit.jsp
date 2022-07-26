<%@page import="kr.co.ezenac.model1.board.BoardDTO"%>
<%@page import="kr.co.ezenac.model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./isLoggedIn.jsp" %> 			<%-- 로그인 확인 --%>

<%
	String num = request.getParameter("num");			//수정하기 게시물 번호 
	BoardDAO dao = new BoardDAO(application);			//dao 생성
	BoardDTO dto = dao.selectView(num);					//게시물 가져오기
	
	String sessionId = session.getAttribute("UserId").toString();		//로그인 ID 획득
	if (!sessionId.equals(dto.getId())) {								//작성자 본인인지 확인
		JsFunction.alertBack("작성자 본인만 수정할 수 있습니다.", out);
		return;
	}
	dao.close();
%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원 게시판 - 수정하기</title>
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
	<h2> 회원 게시판 - 수정하기</h2>
	<form action="editProcess.jsp" name="writeFrm" method="post" 
	      onsubmit="return validateForm(this)">
		<input type="hidden" name="num" value="<%= dto.getNum() %>" />
		
		<table border="1" width="90%">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" style="width: 90%;" value="<%=dto.getTitle() %>" />
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="content" style="width: 90%; height: 100px;"><%=dto.getContent() %></textarea>
				</td>
			</tr>			
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정 완료</button>
					<button type="reset">다시 입력</button>
					<button type="button" onclick="location.href='list.jsp'">목록 보기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
















