package kr.co.ezenac.cookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/set2")
public class SetCookieValue2 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date = new Date();
		String dateToStr = dateFormat.format(date);
		
		out.print("현재시간 : "+dateToStr);
		// Cookie 객체를 생성한 후 cookieTest 이름으로 한글정보를 인코딩해서 쿠키에 저장함
		Cookie c = new Cookie("cookieTest", URLEncoder.encode("Servlet 쿠키 프로그래밍입니다.", "utf-8"));
		c.setMaxAge(60*60*24);		// 유효기간(하루) 설정
		response.addCookie(c);		//생성된 쿠키를 브라우저로 전송함
		Cookie cDate = new Cookie("cookieDate",URLEncoder.encode(dateToStr, "utf-8"));
		cDate.setMaxAge(60*60*24);
		response.addCookie(cDate);
		
		
		out.print("<br/>현재시간을 Cookie로 저장합니다.");
	}
}
