package com.DTO;

public class statisticDTO {
	
	String rh_time;
	int rh_count;
	
	String Sql_select_statistic = "select count(rh_category), to_char(rh_time, 'mm-dd') as day from rhythm where email = ? and rh_category = ? group by to_char(rh_time, 'mm-dd') order by day desc";

	public String getRh_time() {
		return rh_time;
	}

	public void setRh_time(String rh_time) {
		this.rh_time = rh_time;
	}

	public int getRh_count() {
		return rh_count;
	}

	public void setRh_count(int rh_count) {
		this.rh_count = rh_count;
	}

	public String getSql_select_statistic() {
		return Sql_select_statistic;
	}

	public statisticDTO(String rh_time, int rh_count) {
		super();
		this.rh_count = rh_count;
		this.rh_time = rh_time;
	}

	public statisticDTO(int rh_count, String rh_time) {
		this.rh_count = rh_count;
		this.rh_time = rh_time;
	}

}
