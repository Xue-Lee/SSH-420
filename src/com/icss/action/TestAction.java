package com.icss.action;

import java.util.List;


import com.icss.dao.CommonsDao;
import com.icss.dao.DepartDao;
import com.icss.entity.Depart;

public class TestAction {
	private List<Depart> deptList;
	private CommonsDao dao;
	private DepartDao departDao;
	public DepartDao getDepartDao() {
		return departDao;
	}
	public void setDepartDao(DepartDao departDao) {
		this.departDao = departDao;
	}
	public CommonsDao getDao() {
		return dao;
	}
	public void setDao(CommonsDao dao) {
		this.dao = dao;
	}
	public List<Depart> getDeptList() {
		return deptList;
	}
	public void setDeptList(List<Depart> deptList) {
		this.deptList = deptList;
	}
	public String displayDept(){
		System.out.println("testAction-------");
		deptList = dao.findDept();
		return "success";
	}
	
	public String displayDeptAll() {
		System.out.println("displayDeptAll-------");
		deptList = departDao.findDepartAll();
		return "success";
	}
	
}
