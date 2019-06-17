package com.example.demo.tmp_entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class TmpEntity {

	
	@Id
	@Column(name="USERID")
	private String user_id ;
	
	@Column(name="PASSWORD")
	private String user_password;
	
	
	
	
	
}
