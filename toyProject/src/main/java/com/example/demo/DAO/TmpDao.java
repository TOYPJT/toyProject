package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.tmp_entity.TmpEntity;

@Repository
public interface TmpDao  extends JpaRepository<TmpEntity,String > {


	/**
	 * 회원 목록 return
	 * @param 
	 * @return
	 */
	List<TmpEntity> findAllByOrderByUserIdDesc();
	
	<S extends TmpEntity> S save(S entity) ;
	
	void deleteById(String userId) ; //기존 삭제

	@Modifying 
	@Query(value = "delete from TmpEntity t where t.userId = :Id")
	void deleteAllByUserId(@Param("Id") String userId) ;
		
	
}
