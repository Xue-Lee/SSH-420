package com.icss.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.icss.entity.Admin;
import com.icss.entity.Depart;
import com.icss.entity.Stud;
import com.icss.entity.Teacher;
import com.icss.util.HibernateUtil;

public class CommonsDao {
	private Session session;
	private Transaction tran;

	public int addStud(Stud stu){
		session=HibernateUtil.currentSession();
		tran=session.beginTransaction();
		session.save(stu);
		tran.commit();
		return 1;
	}
	public int addTeacher(Teacher tea){
		session=HibernateUtil.currentSession();
		tran=session.beginTransaction();
		session.save(tea);
		tran.commit();
		return 1;
	}
	public List<Stud> findStud(){
		session=HibernateUtil.currentSession();
		List<Stud> slist = session.createQuery("from Stud").list();
				
		return slist;
	}
	public List<Depart> findDept(){
		System.out.println("findDept----------");
		session=HibernateUtil.currentSession();
		List<Depart> slist = session.createQuery("from Depart").list();
				
		return slist;
	}
	public Admin login(String userid,String pwd){
		session=HibernateUtil.currentSession();
		List<Admin> slist = session.createQuery("from Admin d where d.userid=:uid and d.pwd=:pwd")
				.setString("uid", userid)
				.setString("pwd", pwd).list();
		if(slist.size()>0)
			return slist.get(0);
		else
			return null;
	}
}
