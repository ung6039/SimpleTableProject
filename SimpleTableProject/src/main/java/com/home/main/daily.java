package com.home.main;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Calendar;

import org.springframework.stereotype.Component;

@Component
public class daily {
	
	public List<dailyVO> dal() {
	
		List<dailyVO> list = new ArrayList<>();
		dailyVO vo = new dailyVO();
		list.add(vo);
		
		
		
		return list;
	}
	
}
