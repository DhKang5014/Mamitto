package com.DTO;

public class mealDTO {
	int rh_num;
	String rh_category;
	String rh_meal;
	String rh_defecate;
	String rh_sleep;
	String rh_time;
	String email;
	
	
	
	
	public mealDTO(int rh_num, String rh_category, String rh_meal, String rh_defecate, String rh_sleep, String rh_time,
			String email) {
		super();
		this.rh_num = rh_num;
		this.rh_category = rh_category;
		this.rh_meal = rh_meal;
		this.rh_defecate = rh_defecate;
		this.rh_sleep = rh_sleep;
		this.rh_time = rh_time;
		this.email = email;
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
	public String getRh_meal() {
		return rh_meal;
	}
	public void setRh_meal(String rh_meal) {
		this.rh_meal = rh_meal;
	}
	public String getRh_defecate() {
		return rh_defecate;
	}
	public void setRh_defecate(String rh_defecate) {
		this.rh_defecate = rh_defecate;
	}
	public String getRh_sleep() {
		return rh_sleep;
	}
	public void setRh_sleep(String rh_sleep) {
		this.rh_sleep = rh_sleep;
	}
	public String getRh_time() {
		return rh_time;
	}
	public void setRh_time(String rh_time) {
		this.rh_time = rh_time;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
	
	
	
	
}
