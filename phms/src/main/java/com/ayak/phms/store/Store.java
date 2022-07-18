package com.ayak.phms.store;

public class Store {
	private long Sid;
	private String S_Name;
	private String S_Addr;
	private String S_Tel;
	private String Time_Mon;
	private String Time_Tue;
	private String Time_Wed;
	private String Time_Thu;
	private String Time_Fri;
	private String Time_Sat;
	private String Time_Sun;
	private String Time_holi;
	private String Lon;
	private String Lat;
	
	public Store() {
		super();
	}
	
	public Store(String s_Name, String s_Addr, String s_Tel, String time_Mon, String time_Tue,
			String time_Wed, String time_Thu, String time_Fri, String time_Sat, String time_Sun, String time_holi,
			String lon, String lat) {
		super();
		S_Name = s_Name;
		S_Addr = s_Addr;
		S_Tel = s_Tel;
		Time_Mon = time_Mon;
		Time_Tue = time_Tue;
		Time_Wed = time_Wed;
		Time_Thu = time_Thu;
		Time_Fri = time_Fri;
		Time_Sat = time_Sat;
		Time_Sun = time_Sun;
		Time_holi = time_holi;
		Lon = lon;
		Lat = lat;
	}
	
	
	public long getSid() {
		return Sid;
	}

	public void setSid(long sid) {
		Sid = sid;
	}

	public String getS_Name() {
		return S_Name;
	}
	public void setS_Name(String s_Name) {
		S_Name = s_Name;
	}
	public String getS_Addr() {
		return S_Addr;
	}
	public void setS_Addr(String s_Addr) {
		S_Addr = s_Addr;
	}
	public String getS_Tel() {
		return S_Tel;
	}
	public void setS_Tel(String s_Tel) {
		S_Tel = s_Tel;
	}
	public String getTime_Mon() {
		return Time_Mon;
	}
	public void setTime_Mon(String time_Mon) {
		Time_Mon = time_Mon;
	}
	public String getTime_Tue() {
		return Time_Tue;
	}
	public void setTime_Tue(String time_Tue) {
		Time_Tue = time_Tue;
	}
	public String getTime_Wed() {
		return Time_Wed;
	}
	public void setTime_Wed(String time_Wed) {
		Time_Wed = time_Wed;
	}
	public String getTime_Thu() {
		return Time_Thu;
	}
	public void setTime_Thu(String time_Thu) {
		Time_Thu = time_Thu;
	}
	public String getTime_Fri() {
		return Time_Fri;
	}
	public void setTime_Fri(String time_Fri) {
		Time_Fri = time_Fri;
	}
	public String getTime_Sat() {
		return Time_Sat;
	}
	public void setTime_Sat(String time_Sat) {
		Time_Sat = time_Sat;
	}
	public String getTime_Sun() {
		return Time_Sun;
	}
	public void setTime_Sun(String time_Sun) {
		Time_Sun = time_Sun;
	}
	public String getTime_holi() {
		return Time_holi;
	}
	public void setTime_holi(String time_holi) {
		Time_holi = time_holi;
	}
	public String getLon() {
		return Lon;
	}
	public void setLon(String lon) {
		Lon = lon;
	}
	public String getLat() {
		return Lat;
	}
	public void setLat(String lat) {
		Lat = lat;
	}
	
	
}
