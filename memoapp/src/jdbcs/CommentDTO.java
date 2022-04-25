package jdbcs;

public class CommentDTO {
	private String cid;
	private String ccon;
	private String cdate;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCcon() {
		return ccon;
	}
	public void setCcon(String ccon) {
		this.ccon = ccon;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public CommentDTO(String cid, String ccon, String cdate) {
		super();
		this.cid = cid;
		this.ccon = ccon;
		this.cdate = cdate;
	}


}
