package kr.co.ezenac.session02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/show")
public class MemberInfo extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = "" , pwd = "";
		Boolean isLogon = false;
		
		HttpSession session = request.getSession();
		if(session != null) {
			isLogon = (boolean)session.getAttribute("isLogon"); //
			if(isLogon) {	//
				id = (String)session.getAttribute("login_id");
				pwd = (String)session.getAttribute("login_pwd");
				out.print("<html><body>");
				out.print("아이디 : "+id+"<br/>");
				out.print("비밀번호 : "+pwd+"<br/>");
				out.print("</body></html>");
			} else {
				response.sendRedirect("login.html");
			}
		} else {
			response.sendRedirect("login.html");
		}
	}
}










