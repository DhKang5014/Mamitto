package com.DTO;

public class join_babyDTO {
	
	String phon_num;
	String birth;
	String baby_name;
	int baby_age;
	String baby_gender;
	String sql_insert_baby_info = "insert into babys values ( ?, ?, ?, ?, ? ) ";
	
	
	public join_babyDTO(String phon_num, String birth, String baby_name, int baby_age, String baby_gender) {
		this.phon_num = phon_num;
		this.birth = birth;
		this.baby_name = baby_name;
		this.baby_age = baby_age;
		this.baby_gender = baby_gender;
		System.out.println("making constructor >> " + phon_num + " / " + birth + " / " + baby_name + " / " + baby_age + " / " + baby_gender);
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


	public int getBaby_age() {
		return baby_age;
	}


	public String getBaby_gender() {
		return baby_gender;
	}


	public String getSql_insert_baby_info() {
		return sql_insert_baby_info;
	}
	
	

}
