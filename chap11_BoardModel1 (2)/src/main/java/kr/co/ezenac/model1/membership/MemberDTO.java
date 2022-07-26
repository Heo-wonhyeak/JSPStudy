package kr.co.ezenac.model1.membership;

/*
	id 	varchar2(10) NOT NULL
	,pass varchar2(10) NOT NULL
	,name varchar2(30) NOT NULL 
	,regidate DATE DEFAULT sysdate NOT NULL * 
 */
public class MemberDTO {
	private String id;
	private String pass;
	private String name;
	private String regidate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
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
