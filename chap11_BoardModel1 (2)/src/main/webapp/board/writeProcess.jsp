<%@page import="kr.co.ezenac.model1.utils.JsFunction"%>
<%@page import="kr.co.ezenac.model1.board.BoardDAO"%>
<%@page import="kr.co.ezenac.model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/link.jsp" />

<%
	//write.jsp 폼값 얻기
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//폼값을 dto에 저장
	BoardDTO dto = new BoardDTO();
	dto.setTitle(title);
	dto.setContent(content);
	dto.setId(session.getAttribute("UserId").toString());
	
	//DB에 DTO 입력
	BoardDAO dao = new BoardDAO(application);
	int iResult = dao.insertWrite(dto);
	dao.close();
	
	if (iResult == 1) {
		response.sendRedirect("list.jsp");
	}
	else {
		JsFunction.alertBack("로그인에 실패했습니다.", out);
	}
%>











