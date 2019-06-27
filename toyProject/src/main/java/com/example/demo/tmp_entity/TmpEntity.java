package com.example.demo.tmp_entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
@Entity
@Table(name="TMP_MEMBER")  // table name
public class TmpEntity {

	
	@Id
	@Column(name="USERID")
	private String userId ;
	
	@Column(name="PASSWORD")
	private String userPassword;
	
	@Column(name="USERNM")
	private String userNm;
	
	@Column(name = "UPDATEDT")
	@Temporal(TemporalType.TIMESTAMP)
    private Date updateDt;
	
	
	
	
	
}
