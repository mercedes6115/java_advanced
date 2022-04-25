package jdbc;

public class Resume_weDTO {
	private String certi_name;
	private String grade;
	private String gain_date;
	private String issue_org;
	public String getCerti_name() {
		return certi_name;
	}
	public void setCerti_name(String certi_name) {
		this.certi_name = certi_name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGain_date() {
		return gain_date;
	}
	public void setGain_date(String gain_date) {
		this.gain_date = gain_date;
	}
	public String getIssue_org() {
		return issue_org;
	}
	public void setIssue_org(String issue_org) {
		this.issue_org = issue_org;
	}
	public Resume_weDTO(String certi_name, String grade, String gain_date, String issue_org) {
		super();
		this.certi_name = certi_name;
		this.grade = grade;
		this.gain_date = gain_date;
		this.issue_org = issue_org;
	}
	
}
