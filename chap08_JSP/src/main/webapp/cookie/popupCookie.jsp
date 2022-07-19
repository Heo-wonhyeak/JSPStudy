<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* inactiveToday 매개변수 값 얻기(체크박스 값) 
	   [오늘 하루 열지 않음] 체크박스를 체크했다면 이 값이 "1"이 전달됨*/
	String chkVal = request.getParameter("inactiveToday");		

	if(chkVal != null && chkVal.equals("1")) {	/* 값이 1이면 쿠키를 생성해 응답 객체에 추가 */
		Cookie cookie = new Cookie("popupClose","off");	/* 이름이 popupClose,값이 off 인 쿠키 생성 */
		cookie.setPath(request.getContextPath());	/* 경로 컨텍스트루트(=chap08_JSP packge전역설정) 설정 */
		cookie.setMaxAge(60*60*24);		/* 유지 기간 하루인 쿠키 설정(초 단위 설정) */
		response.addCookie(cookie);		/* 응답 객체에 추가 */
		out.print("쿠키 : 하루동안 열지 않음");	/* 출력문자열은 success : function(resData)로 콜백됨 */
	}
%>