package com.candidjava;

import java.util.Date;

public class Category {

	private String Title;

	private String Body;

	private String Author;
	
	private Date Date;

	public Date getDate() {
		return Date;
	}

	public void setDate(Date Date) {
		this.Date = Date;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String Title) {
		this.Title = Title;
	}

	public String getBody() {
		return Body;
	}

	public void setBody(String Body) {
		this.Body = Body;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String Author) {
		this.Author = Author;
	}
	
	
}
