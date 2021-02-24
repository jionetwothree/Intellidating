package com.DTO;

import java.util.ArrayList;

public class bookDTO<E> {

	private int book_num;
	private String book_name;
	private String book_author;
	private String book_publisher;
	private String book_date;
	private String book_image;
	private String book_category1;
	private String book_category2;
	private String book_category3;
	private ArrayList<E> arr;
	
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
	
	public bookDTO(String book_category1, String book_category2, String book_author) {
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
	
	
	public bookDTO(ArrayList<E> arr) {

		super();
		this.arr = arr;
	
	}


	public bookDTO() {
		
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
	
	
	//set¸Þ¼­µå
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	
	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}
	
	public void setBook_category1(String book_category1) {
		this.book_category1 = book_category1;
	}
	
	public void setBook_category2(String book_category2) {
		this.book_category2 = book_category2;
	}
	
	public void setBook_category3(String book_category3) {
		this.book_category3 = book_category3;
	}
	
	
	
}
