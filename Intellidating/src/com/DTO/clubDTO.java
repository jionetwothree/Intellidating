package com.DTO;

public class clubDTO {

	private int club_num;
	private String club_name;
	private int club_mem_int;
	private String club_detail;
	private String club_type1;
	private String club_type2;
	private String club_type3;
	private String club_image;
	
	public clubDTO(int club_num, String club_name, int club_mem_int, String club_detail, String club_type1, String club_type2,
			String club_type3) {
		this.club_num = club_num;
		this.club_name = club_name;
		this.club_mem_int = club_mem_int;
		this.club_detail = club_detail;
		this.club_type1 = club_type1;
		this.club_type2 = club_type2;
		this.club_type3 = club_type3;
	}
	public clubDTO( String club_name, String club_detail, int club_num) {
		super();
		
		this.club_name = club_name;
		this.club_detail = club_detail;
		this.club_num = club_num;
	}

	public clubDTO(int club_num, String club_name, String club_image) {
		this.club_num = club_num;
		this.club_name = club_name;
		this.club_image = club_image;
	}

	public String getClub_name() {
		return club_name;
	}

	public void setClub_name(String club_name) {
		this.club_name = club_name;
	}

	public int getClub_mem_int() {
		return club_mem_int;
	}

	public void setClub_mem_int(int club_mem_int) {
		this.club_mem_int = club_mem_int;
	}

	public String getClub_detail() {
		return club_detail;
	}

	public void setClub_detail(String club_detail) {
		this.club_detail = club_detail;
	}

	public String getClub_type1() {
		return club_type1;
	}

	public void setClub_type1(String club_type1) {
		this.club_type1 = club_type1;
	}

	public String getClub_type2() {
		return club_type2;
	}

	public void setClub_type2(String club_type2) {
		this.club_type2 = club_type2;
	}

	public String getClub_type3() {
		return club_type3;
	}

	public void setClub_type3(String club_type3) {
		this.club_type3 = club_type3;
	}
	public int getClub_num() {
		return club_num;
	}
	public void setClub_num(int club_num) {
		this.club_num = club_num;
	}
	public String getClub_image() {
		return club_image;
	}
	public void setClub_image(String club_image) {
		this.club_image = club_image;
	}
	
}
