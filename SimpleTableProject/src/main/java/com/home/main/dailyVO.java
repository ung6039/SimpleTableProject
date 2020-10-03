package com.home.main;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;

public class dailyVO {
	
	Calendar cal = Calendar.getInstance();
	int[] DAY	 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31};
	int[] DAYS = {31,28,31,30,31,30,31,31,30,31,30,31};
	final int[] MONTH = {1,2,3,4,5,6,7,8,9,10,11,12};
	final String[] WEEK = {"일요일","월요일","화요일","수요일","목요일","금요일","토요일"};
	final int SINCE_YEAR = cal.get(Calendar.YEAR);
	final int SINCE_DATE = cal.get(Calendar.DATE);
	final int SINCE_MONTH = cal.get(Calendar.MONTH)+1;
	int frist_day = 0;
	
	public void setFrist_day(int frist_day) {
		this.frist_day = frist_day;
	}
	public int getFrist_day() {
		return frist_day;
	}
	
	public int[] getDAYS() {
		return DAYS;
	}
	public void setDAYS(int[] dAYS) {
		DAYS = dAYS;
	}
	public int getSINCE_DATE() {
		return SINCE_DATE;
	}
	public int getSINCE_MONTH() {
		return SINCE_MONTH;
	}
	public Calendar getCal() {
		return cal;
	}
	public int[] getDAY() {
		return DAY;
	}
	
	public void setDAY(int[] dAY) {
		DAY = dAY;
	}
	public String[] getWEEK() {
		return WEEK;
	}
	public int getSINCE_YEAR() {
		return SINCE_YEAR;
	}
	public int[] getMONTH() {
		return MONTH;
	}
}
