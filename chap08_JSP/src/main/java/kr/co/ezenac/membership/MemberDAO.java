package kr.co.ezenac.membership;

import java.sql.SQLException;

import kr.co.ezenac.common.JDBConnection;

public class MemberDAO extends JDBConnection{
	
	public MemberDAO(String drv, String url, String id ,String pw) {
		super(drv, url, id, pw);
	}
	
	public MemberDTO getMember(String uid, String upw) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM members WHERE ID = ? AND PWD = ?";
		
		try {
			psmt = conn.prepareStatement(query);	
			psmt.setString(1, uid);					//쿼리문의 첫번째 파라미터 값 설정
			psmt.setString(2, upw);					//쿼리문의 두번째 파라미터 값 설정
			rs = psmt.executeQuery();				//쿼리문 실행
			
			if(rs.next()) {
				//쿼리 결과로 얻은 회원정보를 dto 객체에 저장
				dto.setId(rs.getString("ID"));
				dto.setPwd(rs.getString("PWD"));
				dto.setName(rs.getString(3));		//컬럼 인덱스 사용가능 (1부터시작)
				dto.setRegidate(rs.getString(4));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
}
