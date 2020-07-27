package com.home.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {

	
	@Insert("INSERT INTO member VALUES("
		+ "#{id},"
		+ "#{pwd},"
		+ "#{name},"
		+ "#{info},"
		+ "#{regdate},"
		+ "#{birthday} )")
	public void memberInsert(Map map);
	
	@Select("Select memberid,pwd from member "
		   +"WHERE memberid=#{id} AND pwd=#{pwd}")
	public MemberVO Login(Map map);
}
