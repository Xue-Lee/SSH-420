package com.icss.action;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.icss.dao.CommonsDao;
import com.icss.entity.American;
import com.icss.entity.Book;
import com.icss.entity.Depart;

public class MyAction {
	
	private List<Depart> deptList;

	public String execute(){
		CommonsDao dao=new CommonsDao();
		deptList = dao.findDept();
		return "success";
	}
	public String displayDept(){
		System.out.println("spring-struts-hibernate------------------");
		ApplicationContext act=new ClassPathXmlApplicationContext("beans.xml");
		CommonsDao dao=act.getBean(CommonsDao.class);
		deptList = dao.findDept();
		return "success";
	}

	public String book() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		Book book1 = (Book) act.getBean("book1");
		System.out.println(book1.getTitle()+"---"+book1.getAuthor()+"--"+book1.getPrice());
		Book book2 = (Book) act.getBean("book2");
		System.out.println(book2.getTitle()+"---"+book2.getAuthor()+"--"+book2.getPrice());
		return "success";
	}
	
	public String test1() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		 American amc = (American) act.getBean("amc");
		 amc.userAxe();
		return "success";
	}
	public List<Depart> getDeptList() {
		return deptList;
	}
	public void setDeptList(List<Depart> deptList) {
		this.deptList = deptList;

	}
}
