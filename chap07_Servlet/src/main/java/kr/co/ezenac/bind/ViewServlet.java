package kr.co.ezenac.bind;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewMembers")
public class ViewServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 바인딩해서 넘어온 request에서 회원 정보를 가져옴
		List<MemberVO> membersList = (List<MemberVO>)(request.getAttribute("membersList"));
		
		out.print("<html>");
		out.print("<body>");
		out.print("<table border=1>");
		out.print("<tr align='center' bgcolor='lightgreen'>");
		out.print("<td>id</td><td>pwd</td><td>name</td><td>e-mail</td><td>join_date</td><td>Delete</td>");
		out.print("</tr>");
		
		for(int i=0; i<membersList.size(); i++) {
			MemberVO memberVO = membersList.get(i);	// 조회한 회원 정보를 for문을 <tr>태그를 이용해 출력함
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date join_date = memberVO.getJoin_date();
			out.print("<tr><td>"+id+"</td><td>"+pwd+"</td><td>"+name+"</td><td>"+email
					+"</td><td>"+join_date+"</td><td>"
					+"<a href='member?command=delMember&id="+id+"'>삭제</a>"
					+ "</td></tr>");	//삭제를 클릭하면 command 값과 회원ID를 서블릿으로 전송함
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}
}
