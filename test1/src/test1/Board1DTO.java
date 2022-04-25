package test1;

public class Board1DTO {
	private String num;
	private String dapart;
	private String name;
	private String address;
	private String phone;
	public Board1DTO(String num, String dapart, String name, String address, String phone) {
		super();
		this.num = num;
		this.dapart = dapart;
		this.name = name;
		this.address = address;
		this.phone = phone;
	}
	public String getNum() {
		return num;
	}
	public String getDapart() {
		return dapart;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public String getPhone() {
		return phone;
	}
}
