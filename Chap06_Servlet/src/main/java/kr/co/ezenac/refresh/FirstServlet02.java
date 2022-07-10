package kr.co.ezenac.refresh;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first2")
public class FirstServlet02 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		// 웹 브라우저에게 2초 후 다른 서블릿인 second로 재 요청함
		response.addHeader("Refresh", "2; url=second2");
	}
}
