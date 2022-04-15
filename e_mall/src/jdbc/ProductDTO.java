package jdbc;
public class ProductDTO {
	private String 	pid;	// 상품아이디
	private String 	pname;	// 상품이름
	private String pprice;	// 상품가격
	private String 	pdesc;	// 상품설명
	private String 	pmanu;	// 상품제조사
	private String 	pcate;	// 상품카테고리
	private String 	pcondi;	// 상품상태(신규 중고 재고)
	private String 	pimgs;	// 상품상태(신규 중고 재고)

	public String getPid() {
		return pid;
	}
	public String getPname() {
		return pname;
	}
	public String getPprice() {
		return pprice;
	}
	public String getPdesc() {
		return pdesc;
	}
	public String getPmanu() {
		return pmanu;
	}
	public String getPcate() {
		return pcate;
	}
	public String getPcondi() {
		return pcondi;
	}
	public String getPimgs() {
		return pimgs;
	}
	
	public ProductDTO(String pid, String pname, String pprice, String pdesc, String pmanu, String pcate,
			String pcondi, String pimgs) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.pdesc = pdesc;
		this.pmanu = pmanu;
		this.pcate = pcate;
		this.pcondi = pcondi;
		this.pimgs = pimgs;
	}
}