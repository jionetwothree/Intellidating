package com.DTO;

public class bookDTO {

	private int book_num;
	private String book_name;
	private String book_author;
	private String book_publisher;
	private String book_date;
	private String book_image;
	private String book_category1;
	private String book_category2;
	private String book_category3;
	
	public bookDTO(int book_num, String book_name, String book_author, String book_publisher, String book_date,
			String book_image) {
		super();
		this.book_num = book_num;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_publisher = book_publisher;
		this.book_date = book_date;
		this.book_image = book_image;
	}
	
	public bookDTO(String book_name) {

		super();
		this.book_name = book_name;
	
	}

	public int getBook_num() {
		return book_num;
	}

	public String getBook_name() {
		return book_name;
	}

	public String getBook_author() {
		return book_author;
	}

	public String getBook_publisher() {
		return book_publisher;
	}

	public String getBook_date() {
		return book_date;
	}

	public String getBook_image() {
		return book_image;
	}

	public String getBook_category1() {
		return book_category1;
	}

	public String getBook_category2() {
		return book_category2;
	}

	public String getBook_category3() {
		return book_category3;
	}
	
}
