package kr.ac.cu.vo;

public class ShopVO {
	private int snum;
	private String sname;
	private String phone;
	private String simage;
	private String scategory;
	private String intro;
	private int startRow;
	private int endRow;
	
	@Override
	public String toString() {
		return "ShopVO [snum=" + snum + ", sname=" + sname + ", phone=" + phone + ", simage=" + simage + ", scategory="
				+ scategory + ", intro=" + intro + ", startRow=" + startRow + ", endRow=" + endRow + ", latitude="
				+ latitude + ", longitude=" + longitude + "]";
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	private double latitude;
	private double longitude;
	
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double laptitude) {
		this.latitude = laptitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getScategory() {
		return scategory;
	}
	public void setScategory(String scategory) {
		this.scategory = scategory;
	}
	
	
}
