package com.DTO;

public class bodycheckDTO {
	
	String email;
	String height;
	String weight;
	String day;
	
	String sql_insert_bodycheck = "insert into bodycheck(bd_num, bd_height, bd_weight, email) values (bd_num_sequence.nextval, ?, ?, ?)";
	String sql_select_bodycheck = "select max(bd_height),max(bd_weight), to_char(bd_time, 'mm-dd') as day from bodycheck where email=? group by to_char(bd_time, 'mm-dd') order by day desc";

	public bodycheckDTO(String email, String height, String weight, String day) {
		this.email=email;
		this.day = day;
		this.height = height;
		this.weight = weight;
	}
	
	public bodycheckDTO(String email, String height, String weight) {
		this.email = email;
		this.height = height;
		this.weight = weight;
	}


	public bodycheckDTO(String height, String weight) {
		this.height = height;
		this.weight = weight;
	}
	
	public bodycheckDTO(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getSql_insert_bodycheck() {
		return sql_insert_bodycheck;
	}

	public String getSql_select_bodycheck() {
		return sql_select_bodycheck;
	}
	
	
}
