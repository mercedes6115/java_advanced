package board;

public class BoardDTO {
	private String bid;
	private String btitle;
	private String bcon;
	private String buser;
	private String bdate;
	private String bimg;
	
	public String getBimg() {
		return bimg;
	}
	public void setBimg(String bimg) {
		this.bimg = bimg;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcon() {
		return bcon;
	}
	public void setBcon(String bcon) {
		this.bcon = bcon;
	}
	public String getBuser() {
		return buser;
	}
	public void setBuser(String buser) {
		this.buser = buser;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public BoardDTO(String bid, String btitle, String bcon, String buser, String bdate, String bimg) {
		super();
		this.bid = bid;
		this.btitle = btitle;
		this.bcon = bcon;
		this.buser = buser;
		this.bdate = bdate;
		this.bimg = bimg;
	}
	public BoardDTO() {
		super();
	}
	
	

}
