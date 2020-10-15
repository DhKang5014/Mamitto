package com.DTO;

public class statisticDTO {
	
	String date;
	int num;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public statisticDTO(String date, int num) {
		super();
		this.date = date;
		this.num = num;
	}

}
