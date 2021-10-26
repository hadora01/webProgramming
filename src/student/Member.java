package student;

public class Member {
	
	public int memberno; //학번
	public String membername; //이름
	public String memberemail; //이메일 
	
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getMembername() {
		String rname = (String)membername;
		return rname;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	
	
	
	
}
