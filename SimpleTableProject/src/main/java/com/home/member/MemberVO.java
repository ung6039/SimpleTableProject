package com.home.member;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {

	private String memberId;
	private String pwd;
	private String name;
	private String info;
	private Date regdate;
	private Date birthday;
	
	// 로그인 상태 확인
	private String state;
	
	
}
