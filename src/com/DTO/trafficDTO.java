package com.DTO;

public class trafficDTO {
	int act_num;
	String action;
	String act_time;
	String email;

	public trafficDTO(int act_num, String action, String act_time, String email) {
		super();
		this.act_num = act_num;
		this.action = action;
		this.act_time = act_time;
		this.email = email;
	}

	public int getAct_num() {
		return act_num;
	}

	public void setAct_num(int act_num) {
		this.act_num = act_num;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getAct_time() {
		return act_time;
	}

	public void setAct_time(String act_time) {
		this.act_time = act_time;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
