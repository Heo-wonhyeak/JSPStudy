package kr.co.ezenac.utility;

import javax.servlet.jsp.JspWriter;

public class JsFunction {
	//메시지 알림창을 띄우고 명시한 URl로 이동함(ex.로그인에 성공했습니다.)
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = ""
							+"<script>"
							+ "		alert('"+msg+"');"
							+ "		location.href= '"+url+"';"
							+ "</script>";
			out.print(script);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//메시지 알림창을 띄우고 이전 페이지로 돌아감(ex. 로그인에 실패했습니다)
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
							+"<script>"
							+ "		alert('"+msg+"');"
							+ "		history.back();"
							+ "</script>";
			out.print(script);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
