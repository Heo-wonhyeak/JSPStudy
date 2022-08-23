package kr.co.ezen.myfile;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.ezen.common.JDBConnection;

public class MyfileDAO extends JDBConnection{
	//새로운 게시물을 입력
	public int insertFile(MyfileDTO dto) {
		int result = 0;
		
		String query = "INSERT INTO myfile (name,title,cate,ofile,sfile) "
				+ " VALUES (?,?,?,?,?)";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getCate());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			
			result = psmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("인서트 중 예외발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	//파일 목록 반환
	public List<MyfileDTO> myFileList() {
		List<MyfileDTO> fileList = new ArrayList<>();
		
		String query = "SELECT * FROM MYFILE ORDER BY IDX DESC";
		
		try {
			psmt = con.prepareStatement(query);		//쿼리준비
			rs = psmt.executeQuery();				//쿼리실행
			
			while(rs.next()) {						//목록안의 파일 수만큼 반복
				MyfileDTO dto = new MyfileDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setSfile(rs.getString(6));
				dto.setPostdate(rs.getDate(7));
				
				fileList.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("select 시 예외발생");
			e.printStackTrace();
		}
		
		return fileList;
 	}
}
