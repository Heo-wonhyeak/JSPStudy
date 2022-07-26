<%@page import="kr.co.ezenac.model1.board.BoardDAO"%>
<%@page import="kr.co.ezenac.model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./isLoggedIn.jsp" %>		<%-- 로그인 확인 --%>

<%
	// 수정한 내용 얻기
	String num = request.getParameter("num");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//DTO 저장
	BoardDTO dto = new BoardDTO();
	dto.setNum(num);
	dto.setTitle(title);
	dto.setContent(content);
	
	//DB 반영
	BoardDAO dao  = new BoardDAO(application);
	int affected = dao.updateEdit(dto);
	
	dao.close();
	
	//업데이트 성공 여부 처리
	if(affected == 1) {
		//업데이트 성공 시 상세보기 페이지 이동
		response.sendRedirect("view.jsp?num="+dto.getNum());
	} else {
		JsFunction.alertBack("수정하기에 실패했습니다.", out);
	}
%>