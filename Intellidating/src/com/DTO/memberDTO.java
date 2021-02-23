package com.DTO;

public class memberDTO {

	private int num;
	private String email;
	private String password;
	private String name;
	private String nickname;
	
	public memberDTO(String email, String password, String name, String nickname) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}

	public memberDTO(int num, String email, String password, String name, String nickname) {
		super();
		this.num = num;
		this.email = email;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}
	
	public memberDTO(String password, String name, String nickname) {
		super();
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}
	

	public memberDTO(int num, String nickname) {
		super();
		this.num = num;
		this.nickname = nickname;
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
	
}
