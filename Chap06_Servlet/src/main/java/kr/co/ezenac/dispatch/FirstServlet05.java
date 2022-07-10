package kr.co.ezenac.dispatch;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first5")
public class FirstServlet05 extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//dispatch 방법을 이용해 second5로 전달함
		//+ GET방식으로 데이터를 전달
		RequestDispatcher dispatch = request.getRequestDispatcher("second5?name=lee2");
		dispatch.forward(request, response);
	}
}
