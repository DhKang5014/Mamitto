package com.DTO;

public class cameraDTO {
	String baby_name;
	String ip;
	String email;
	String sql_insert_camera_info = "update babys set cam_ip = ? where email = ? ";
	
	public cameraDTO(String ip, String email) {
		super();
		this.ip = ip;
		this.email = email;
	}
	
	public String getSql_insert_camera_info() {
		return sql_insert_camera_info;
	}
	
	public String getBaby_name() {
		return baby_name;
	}
	
	public String getIp() {
		return ip;
	}
	
	public String getEmail() {
		return email;
	}
	
	
}
