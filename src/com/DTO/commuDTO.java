package com.DTO;

public class commuDTO {
	
	String title;
	String content;
	String po_pw;
	String sql_insert_commu_info = "insert into posts(po_num,po_title,po_content,po_pw,email) values (po_num_sequence.nextval, ?, ?, ?, ?) ";
	
	
	public commuDTO(String title,String content, String po_pw) {
		this.title = title;
		this.content = content;
		this.po_pw = po_pw;
		System.out.println("making constructor >> " + title + " / " + content + " / " + po_pw);
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
	

}
