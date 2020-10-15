package com.DTO;

public class babyDTO {
	
	String phon_num;
	String birth;
	String baby_name;
	String baby_gender;
	String sql_insert_baby_info = "insert into babys(email,baby_name,baby_birth,baby_gender) values (?, ?, ?, ? ) ";
	
	
	public babyDTO(String baby_name, String birth, String baby_gender) {
		this.baby_name = baby_name;
		this.birth = birth;
		this.baby_gender = baby_gender;
		System.out.println("making constructor >> " + baby_name + " / " + birth + " / "  + baby_gender);
	}


	public String getPhon_num() {
		return phon_num;
	}


	public String getBirth() {
		return birth;
	}


	public String getBaby_name() {
		return baby_name;
	}


	public String getBaby_gender() {
		return baby_gender;
	}


	public String getSql_insert_baby_info() {
		return sql_insert_baby_info;
	}
	
	

}
