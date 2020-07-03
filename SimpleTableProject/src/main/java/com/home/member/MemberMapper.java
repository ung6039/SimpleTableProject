package com.home.member;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;

public interface MemberMapper {

	
	@Insert("INSERT INTO member VALUES("
		+ "#{memberId},"
		+ "#{pwd},"
		+ "#{name},"
		+ "#{info},"
		+ "#{regdate},"
		+ "#{birthday} )")
	public void memberInsert(Map map);
}
