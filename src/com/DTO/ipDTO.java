package com.DTO;

public class ipDTO {
	
	String email;
	String ip;

	public ipDTO(String email, String ip) {
		super();
		this.email = email;
		this.ip = ip;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}
