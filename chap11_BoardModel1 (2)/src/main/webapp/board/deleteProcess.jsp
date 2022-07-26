<%@page import="kr.co.ezenac.model1.board.BoardDTO"%>
<%@page import="kr.co.ezenac.model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="isLoggedIn.jsp" %>	<!-- 로그인 여부 확인 -->
<%
	//삭제할 게시물의 num값 획득 (일련번호)
	String num = request.getParameter("num");

//내가 만든거 (성공)
/* 	BoardDTO dto = new BoardDTO();
	dto.setNum(num);

	BoardDAO dao = new BoardDAO(application);
	int deletePost = dao.deletePost(dto);
	dao.close();
	
	if(deletePost == 0) {
		JsFunction.alertBack("삭제에 실패했습니다.", out);
	} else {
		JsFunction.alertLocation("삭제되었습니다.", "list.jsp", out);
	} */
	
	//강사님 작
	BoardDTO dto = new BoardDTO();
	BoardDAO dao = new BoardDAO(application);
	dto = dao.selectView(num);
	
	//로그인 아이디 받아오기
	String sessionId = session.getAttribute("UserId").toString();
	
	int delResult = 0;
	
	//작성자가 본인인지 확인
	if(sessionId.equals(dto.getId())) {
		//작성자가 본인이면
		dto.setNum(num);
		delResult = dao.deletePost(dto);
		dao.close();
		
		//성공여부 처리
		if(delResult == 1) {
			JsFunction.alertLocation("삭제되었습니다.", "list.jsp", out);
		} else {
			//실패시 이전 페이지로 이동
			JsFunction.alertBack("삭제에 실패했습니다.", out);
		}
	} else {
		JsFunction.alertBack("작성자 본인이 아니면 삭제할수 없습니다..", out);
	}
%>