package com.home.table;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

public interface BoardMapper {
	
	
	
	@Select("SELECT no,title FROM BOARD order by no")
	public List<BoardVO> BoardList();
}
