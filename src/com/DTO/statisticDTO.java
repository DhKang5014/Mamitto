package com.DTO;

public class statisticDTO {
	
	String rh_time;
	int rh_count;

	public String getRh_time() {
		return rh_time;
	}

	public void setRh_time(String rh_time) {
		this.rh_time = rh_time;
	}

	public int getRh_count() {
		return rh_count;
	}

	public void setRh_count(int rh_count) {
		this.rh_count = rh_count;
	}

	public statisticDTO(String rh_time, int rh_count) {
		super();
		this.rh_count = rh_count;
		this.rh_time = rh_time;
	}

	public statisticDTO(int rh_count, String rh_time) {
		this.rh_count = rh_count;
		this.rh_time = rh_time;
	}

}
