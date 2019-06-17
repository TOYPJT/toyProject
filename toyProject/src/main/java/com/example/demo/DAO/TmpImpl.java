package com.example.demo.DAO;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.tmp_entity.TmpEntity;

@Repository
public class TmpImpl  {
	

	private SessionFactory sessionFactory ;
	
	/* @Autowired
	    public void setSessionFactory(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }*/
	 

	/* @Autowired
	    public TmpImpl(SessionFactory sessionFactory) {
		 if(sessionFactory.unwrap(SessionFactory.class) == null){
		      throw new NullPointerException("factory is not a hibernate factory");
		    }
		    this.sessionFactory = sessionFactory.unwrap(SessionFactory.class);
	    }*/
	 

		
		public void save(TmpEntity tmpEntity) {
			
			Session session = sessionFactory.getCurrentSession();
			
			session.save(tmpEntity); 
		}
		

}
