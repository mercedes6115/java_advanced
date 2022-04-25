package jdbcs;

public class MemoAppDTO {

	private String userid;
	private String mtitle;
	private String mcon;
	private String mdate;
	private String mdone;
	private String mid;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMdone() {
		return mdone;
	}
	public void setMdone(String mdone) {
		this.mdone = mdone;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public String getMcon() {
		return mcon;
	}
	public void setMcon(String mcon) {
		this.mcon = mcon;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public MemoAppDTO(String userid, String mtitle, String mcon, String mdate, String mdone, String mid) {
		this.userid = userid;
		this.mtitle = mtitle;
		this.mcon = mcon;
		this.mdate = mdate;
		this.mdone = mdone;
		this.mid = mid;
	}
	public MemoAppDTO() {

	}

	
	
	
	
	
}
