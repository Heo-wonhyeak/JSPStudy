package kr.co.ezenac.model2.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.ezenac.model2.util.FileUtil;
import kr.co.ezenac.model2.util.JsFunction;

@WebServlet("/board/pass.do")
public class PassController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//mode 매개변수 값을 request 영역에 저장한 다음 pass.jsp로 포워드함
		request.setAttribute("mode", request.getParameter("mode"));
		request.getRequestDispatcher("/board/pass.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//매개변수 저장
		String idx = request.getParameter("idx");
		String mode = request.getParameter("mode");
		String pass = request.getParameter("pass");
		
		BoardDAO dao = new BoardDAO();
		boolean confirmed = dao.confirmPassword(pass, idx);
		dao.close();
		
		if (confirmed) {			// 비밀번호 일치
			if (mode.equals("edit")) {				//수정 모드
				//검증이 완료된 비밀번호를 session 영역에 저장
				HttpSession session = request.getSession();
				session.setAttribute("pass", pass);
				response.sendRedirect("../board/edit.do?idx=" + idx);	// 수정하기 페이지로 이동 요청
				
			}
			else if (mode.equals("delete")) {		//삭제 모드 - 게시물이 첨부된 파일도 같이 삭제해야함.
				dao = new BoardDAO();
				BoardDTO dto = dao.selectView(idx);		//기존 정보를 보관
				int result = dao.deletePost(idx);		//게시물 삭제
				dao.close();
				
				if (result == 1) {		//게시물 삭제 성공시 보관해둔 정보에서 파일이름을 찾아 첨부파일까지 삭제함
					String saveFileName = dto.getSfile();
					FileUtil.deleteFile(request, "/Uploads", saveFileName);
				}
				//목록페이지로 이동
				JsFunction.alertLocation(response, "삭제되었습니다.", "../board/list.do");		
			}
		}
		else { 		// 비밀번호 불일치
			JsFunction.alertBack(response, "비밀번호 검증에 실패했습니다.");
		}
	}
}


















