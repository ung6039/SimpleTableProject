package com.home.report;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;

public interface ReportMapper {

	@Insert("INSERT INTO report(seq,worklist,seq_date,memberid) VALUES("
			+"(SELECT NVL(max(seq)+1,1) from report),#{worklist},#{seq_date},#{memberid})")
	public void reportInsert(Map map);
}
