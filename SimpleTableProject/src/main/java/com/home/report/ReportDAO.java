package com.home.report;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReportDAO {
	@Autowired
	ReportMapper reportmapper;
	
	public void reportinsert(Map map) {
		reportmapper.reportInsert(map);
	}

}
