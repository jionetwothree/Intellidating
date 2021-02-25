package com.DTO;

public class memberDTO {

	private int num;
	private String email;
	private String password;
	private String name;
	private String nickname;
	private int mem_club1;
	private int mem_club2;
	private int mem_club3;
	
	public memberDTO(String email, String password, String name, String nickname) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}

	public memberDTO(int num, String email, String password, String name, String nickname, int mem_club1, int mem_club2, int mem_club3) {
		super();
		this.num = num;
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.mem_club1 = mem_club1;
		this.mem_club2 = mem_club2;
		this.mem_club3 = mem_club3;
	}
	
	public memberDTO(String password, String name, String nickname) {
		super();
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}
	

	public memberDTO(int num, String nickname, int mem_club1) {
		super();
		this.num = num;
		this.nickname = nickname;
		this.mem_club1 = mem_club1;
	}
	
	
	public int getNum() {
		return num;
	}

	public memberDTO(String nickname) {
		super();
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getMem_club1() {
		return mem_club1;
	}

	public void setMem_club1(int mem_club1) {
		this.mem_club1 = mem_club1;
	}

	public int getMem_club2() {
		return mem_club2;
	}

	public void setMem_club2(int mem_club2) {
		this.mem_club2 = mem_club2;
	}

	public int getMem_club3() {
		return mem_club3;
	}

	public void setMem_club3(int mem_club3) {
		this.mem_club3 = mem_club3;
	}
	
	
}
