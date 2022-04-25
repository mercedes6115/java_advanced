package jdbc;

public class AdminDTO {

	private String aid;
	private String apw;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApw() {
		return apw;
	}
	public void setApw(String apw) {
		this.apw = apw;
	}
	public AdminDTO() {}
	
	public AdminDTO(String aid, String apw) {
		super();
		this.aid = aid;
		this.apw = apw;
	}
	
	
	
	
}
