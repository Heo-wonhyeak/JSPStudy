package kr.co.ezenac.session02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 로그인 폼으로부터 받은 아이디와 패스워드
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(userId);
		memberVO.setPwd(userPw);
		
		MemberDAO dao = new MemberDAO();
		boolean result = dao.isExisted(memberVO);
		
		if(result) {
			HttpSession session = request.getSession();
			//조회한 결과가 true 이면 isLogon속성을 true로 세션에 저장함
			session.setAttribute("isLogon", true);
			//조회한 결과가 true 이면 ID와 비밀번호를 세션에 저장함
			session.setAttribute("login_id", userId);
			session.setAttribute("login_pwd", userPw);
			
			out.print("<html><body>");
			out.print("안녕하세요"+userId+"님!<br/>");
			out.print("<a href='show'>회원 정보 보기</a>");
			out.print("</body></html>");
		} else {
			out.print("<html><body>");
			out.print("회원 아이디가 틀립니다<br/>");
			out.print("<a href='login.html'>로그인 다시가기</a>");
			out.print("</body></html>");
		}
	}
}
