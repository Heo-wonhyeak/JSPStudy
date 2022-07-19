<%@page import="kr.co.ezenac.utility.JsFunction"%>
<%@page import="kr.co.ezenac.utility.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 폼 값 읽기
	String userId = request.getParameter("user_id");
	String userPw = request.getParameter("user_pw");
	String saveCheck = request.getParameter("save_check");
	
	//사용자 인증
	if("ezen".equals(userId) && "0824".equals(userPw)) {
		// 로그인 성공
		if(saveCheck != null && saveCheck.equals("Y")) {	// [아이디 저장하기]체크 확인
			//쿠키 생성
			CookieManager.makeCookie(response, "loginId", userId, 86400);
		} else {
			//쿠키 삭제
			CookieManager.deleteCookie(response, "loginId");
		}
		JsFunction.alertLocation("로그인성공했습니다", "LoginPage.jsp", out);
	} else {
		//로그인 실패
		JsFunction.alertBack("로그인에 실패했습니다.", out);
	}
%>