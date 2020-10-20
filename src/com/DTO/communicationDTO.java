package com.DTO;

public class communicationDTO {
	int po_num;
	String po_title;
	String po_content;
	String po_pw;
	String email;
	String time;

	public communicationDTO(int po_num, String po_title, String po_content, String po_pw, String time, String email) {
		super();
		this.po_num = po_num;
		this.po_title = po_title;
		this.po_content = po_content;
		this.po_pw = po_pw;
		this.email = email;
		this.time = time;
	}

	public int getPo_num() {
		return po_num;
	}

	public void setPo_num(int po_num) {
		this.po_num = po_num;
	}

	public String getPo_title() {
		return po_title;
	}

	public void setPo_title(String po_title) {
		this.po_title = po_title;
	}

	public String getPo_content() {
		return po_content;
	}

	public void setPo_content(String po_content) {
		this.po_content = po_content;
	}

	public String getPo_pw() {
		return po_pw;
	}

	public void setPo_pw(String po_pw) {
		this.po_pw = po_pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
