package kr.co.ezenac.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBConnection {

	public Connection conn;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	//기본 생성자 
	public JDBConnection() {
		try {
			//JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver 로드 성공");
			
			//DB 연결
			String url = "jdbc:oracle:thin:@db202204191820_high?TNS_ADMIN=/Users/hwh/sqlworkspace/DBeaver/Wallet_DB202204191820";
			String id = "ADMIN";
			String pwd = "Gjdnjsgur02@";
			
			conn = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB연결 성공");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public JDBConnection(String driver, String url, String id , String pwd) {

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, id, pwd);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		
			try {
				if(rs != null) rs.close();
				if(psmt != null) psmt.close();
				if(conn != null) conn.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
