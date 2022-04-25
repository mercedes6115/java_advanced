package jdbc;

public class Resume_acDTO {
	private String sch_name;
	private String major;
	private String enrolldate;
	private String gradate;
	public String getSch_name() {
		return sch_name;
	}
	public void setSch_name(String sch_name) {
		this.sch_name = sch_name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEnrolldate() {
		return enrolldate;
	}
	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}
	public String getGradate() {
		return gradate;
	}
	public void setGradate(String gradate) {
		this.gradate = gradate;
	}
	public Resume_acDTO(String sch_name, String major, String enrolldate, String gradate) {
		super();
		this.sch_name = sch_name;
		this.major = major;
		this.enrolldate = enrolldate;
		this.gradate = gradate;
	}
	
}
