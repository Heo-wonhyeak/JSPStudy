package kr.co.ezenac.model1.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnection {

	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	//기본 생성자
	public JDBConnection() {
		try {
			//JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver 로드 성공");
			
			//DB 연결
			String url = "jdbc:oracle:thin:@192.168.219.101:1521:orcl";
			String id = "system";
			String pwd = "0824";
			
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB연결 성공");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.print("=========================== Error ===============================" );
			e.printStackTrace();
		}
	}
	
	public JDBConnection(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public JDBConnection(ServletContext application) {

		try {
			//JDBC 드라이버 로드
			String driver = application.getInitParameter("OracleDriver");			
			Class.forName(driver);
			
			//DB 연결
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			con = DriverManager.getConnection(url, id, pwd); 
			
			System.out.println("db 연결 성공 - 매개변수 application");
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void close() {
		
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(psmt != null) psmt.close();
				if(con != null) con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}


























