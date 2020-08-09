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
		
		int ThrityOneMonth[] = {1,3,5,7,8,10,12};
		for(int i =0; i<vo.MONTH.length; i++) {
			for(int j = 0; j<ThrityOneMonth.length; j++) {
				if(vo.getSINCE_MONTH() != ThrityOneMonth[j]) {
					int[] temp = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
					vo.setDAY(temp);
				}
			}
		}
		list.add(vo);
		
		return list;
	}
	
	public static void main(String[] args) {
		
		String s = " ";
		s = null;
		
		boolean check = true;
		if(s.equals(null)) {
			check = false;
		};
		
		System.out.println(check);
	}
}
