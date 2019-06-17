package com.example.demo.DAO;

import java.util.List;
import java.util.Optional;

import javax.management.Query;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.tmp_entity.TmpEntity;
import com.jayway.jsonpath.Criteria;

@Repository
public interface TmpDao  extends CrudRepository<TmpEntity,String > {

	
	/**
	 * 회원 전체 return
	 * @param 
	 * @return
	 */
	List<TmpEntity> findAll();
	
	
	@Override
	default <S extends TmpEntity> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
