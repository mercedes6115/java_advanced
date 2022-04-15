package jdbc;

public class BoardDTO {
	private String bid;
	private String btitle;
	private String bcon;
	private String buser;
	private String bdate;
	
	public String getBuser() {
		return buser;
	}
	public String getBdate() {
		return bdate;
	}
	public String getBtitle() {
		return btitle;
	}
	public String getBcon() {
		return bcon;
	}
	public String getBid() {
		return bid;
	}
	public BoardDTO(String bid, String btitle, String bcon, String buser, String bdate) {
		super();
		this.bid = bid;
		this.btitle = btitle;
		this.bcon = bcon;
		this.buser = buser;
		this.bdate = bdate;
	}

	
}
