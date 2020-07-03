package com.home.table;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	private BoardMapper mapper;
	
	public List<BoardVO> BoardList(Map map) {	
		return mapper.BoardList(map);
	}
	public int Totalpage() {
		return mapper.Totalpage();
	}
	public void Insert_ok(Map map) {
		mapper.Insert(map);
	}
}
