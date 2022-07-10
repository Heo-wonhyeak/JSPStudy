package kr.co.ezenac.location;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first3")
public class FirstServlet03 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
//		자바 스크립트의 location의 href 속성에 서블릿 second3 
		out.print("<script>");
		out.print("location.href='second3'");
		out.print("</script>");
	}
}
