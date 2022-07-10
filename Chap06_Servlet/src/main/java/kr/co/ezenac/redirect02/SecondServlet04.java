package kr.co.ezenac.redirect02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second4")
public class SecondServlet04 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//name으로 이전 서블릿에서 전달된 lee를 받음
		String name = request.getParameter("name");
		
		out.print("<html><body>");
		out.print("이름 : "+name);
		out.print("</body></html>");
	}
}
