package com.example.demo.tmp_entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="TMP_MEMBER")  // table name
public class TmpEntity {

	
	@Id
	@Column(name="USERID")
	private String user_id ;
	
	@Column(name="PASSWORD")
	private String user_password;
	
	
	
	
	
}
