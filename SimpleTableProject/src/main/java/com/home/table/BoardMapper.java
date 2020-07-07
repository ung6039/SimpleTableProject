package com.home.table;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Insert;

public interface BoardMapper {
	
	
	@Select("SELECT no,name,subject,content,hit,regdate,num "
			+ "FROM (SELECT no,name,subject,content,hit,regdate,rownum as num "
			+ "FROM (SELECT no,name,subject,content,hit,regdate "
			+ "FROM board ORDER BY no)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<BoardVO> BoardList(Map map);
	
	@Select("SELECT COUNT(*) FROM BOARD")
	public int Totalpage();
	
	@Insert("Insert into board values( "
		+"(select NVL(max(no)+1,1) from board),"
		+"#{subject},#{content},#{name},#{password},0,sysdate)")
	public void Insert(Map map);
}
