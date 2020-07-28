package com.home.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {

	
	@Insert("INSERT INTO member(memberid,pwd,name,info,regdate,birthday,addr,img) VALUES("
		+ "#{id},"
		+ "#{pwd},"
		+ "#{name},"
		+ "#{info},"
		+ "sysdate,"
		+ "sysdate,"
		+ "#{addr},"
		+ "#{img} )")
	public void memberInsert(Map map);
	
	@Select("Select * from member "
		   +"WHERE memberid=#{id} AND pwd=#{pwd}")
	public MemberVO Login(Map map);
	
	@Select("Select * from member "
			+ "WHERE memberid=#{id}")
	public MemberVO Login_info(Map map);
}
