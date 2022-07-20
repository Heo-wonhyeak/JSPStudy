package kr.co.ezenac.session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sess3")
public class SessionTest3 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//최초 요청시 세션 객체를 새로 생성하거나 기존 세션을 반환함
		HttpSession session = request.getSession();
		out.print("세션 아이디 : "+session.getId()+"<br/>");
		out.print("최초 세션 생성 시간 : "+new Date(session.getCreationTime())+"<br/>");
		out.print("최근 세션 접근 시각 : "+new Date(session.getLastAccessedTime())+"<br/>");
		out.print("톰캣 기본 세션 유효 시간 : " +session.getMaxInactiveInterval()+"<br/>");
		
		//최초 생성된 세션인지 판별
		if(session.isNew()) {
			out.print("새 세션이 만들어 졌습니다.");
		}
		//생성된 세션 삭제 - Logout 
		session.invalidate();
	}
}
