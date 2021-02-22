package com.DTO;

public class printbookDTO {

	private int select_num;
	private int book_num;
	private String book_name;
	private String book_image;
	private String book_category3;
	
	public printbookDTO(int select_num, int book_num, String book_name, String book_image, String book_category3) {
		super();
		this.select_num = select_num;
		this.book_num = book_num;
		this.book_name = book_name;
		this.book_image = book_image;
		this.book_category3 = book_category3;
	}

	public int getSelect_num() {
		return select_num;
	}

	public int getBook_num() {
		return book_num;
	}

	public String getBook_name() {
		return book_name;
	}

	public String getBook_image() {
		return book_image;
	}

	public String getBook_category3() {
		return book_category3;
	}
	
}
