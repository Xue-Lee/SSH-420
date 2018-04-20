package com.icss.entity;

public class Book {
	private String title;
	private String author;
	private Float price;
	
	public Book(String title, String author, Float price) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
	}
	public Book() {
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
}
