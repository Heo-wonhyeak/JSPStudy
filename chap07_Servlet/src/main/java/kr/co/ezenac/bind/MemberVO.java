package kr.co.ezenac.bind;

import java.sql.Date;

/*
 	id varchar2(10) PRIMARY KEY
	,pwd varchar2(10) NOT NULL
	,name varchar2(50)
	,email varchar2(50) NOT NULL 
	,join_date DATE DEFAULT sysdate NOT NULL
 */
public class MemberVO {
	// t_member 테이블의 컬럼의 이름과 동일한 자료형으로 속성 선언!
	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date join_date;
	
	public MemberVO() {
		System.out.println("MemverVOL 생성자 호출");
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
}

