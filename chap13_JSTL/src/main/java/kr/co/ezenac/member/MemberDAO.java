package kr.co.ezenac.member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
//	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
//	private static final String URL = "jdbc:oracle:thin:@db202204191820_high?TNS_ADMIN=/Users/hwh/sqlworkspace/DBeaver/Wallet_DB202204191820";
//	private static final String USER = "ADMIN";
//	private static final String PWD = "Gjdnjsgur02@";

	private Connection conn;						// 데이터 베이스와 연결
	private Statement stmt;							// (인파라미터가 없는)정적 쿼리문 실행할때 사용됨
	private PreparedStatement pstmt;				// 동적 쿼리문 실행
	private ResultSet rs;							// select 쿼리문의 결과를 저장할 때 사용됨
	private DataSource dataFactory;
	
//	public void connDB() {
//		try {
//			Class.forName(DRIVER);
//			System.out.println("Oracle 드라이버 로딩 성공");
//			
//			conn = DriverManager.getConnection(URL, USER, PWD);
//			System.out.println("Connection 생성 성공");
//			
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
	
	// 연결 해제(자원 반납)
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null)stmt.close();
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public MemberDAO() {
		try {
			// 커넥션 풀 (DataSource) 얻기!
			// 자바의 네이밍 서비스(JNDI)에서 이름과 실제 객체를 연결해주는 개념이 Context임
			// InitialContext는 네이밍 서비스를 이용하기 위한 시작점임.
			Context ctx = new InitialContext();	//InitialContext() 객체 생성
			// java:comp/env << 현재 웹 애플리케이션의 루트 디렉토리
			// 현재 웹 애플리케이션이 사용할수 있는 모든 자원은 java:comp/env 아래에 위치함
			Context envContext = (Context)ctx.lookup("java:comp/env");
			// java:comp/env 아래에 위치한 jdbc/oracle자원을 얻어옴
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public List<MemberBean> listMembers(){
		List<MemberBean> list = new ArrayList();
		
//		connDB();			// 네가지 정보로 DB를 연결함 
		
		String query = "SELECT * FROM T_MEMBER";
		System.out.println(query);
		
		try {
			// 커넥션 풀을 통해 연결 얻기			
			// 데이터 소스를 통해 생성되어 있는 객체를 얻어옴
			conn = dataFactory.getConnection();
			
			pstmt = conn.prepareStatement(query);	//prepareStatement()메서드에 SQL문을 전달해 객체 생성함.
			
			/*
			 select쿼리문을 실행할때 사용함
			 조회한 레코드들의 집합인 ResultSet 객체를 반환함.*/
			rs = pstmt.executeQuery();			//미리 설정한 SQL문을 실행
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date join_date = rs.getDate("join_date");		//조회한 레코드의 각 컬럼 값을 받아옴.
				
				MemberBean vo = new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(join_date);	//각 컬럼 값을 다시 ArrayList로 쌓기 위해 MemberVO 객체의 속성에 설정함.
				
				list.add(vo);				//설정된 MemberVO 객체를 ArrayList에 저장함.
			}
			
		close();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;		//조회한 레코드의 개수만큼 MemberVO객체를 저장한 ArrayList를 반환함 
	}

	public void addMember(MemberBean memberVO) {
		try {
			conn = dataFactory.getConnection();	//DataSource를 이용한 DB연결
			
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			
			String query = "INSERT INTO T_MEMBER (ID,PWD,NAME,EMAIL) VALUES (?,?,?,?)";
			System.out.println("PrepareStatement : " + query);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);		//insert문의 ? 의 순서대로 회원정보 setting
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			
			pstmt.executeUpdate();		//회원 정보 테이블에 추가됨
			
			close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delMember(String id) {
		try {
			conn = dataFactory.getConnection();
			
			String query = "DELETE FROM T_MEMBER WHERE ID = ?";	//delete문을 문자열로 만듦
			System.out.println("query : "+query);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);	//파라미터로 넘어온 아이디! 첫번째 물음표 입력!
			pstmt.executeUpdate();	//delete문 실행 => 테이블에서 해당 id 회원 정보 삭제 (auto commit)
			
			close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean isExisted(MemberBean memberVO) {
		boolean result = false;
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		
		try {
			conn = dataFactory.getConnection();
//			ID와 비밀번호가 존재하면 true를 존재하지 않으면 false를 조회함
			String query = "SELECT DECODE(COUNT(*),1,'true','false') "
							+ "AS RESULT FROM T_MEMBER WHERE ID = ? AND PWD =?";
			
			//전달된 id와 비밀번호를 이용해 sql문으로 db에 조회
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			//커서를 첫번째 레코드로 위치시킴
			rs.next();
			result = Boolean.parseBoolean(rs.getString("RESULT"));
			System.out.println("result = "+result);
						
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
