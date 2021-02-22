package com.DTO;

public class recommendationDTO {

	private int mem_num;
	private int recom_club1;
	private int recom_club2;
	private int recom_club3;
	
	public recommendationDTO(int mem_num, int recom_club1, int recom_club2, int recom_club3) {
		super();
		this.mem_num = mem_num;
		this.recom_club1 = recom_club1;
		this.recom_club2 = recom_club2;
		this.recom_club3 = recom_club3;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getRecom_club1() {
		return recom_club1;
	}

	public void setRecom_club1(int recom_club1) {
		this.recom_club1 = recom_club1;
	}

	public int getRecom_club2() {
		return recom_club2;
	}

	public void setRecom_club2(int recom_club2) {
		this.recom_club2 = recom_club2;
	}

	public int getRecom_club3() {
		return recom_club3;
	}

	public void setRecom_club3(int recom_club3) {
		this.recom_club3 = recom_club3;
	}
}
	
	