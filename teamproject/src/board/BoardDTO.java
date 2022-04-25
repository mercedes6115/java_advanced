package board;

public class BoardDTO {
	private String fid;
	private String ftitle;
	private String fcon;
	private String fuser;
	private String fdate;
	private String fimg;
	public String getFid() {
		return fid;
	}
	public String getFtitle() {
		return ftitle;
	}
	public String getFcon() {
		return fcon;
	}
	public String getFuser() {
		return fuser;
	}
	public String getFdate() {
		return fdate;
	}
	public String getFimg() {
		return fimg;
	}
	public BoardDTO(String fid, String ftitle, String fcon, String fuser, String fdate, String fimg) {
		super();
		this.fid = fid;
		this.ftitle = ftitle;
		this.fcon = fcon;
		this.fuser = fuser;
		this.fdate = fdate;
		this.fimg = fimg;
	}
	
	
	
	

}
