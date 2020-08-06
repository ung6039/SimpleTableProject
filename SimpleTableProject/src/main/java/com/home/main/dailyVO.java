package com.home.main;

import java.util.Calendar;

public class dailyVO {
	
	
	Calendar cal = Calendar.getInstance();
	final int[] DAY	 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31};
	final String[] WEEK = {"일요일","월요일","화요일","수요일","목요일","금요일","토요일"};
	final int SINCE_YEAR = cal.get(Calendar.YEAR);
	
	public Calendar getCal() {
		return cal;
	}
	public int[] getDAY() {
		return DAY;
	}
	public String[] getWEEK() {
		return WEEK;
	}
	public int getSINCE_YEAR() {
		return SINCE_YEAR;
	}
	
	

}
