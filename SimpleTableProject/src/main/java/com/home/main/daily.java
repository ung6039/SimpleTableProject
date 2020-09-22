package com.home.main;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Calendar;

import org.springframework.stereotype.Component;

@Component
public class daily {
	
	public List<dailyVO> dal(String date) {
	
		int year = Integer.parseInt(date.split("/")[0].trim());
		int month = Integer.parseInt(date.split("/")[1].trim());
		// 총 날
		int days = ((year-1)*365) + ((year-1)/4) - ((year-1)/100) + ((year-1)/400);
		
		System.out.println("총 날 :"+days);
		
		List<dailyVO> list = new ArrayList<>();
		dailyVO vo = new dailyVO();
		int[] Mdays = vo.getDAYS();
		
		
		
		switch(month) {
			case 2:
				if((year % 4 == 0 && year % 100 != 0 ) ||  year % 400 == 0) {
					Mdays[1] = 29;
					vo.setDAYS(Mdays);
					break;
				}
			default:
				break;
		}
		System.out.println(" 2월 : "+Mdays[1]);
		System.out.println(month);
		for(int i = 0; i<month-1; i++) {
			days += Mdays[i];
		}
		int frist_day = days % 7;
		vo.setFrist_day(frist_day);
//		int ThrityOneMonth[] = {1,3,5,7,8,10,12};
//		for(int i =0; i<vo.MONTH.length; i++) {
//			for(int j = 0; j<ThrityOneMonth.length; j++) {
//				if(vo.getSINCE_MONTH() != ThrityOneMonth[j]) {
//					int[] temp = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
//					vo.setDAY(temp);
//				}
//			}
//		}
		
		list.add(vo);
		
		return list;
	}
	
	public static void main(String[] args) {
		dailyVO vo = new dailyVO();
		System.out.println("!!");
		try {
			System.out.println(vo.frist_day);
		System.out.println(vo.localdate.now());
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
			ex.printStackTrace();
		}
		daily dal = new daily();
		List<dailyVO> list =  dal.dal("2020/8");
		
		System.out.println(list.get(0).SINCE_YEAR+" / " +list.get(0).SINCE_MONTH);
		System.out.print("일 월 화 수 목 금 토 \n");
		for(int j =0; j<=list.get(0).getFrist_day()+1 ; j++) {
			System.out.print("땡 ");
		}
		
		for(int i = 1; i<list.get(0).getDAYS()[list.get(0).getSINCE_MONTH()-1];  i++) {
			System.out.print(i+" ");
			
			if(i % 7== 0) {
				System.out.println();
			}
			
		}
		
		
		
	}
	
}
