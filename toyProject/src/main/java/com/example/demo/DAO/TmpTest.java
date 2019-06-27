package com.example.demo.DAO;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.springframework.stereotype.Component;

import com.example.demo.tmp_entity.TmpEntity;

@Component
public class TmpTest {
	
	@PersistenceContext
	EntityManager entityManager;
	
	
	public void setTmpEntity(TmpEntity tmpEntity) {
		
		Session session = entityManager.unwrap(Session.class);
		session.save(tmpEntity);
		
		
	}
	
	
	
	

}
