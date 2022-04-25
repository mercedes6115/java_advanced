package jdbc;

public class JobDTO {
	private String jid;
	private String juser;
	private String jtitle;
	private String jdate;
	private String jfile;
	private String jcon;
	public String getJid() {
		return jid;
	}
	public String getJuser() {
		return juser;
	}
	public String getJtitle() {
		return jtitle;
	}
	public String getJdate() {
		return jdate;
	}
	public String getJfile() {
		return jfile;
	}
	public String getJcon() {
		return jcon;
	}
	public JobDTO(String jid, String juser, String jtitle, String jdate, String jfile, String jcon) {
		super();
		this.jid = jid;
		this.juser = juser;
		this.jtitle = jtitle;
		this.jdate = jdate;
		this.jfile = jfile;
		this.jcon = jcon;
	}

	
	

}
