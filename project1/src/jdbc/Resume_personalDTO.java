package jdbc;

public class Resume_personalDTO {
	private String k_name;
	private String reginum;
	private String e_name;
	private String birthday;
	private String address;
	private String pimg;
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public String getK_name() {
		return k_name;
	}
	public void setK_name(String k_name) {
		this.k_name = k_name;
	}
	public String getReginum() {
		return reginum;
	}
	public void setReginum(String reginum) {
		this.reginum = reginum;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Resume_personalDTO(String k_name, String reginum, String e_name, String birthday, String address,String pimg) {
		super();
		this.k_name = k_name;
		this.reginum = reginum;
		this.e_name = e_name;
		this.birthday = birthday;
		this.address = address;
		this.pimg = pimg;
	}
	

}
