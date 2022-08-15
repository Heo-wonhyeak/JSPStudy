package kr.co.ezenac.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

@WebServlet("/json2")
public class JsonServlet2 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8;");
		PrintWriter out = response.getWriter();
		
		//회원정보 배열을 저장할 JSONObject객체 생성
		JSONObject totalObject = new JSONObject();
		//JSON객체 배열 저장
		JSONArray memberArray = new JSONArray();
		//회원 한명 정보가 들어가는 JSON객체 선언
		JSONObject memberInfo = new JSONObject();
		//JSON객체에 key/value 형태로 회원정보를 저장
		memberInfo.put("name", "이순신");
		memberInfo.put("age", 30);
		memberInfo.put("gender", "남자");
		memberInfo.put("nickname", "충무공");
		//회원정보를 다시 memberArray 배열에 저장함
		memberArray.add(memberInfo);
		
		memberInfo = new JSONObject();
		memberInfo.put("name", "신사임당");
		memberInfo.put("age", 40);
		memberInfo.put("gender", "여자");
		memberInfo.put("nickname", "어머님");
		memberArray.add(memberInfo);
		
		totalObject.put("members", memberArray);
		
		//JSONObject를 문자열로 변환
		String jsonInfo = totalObject.toJSONString();
		System.out.println(jsonInfo);
		
		out.print(jsonInfo);
	}
}
