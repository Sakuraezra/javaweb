package entity;

public class Place {
	private Integer pid;
	private String pname;
	private Integer pnumN;
	private Integer pnumS;
	private String prank;
	//Ê¡ÊÐ
	
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getPnumN() {
		return pnumN;
	}

	public void setPnumN(Integer pnumN) {
		this.pnumN = pnumN;
	}

	public Integer getPnumS() {
		return pnumS;
	}

	public void setPnumS(Integer pnumS) {
		this.pnumS = pnumS;
	}



	public String getPrank() {
		return prank;
	}

	public void setPrank(String prank) {
		this.prank = prank;
	}

	@Override
	public String toString() {
		return pid + " "+ pname +" "+ pnumN
				+ " " + pnumS + " "+ prank + " ";
	}
	
}
