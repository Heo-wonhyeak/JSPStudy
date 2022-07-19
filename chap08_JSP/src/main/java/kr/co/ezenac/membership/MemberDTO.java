package kr.co.ezenac.membership;

/*
 	id varchar2(10) NOT NULL 
	,pwd varchar2(10) NOT NULL
	,name varchar2(30) NOT NULL 
	,regidate DATE DEFAULT sysdate NOT NULL
 */
public class MemberDTO {	//VO와 거의 동일하게 사용함
	private String id;
	private String pwd;
	private String name;
	private String regidate;
	
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
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	
	
}
