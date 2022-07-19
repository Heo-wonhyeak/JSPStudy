package kr.co.ezenac.utility;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 	쿠키를 생성 
 		- 객체 생성, 경로 및 유지 기간 설정 등 필요
 		
 	생성된 쿠키를 읽어옴
 		- 쿠키를 배열로 가져옴 (반복문, 조건문)
 */
public class CookieManager {
	
	//명시한 이름, 값 유지기간 조건으로 새로운 쿠키 생성
	public static void makeCookie(HttpServletResponse response,String cName, String cValue , int cTime) {
		Cookie cookie = new Cookie(cName,cValue);	// 쿠키 생성
		cookie.setPath("/"); 			// 경로 설정 - 웹 애플리케이션 전체에 사용하는 쿠키 만듦
		cookie.setMaxAge(cTime);		// 유지 기간 설정
		response.addCookie(cookie); 	// 응답 헤더에 추가 => 클라이언트 쿠키를 전송함.
	}
	
	// 명시한 이름의 쿠키를 찾아, 그 값을 반환함
	public static String readCookie(HttpServletRequest request, String cName) {
		String cookieValue = "";
		
		// 클라이언트가 보내온 쿠키 목록을 받음
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				String cookieName = c.getName();
				if(cookieName.equals(cName)) {
					cookieValue = c.getValue();
				}
			}
		}
		return cookieValue;
	}
	
	// 명시한 이름의 쿠키 삭제
	public static void deleteCookie(HttpServletResponse response,String cName) {
		// 쿠키 생성시 값은 빈 문자열로, 유지기간은 0으로 부여 = 쿠키삭제
		makeCookie(response, cName, "", 0);
	}
}
