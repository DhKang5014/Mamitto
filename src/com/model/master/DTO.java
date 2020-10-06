package com.model.master;

public class DTO {

	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "hr";
	String db_pw = "hr";
	String driver_url = "oracle.jdbc.driver.OracleDriver";

	String email;
	String pw;
	String name;
	int age;
	int gender;
	String html_path = "C:/Users/SMHRD/git/Mamitto/";
	String sql_join = "insert into MEMBERS values (?, ?, ? , ? , ?)";
	String sql_login = "select * from members where email = ? and pw = ? ";
	
	//String img_path = "C:/Users/SMHRD/git/MZProject/MZ/WebContent/upload";
	//String sql_join = "insert into USERS values ( ? , ? , ? , ? , ? )";


	public String getSql_login() {
		return sql_login;
	}

	public DTO(String email, String pw, String name, int age, int gender) {
		super();
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.gender = gender;
		System.out.println(email + " " + pw + " " + name + " " + age + " " + gender + " dto 생성 full");
	}

	public DTO(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
		System.out.println(email + " " + pw + " " + name + " " + age + " " + gender + " dto 생성 small");
	}

	public DTO(String email) {
		super();
		this.email = email;
		System.out.println(email + " " + pw + " " + name + " " + age + " " + gender + " dto 생성 small");
	}


	public String getDb_url() {
		return db_url;
	}

	public void setDb_url(String db_url) {
		this.db_url = db_url;
	}

	public String getDb_id() {
		return db_id;
	}

	public void setDb_id(String db_id) {
		this.db_id = db_id;
	}

	public String getDb_pw() {
		return db_pw;
	}

	public void setDb_pw(String db_pw) {
		this.db_pw = db_pw;
	}

	public String getDriver_url() {
		return driver_url;
	}

	public void setDriver_url(String driver_url) {
		this.driver_url = driver_url;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getSql_join() {
		return sql_join;
	}

	public void setSql_join(String sql_join) {
		this.sql_join = sql_join;
	}


}
