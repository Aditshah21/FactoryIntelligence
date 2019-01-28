package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.AdminLoginVO;
import com.vo.AdminRegisterVO;

@Repository
public class MainDAO {

	@Autowired 
	SessionFactory sessionFactory;
	
	public void register(AdminRegisterVO registerVO) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.save(registerVO);
		tr.commit();
		session.close();
	}

	public void register(AdminLoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.save(loginVO);
		tr.commit();
		session.close();
	}
}
