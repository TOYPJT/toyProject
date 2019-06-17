package com.example.demo.DAO;

import java.util.List;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.example.demo.tmp_entity.TmpEntity;
import com.jayway.jsonpath.Criteria;

@Repository
public class TmpDao   {
	
	@PersistenceContext
    EntityManager em;

	
	/**
	 * 회원 전체 return
	 * @param 
	 * @return
	 */
	public List<TmpEntity> getAllTmpMember(){

		return em.createQuery("select te from TmpEntity te",TmpEntity.class).getResultList();
	}
	
	
}
