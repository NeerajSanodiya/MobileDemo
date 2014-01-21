package dto;

public class LoginDTO {
	
	private String unm;
	private String up;
	private String ul;

	public String getUl() {
		System.out.println("Login UL");
		return ul;
	}
	public void setUl(String ul) {
		this.ul = ul;
	}
	public String getUnm() {
		return unm;
	}
	public void setUnm(String unm) {
		this.unm = unm;
	}
	public String getUp() {
		return up;
	}
	public void setUp(String up) {
		this.up = up;
	}

}
