package com.icss.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import com.icss.entity.Depart;

public class DepartDao {
	private SessionFactory sessionFactory;
	private Session session;
	

	public List<Depart> findDepartAll(){
		session=sessionFactory.openSession();
		List<Depart> list=session.createQuery("from Depart").list();
		return list;
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
