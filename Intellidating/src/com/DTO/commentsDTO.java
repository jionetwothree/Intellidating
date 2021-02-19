package com.DTO;

public class commentsDTO {

	private int book_num;
	private int mem_num;
	private String content;
	private String comment_date;
	
	public commentsDTO(int book_num, int mem_num, String content, String comment_date) {
		super();
		this.book_num = book_num;
		this.mem_num = mem_num;
		this.content = content;
		this.comment_date = comment_date;
	}

	public int getBook_num() {
		return book_num;
	}

	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getComment_date() {
		return comment_date;
	}

	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
}
