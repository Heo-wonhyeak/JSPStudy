package kr.co.mvc_ii.book;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/book/bookList.do")
public class BookListController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookDAO dao = new BookDAO();
		
		Map<String, Object> map = new HashMap<>();
		String searchField = request.getParameter("searchField");
		String searchWord = request.getParameter("searchWord");
		
		if (searchWord != null) {			
			map.put("searchField", searchField);
			map.put("searchWord", searchWord);
		}
		
		List<BookDTO> bookList = dao.selectBookList(map);
		dao.close();
		
		request.setAttribute("bookList", bookList);
		request.getRequestDispatcher("/book/bookList.jsp").forward(request, response);
	}
}
