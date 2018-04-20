package com.icss.entity;

public class Teacher {
	private String tid;
	private String tname;
	private Depart dept;
	
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Depart getDept() {
		return dept;
	}
	public void setDept(Depart dept) {
		this.dept = dept;
	}
}
