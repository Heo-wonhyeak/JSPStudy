package kr.co.ezen.myfile;

import java.sql.Date;

/* 파일 업로드 다운로드용 테이블
idx	number		Y	N
name	varchar2	50		N
title	varchar2	200		N
cate	varchar2	30		
ofile	varchar2	100		N
sfile	varchar2	30		N
postdate	date			N
*/

public class MyfileDTO {
	private String idx;
	private String name;
	private String title;
	private String cate;
	private String ofile;
	private String sfile;
	private Date postdate;
	
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
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
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
	public Date getPostdate() {
		return postdate;
	}
	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}

}
