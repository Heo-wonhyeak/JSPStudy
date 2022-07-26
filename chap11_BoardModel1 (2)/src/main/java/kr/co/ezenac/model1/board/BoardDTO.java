package kr.co.ezenac.model1.board;

import java.sql.Date;

/*
	num		NUMBER				PRIMARY KEY
	, title	varchar2(200)		NOT NULL 
	, content varchar2(2000)	NOT NULL 
	, id 	varchar2(10)		NOT NULL 
	, postdate	DATE	DEFAULT sysdate NOT NULL
	, visitcount	number(6)	 * 
 */
public class BoardDTO {
	//멤버 변수
	private String num;			//일련번호(PK)
	private String title;		//제목
	private String content;		//내용
	private String id;			//작성자 id	
	private Date postdate;		//작성일
	private String visitcount;	//조회수
	private String name;		//작성자 이름
	
	// 게터/세터
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getPostdate() {
		return postdate;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}
	public String getVisitcount() {
		return visitcount;
	}
	public void setVisitcount(String visitcount) {
		this.visitcount = visitcount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}




