package com.DTO;

public class commuDTO {
	
	int po_num;
	String email;
	String title;
	String content;
	String po_pw;
	String time;
	String sql_insert_commu_info = "insert into posts(po_num,po_title,po_content,po_pw,email) values (po_num_sequence.nextval, ?, ?, ?, ?) ";
	String sql_select_commu_info = "select po_num, po_title, po_content, po_pw, email, to_char(po_time, 'MM/dd/YY HH24:mi') as day from posts where email=? or po_pw='공개' order by day desc";
	
	
	public commuDTO(String title,String content, String po_pw) { 
		this.title = title;
		this.content = content;
		this.po_pw = po_pw;
		System.out.println("making constructor >> " + title + " / " + content + " / " + po_pw);
	}
	
	
	public commuDTO(int po_num, String title, String content, String po_pw, String email, String time) {
		this.po_num = po_num;
		this.email = email;
		this.title = title;
		this.content = content;
		this.po_pw = po_pw;
		this.time = time;
	}


	public commuDTO(String email) {
		super();
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPo_pw() {
		return po_pw;
	}

	public void setPo_pw(String po_pw) {
		this.po_pw = po_pw;
	}

	public String getSql_commu_baby_info() {
		return sql_insert_commu_info;
	}
	
	public String getSql_select_commu_info() {
		return sql_select_commu_info;
	}
	public int getPo_num() {
		return po_num;
	}
	public void setPo_num(int po_num) {
		this.po_num = po_num;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	

}
