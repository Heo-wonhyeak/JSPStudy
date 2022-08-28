package kr.co.mvc_ii.book;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/book/insertBook.do")
public class InsertBookController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//글쓰기 폼으로 진입
		request.getRequestDispatcher("/book/insertBook.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookDTO dto = new BookDTO();
		String bookName = request.getParameter("bookName");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String price = request.getParameter("price");
		String publication_date = request.getParameter("publication_date");

		
		dto.setBookName(bookName);
		dto.setAuthor(author);
		dto.setPublisher(publisher);
		dto.setPrice(price);
		dto.setPublication_date(publication_date);
		
		BookDAO dao = new BookDAO();
		int result = dao.insertBook(dto);
		
		if (result == 1) {	//글쓰기 성공
			response.sendRedirect("../book/saveBook.jsp");
		}
		else {				//글쓰기 실패
			response.sendRedirect("../book/insertBook.do");
		}
		
	}
}
