package jobboard;

public class JobDTO {
	private String jid;
	private String juser;
	private String jtitle;
	private String jdate;
	private String jfile;
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
	public JobDTO(String jid, String juser, String jtitle, String jdate,String jfile) {
		super();
		this.jid = jid;
		this.juser = juser;
		this.jtitle = jtitle;
		this.jdate = jdate;
		this.jfile = jfile;
	}
	
	

}
