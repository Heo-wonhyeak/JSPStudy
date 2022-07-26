<%@page import="kr.co.ezenac.model1.utils.JsFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로그인 정보가 없을때 ==> 로그인 페이지로 이동시키는 페이지 --%>
<%
	if (session.getAttribute("UserId") == null) {	//로그인하지 않았다는 의미
		JsFunction.alertLocation("로그인 후 이용해주세요", "../session/loginForm.jsp", out);
		return;		//특정한 조건에서 실행을 멈춤
	}
%>
    
    