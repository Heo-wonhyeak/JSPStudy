package kr.co.ezenac.bind;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class MemberServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		MemberDAO dao = new MemberDAO();
		
		String command = request.getParameter("command");	//hidden 속성 command 값 받아옴
		if(command != null && command.equals("addMember")) {	//회원 가입창에서 전송된 command가 addMember라면~
			String _id = request.getParameter("id");
			String _pwd = request.getParameter("pwd");
			String _name = request.getParameter("name");
			String _email = request.getParameter("email");	// 회원가입창에서 전송된 값 받아옴
			
			MemberVO vo = new MemberVO();
			vo.setId(_id);
			vo.setPwd(_pwd);
			vo.setName(_name);
			vo.setEmail(_email);
			
			dao.addMember(vo);
		} else if(command != null && command.equals("delMember")) {	//command값이 delMember인 경우 ID를 가져와 SQL문 전달
			String id = request.getParameter("id");
			
			dao.delMember(id);
		}
		
		List<MemberVO> membersList = dao.listMembers();
		
		// 조회된 회원 정보를 ArrayList 객체에 저장한 후 Request에 바인딩함.
		request.setAttribute("membersList", membersList);
		
		//바인딩한 request를 viewMembers 서블릿으로 포워딩함
		RequestDispatcher dispatch = request.getRequestDispatcher("viewMembers");
		dispatch.forward(request, response);
		
	}
}
