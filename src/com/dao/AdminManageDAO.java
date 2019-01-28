package com.dao;

import java.io.File;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.CsvVO;
import com.vo.ManageCasesVO;
import com.vo.ManageComplainVO;
import com.vo.ManageDataSetVO;
import com.vo.ManagePostVO;
import com.vo.TestingVO;

@Repository
public class AdminManageDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	
	
	////////////////////////////////*STORE CSVS*/////////////////////////////
	public void insertCSV(CsvVO csvVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();	
		session.save(csvVO);
		transaction.commit();
		session.close();
	}

	////////////////////////* TESTING FOR OBJECT DETECTION *///////////////////////

	public void insertPic(TestingVO vo) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();	
		session.save(vo);
		transaction.commit();
		session.close();
}
	////////////////////////* MANAGE POST METHODS *///////////////////////


	public void insertComplain(ManageComplainVO complainVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(complainVO);
		transaction.commit();
		session.close();
	}

	public List searchComplain(ManageComplainVO complainVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageComplainVO");
		List ls=query.list();
		session.close();
		return ls;	
	}

	public List searchUpdateComplain(ManageComplainVO complainVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageComplainVO where id='"+complainVO.getId()+"' ");
		List ls=query.list();
		session.close();
		return ls;
	}

	public void updateComplain(ManageComplainVO complainVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(complainVO);
		tr.commit();
		session.close();	
	}

	public void deleteComplain(ManageComplainVO complainVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(complainVO);
		tr.commit();
		session.close();
	}

	
	
	////////////////////////* MANAGE POST METHODS *///////////////////////

	public void insertPost(ManagePostVO vo) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(vo);
		transaction.commit();
		session.close();
	
	}
	public List searchPost(ManagePostVO postVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManagePostVO");
		List ls=query.list();
		session.close();
		return ls;
	}
	public List searchUpdatePost(ManagePostVO postVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManagePostVO where id='"+postVO.getId()+"' ");
		List ls=query.list();
		session.close();
		return ls;
	}

	
	public void updatePost(ManagePostVO postVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(postVO);
		tr.commit();
		session.close();
	}

	public void deletePost(ManagePostVO postVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(postVO);
		tr.commit();
		session.close();
	}

	/////////////////////* MANAGE CASE METHODS *//////////////
	
	public void insertCases(ManageCasesVO casesvo) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(casesvo);
		transaction.commit();
		session.close();
	
	}

	public List searchCase(ManageCasesVO caseVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageCasesVO");
		List ls=query.list();
		session.close();
		return ls;
		}
	public List searchUpdateCase(ManageCasesVO caseVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageCasesVO where id='"+caseVO.getId()+"' ");
		List ls=query.list();
		session.close();
		return ls;
	}

	public void updateCase(ManageCasesVO caseVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(caseVO);
		tr.commit();
		session.close();
	
	}
	public void deleteCase(ManageCasesVO caseVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(caseVO);
		tr.commit();
		session.close();
	}
	//////////////////////////* MANAGE DATASET METHODS  */////////////////////
	public void insertFile(ManageDataSetVO datasetVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(datasetVO);
		transaction.commit();
		session.close();
		
	}
	public List searchDataSet(ManageDataSetVO datasetVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageDataSetVO");
		List ls=query.list();
		session.close();
		return ls;
	}
	public List searchUpdateDataSet(ManageDataSetVO datasetVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("from ManageDataSetVO where id='"+datasetVO.getId()+"' ");
		List ls=query.list();
		session.close();
		return ls;
	}
	public void updateDataSet(ManageDataSetVO datasetVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(datasetVO);
		tr.commit();
		session.close();
		
	}
	public void deleteDataSet(ManageDataSetVO datasetVO) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(datasetVO);
		tr.commit();
		session.close();		
	}





}
