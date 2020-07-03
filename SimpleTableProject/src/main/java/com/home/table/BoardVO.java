package com.home.table;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class BoardVO {
	
	/*
	 NO      NOT NULL NUMBER         
NAME             VARCHAR2(1000) 
SUBJECT          VARCHAR2(1000) 
CONTENT          VARCHAR2(1000) 
PWD              VARCHAR2(1000) 
REGDATE          DATE           
HIT              NUMBER         

	 */
	private int no;
	private String name;
	private String subject;
	private String content;
	private int hit;
	private Date regdate;
	
}
