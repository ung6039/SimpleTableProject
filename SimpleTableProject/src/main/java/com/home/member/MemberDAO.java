package com.home.member;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	private MemberMapper mapper;
	
	
	public void MemberInsert(Map map) {
		mapper.memberInsert(map);
	}
}
