<%@page import="kr.co.ezenac.membership.MemberDTO"%>
<%@page import="kr.co.ezenac.membership.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 폼으로부터 받은 아이디와 패스워드
	String userId = request.getParameter("user_id");
	String userPw = request.getParameter("user_pw");
	
	//web.xml에서 가져온 DB 연결 정보
	String oracleDriver = application.getInitParameter("OracleDriver");
	String oracleUrl = application.getInitParameter("OracleUrl");
	String oracleID = application.getInitParameter("OracleID");
	String oraclePWD = application.getInitParameter("OraclePWD");
	
	//DAO 생성
	MemberDAO dao = new MemberDAO(oracleDriver,oracleUrl,oracleID,oraclePWD);
	MemberDTO memberDTO = dao.getMember(userId, userPw);
	dao.close();
	
	//로그인 성공 여부 처리
	if(memberDTO.getId() != null) {
		//로그인 성공
		session.setAttribute("UserId", memberDTO.getId());
		session.setAttribute("UserName", memberDTO.getName());
		response.sendRedirect("loginForm.jsp");
	} else {
		//로그인 실패
		request.setAttribute("loginErrMsg", "로그인 오류 입니다.");
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
	}
%>