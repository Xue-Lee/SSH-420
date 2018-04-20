package com.icss.entity;

import java.util.Set;

public class Depart {
	private String did;
	private String dname;
	private Set<Teacher> teacherSet;
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Set<Teacher> getTeacherSet() {
		return teacherSet;
	}
	public void setTeacherSet(Set<Teacher> teacherSet) {
		this.teacherSet = teacherSet;
	}
}
