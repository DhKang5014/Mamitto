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
	String tel;


	String baby_name;
	String baby_birth;
	String baby_gender;
	String cam_ip = "";
	
	String html_path = "C:/Users/SMHRD/git/Mamitto/";
	String sql_join = "insert into MEMBERS values (?, ?, ? , ? , ?)";
	String sql_login = "select * from members where email = ? and pw = ? ";
	String sql_login_baby = "select * from members m, babys b where m.email = b.email and m.email = ?";
	String sql_join_baby = "insert into babys(baby_num, tel, baby_name, baby_birth, baby_gender, email) values (baby_num_sequence.nextval, ?, ?, ?, ? , ?)";
	String sql_insert_post = "insert into posts(po_num, po_title, po_content, openyn, email) values (po_num_sequence.nextval, ?, ?, ?, ?)";
	String sql_insert_sensor = "insert into sensors(ch_num, temperature, humidity, baby_num) values (ch_num_sequence.nextval, ?, ?, ?)";
	String sql_insert_history = "insert into history(act_num, email, action) values (act_num_sequence.nextval, ?, ?)";
	String sql_insert_rhythm = "insert into rhythm(rh_num, baby_num, rh_category, rh_title, rh_content) values (rh_num_sequence.nextval, ?, ?, ?, ?)";
	
	//String img_path = "C:/Users/SMHRD/git/MZProject/MZ/WebContent/upload";
	//String sql_join = "insert into USERS values ( ? , ? , ? , ? , ? )";


	public String getSql_login() {
		return sql_login;
	}

	public DTO(String email, String pw, String name, int age, String tel) {
		super();
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.tel = tel;
		System.out.println(email + " " + pw + " " + name + " " + age + " " + tel + " dto 생성 full");
	}

	public DTO(String email, String baby_name, String baby_birth, String baby_gender, String cam_ip) {
		super();
		this.email = email;
		this.baby_name = baby_name;
		this.baby_birth = baby_birth;
		this.baby_gender = baby_gender;
		this.cam_ip = cam_ip;
	}

	public DTO(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
		System.out.println(email + " " + pw + " " + name + " " + age + " dto 생성 small");
	}

	public DTO(String email) {
		super();
		this.email = email;
		System.out.println(email + " " + pw + " " + name + " " + age + " dto 생성 small");
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

	public String getSql_join() {
		return sql_join;
	}

	public void setSql_join(String sql_join) {
		this.sql_join = sql_join;
	}

	
	public String getSql_login_baby() {
		return sql_login_baby;
	}

	public void setSql_login_baby(String sql_login_baby) {
		this.sql_login_baby = sql_login_baby;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBaby_name() {
		return baby_name;
	}

	public void setBaby_name(String baby_name) {
		this.baby_name = baby_name;
	}

	public String getBaby_birth() {
		return baby_birth;
	}

	public void setBaby_birth(String baby_birth) {
		this.baby_birth = baby_birth;
	}

	public String getBaby_gender() {
		return baby_gender;
	}

	public void setBaby_gender(String baby_gender) {
		this.baby_gender = baby_gender;
	}

	public String getCam_ip() {
		return cam_ip;
	}

	public void setCam_ip(String cam_ip) {
		this.cam_ip = cam_ip;
	}
}
