package kr.co.ezenac.board;
/* 모델2(MVC) 방식 파일첨부형 게시판 테이블
속성 이름	컬럼이름	자료형	크기	유일키 여부	NULL여부	키	기본값
아이디	idx	number		Y	N	기본키	
이름	name	varchar2	50		N		
제목	title	varchar2	200		N		
내용	content	varchar2	2000		N		
작성일자	postdate	date			N		sysdate
원본파일	ofile	varchar2	200				
저장파일	sfile	varchar2	30				
다운로드수	download	number			N		0
비밀번호	pass	varchar2	50		N		
조회수	visitcount	number			N		0
*/

import java.sql.Date;

public class BoardDTO {
	private String idx;
	private String name;
	private String title;
	private String content;
	private Date date;
	private String ofile;
	private String sfile;
	private int download;
	private String password;
	private int visitcount;
	
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public int getDownload() {
		return download;
	}
	public void setDownload(int download) {
		this.download = download;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getVisitcount() {
		return visitcount;
	}
	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}
	
	
}
