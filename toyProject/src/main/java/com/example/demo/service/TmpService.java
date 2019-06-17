package com.example.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.TmpDao;
import com.example.demo.tmp_entity.TmpEntity;

@Service
public class TmpService {

	@Autowired
	private TmpDao tmpDao;
	
	
	
	/**
	 * ȸ�� ��ü ��� return
	 * @param 
	 * @return
	 */
	@Transactional
	public List<TmpEntity> getAllTmpMember(){
		return tmpDao.findAll();
	}
	
		
	
	
	
	
}
