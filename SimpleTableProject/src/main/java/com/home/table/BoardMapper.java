package com.home.table;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface BoardMapper {
	
	@Select("SELECT * FROM BOARD order by no")
	public List<BoardVO> BoardList();
}
