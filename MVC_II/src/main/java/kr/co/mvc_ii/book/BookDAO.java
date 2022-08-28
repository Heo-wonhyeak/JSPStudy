package kr.co.mvc_ii.book;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import kr.co.mvc_ii.common.JDBConnection;

public class BookDAO extends JDBConnection{
	
	public BookDAO() {}

	public int insertBook(BookDTO dto) {
		
		int result =0;
		
		String sql = "INSERT INTO BOOK2 "
				+ " (BOOKCODE, BOOKNAME, AUTHOR, PUBLISHER, PRICE, PUBLICATION_DATE) "
				+ " VALUES(book_code_num.nextval, ?, ?, ?, ?,?)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getBookName());
			psmt.setString(2, dto.getAuthor());
			psmt.setString(3, dto.getPublisher());
			psmt.setString(4, dto.getPrice());
			psmt.setString(5, dto.getPublication_date());
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("책 입력 업로드 sql 중 오류발생");
		}
		
		return result;
	}

	public List<BookDTO> selectBookList(Map<String, Object> map) {
		
		List<BookDTO> bookList = new ArrayList<>();
		
		String sql = "SELECT * FROM book2 ";
		
		if (map.get("searchWord") != null) {
			sql += "WHERE "+map.get("searchField") + " "
					+ "LIKE '%"+map.get("searchWord")+"%'";
		};
		sql += "ORDER BY BOOKCODE ASC";
		
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BookDTO dto = new BookDTO();
				
				dto.setBookCode(rs.getInt(1));
				dto.setBookName(rs.getString(2));
				dto.setAuthor(rs.getString(3));
				dto.setPublisher(rs.getString(4));
				dto.setPrice(rs.getString(5));
				dto.setPublication_date(rs.getString(6));
				
				bookList.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("북리스트 조회중 오류 발생");
		}

		return bookList;
	}

}
