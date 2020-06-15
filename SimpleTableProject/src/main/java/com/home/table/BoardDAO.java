package com.home.table;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	private BoardMapper mapper;
	
	public List<BoardVO> BoardList() {
		
		return mapper.BoardList();
	}
}
