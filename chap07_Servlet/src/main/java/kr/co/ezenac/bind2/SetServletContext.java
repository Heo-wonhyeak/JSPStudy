package kr.co.ezenac.bind2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cset")
public class SetServletContext extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();	//ServletContext 객체를 가져옴
		
		List member = new ArrayList();
		member.add("이순신");
		member.add(30);
		
		context.setAttribute("member", member);	//ServletContext 객체에 데이터를 바인딩함.
		
		out.print("<html><body>");
		out.print("이름과 나이 설정함");
		out.print("</body></html>");
	}
}
