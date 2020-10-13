package com.DTO;

public class mealDTO {
	int rh_num;
	String rh_category;
	String rh_time;
	String emai;
	
	
	
	public mealDTO(int rh_num, String rh_category, String rh_time, String emai) {
		this.rh_num = rh_num;
		this.rh_category = rh_category;
		this.rh_time = rh_time;
		this.emai = emai;
	}
	public int getRh_num() {
		return rh_num;
	}
	public void setRh_num(int rh_num) {
		this.rh_num = rh_num;
	}
	public String getRh_category() {
		return rh_category;
	}
	public void setRh_category(String rh_category) {
		this.rh_category = rh_category;
	}
	public String getRh_time() {
		return rh_time;
	}
	public void setRh_time(String rh_time) {
		this.rh_time = rh_time;
	}
	public String getEmai() {
		return emai;
	}
	public void setEmai(String emai) {
		this.emai = emai;
	}
	
	
	
	
	
}
