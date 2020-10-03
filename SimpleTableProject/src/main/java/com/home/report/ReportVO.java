package com.home.report;

import java.time.LocalDate;

import lombok.Getter;

public class ReportVO {
	private long seq;
	private String worklist;
	private LocalDate seq_date;
	private String memberid;
	public long getSeq() {
		return seq;
	}
	public void setSeq(long seq) {
		this.seq = seq;
	}
	public String getWorklist() {
		return worklist;
	}
	public void setWorklist(String worklist) {
		this.worklist = worklist;
	}
	public LocalDate getSeq_date() {
		return seq_date;
	}
	public void setSeq_date(LocalDate seq_date) {
		this.seq_date = seq_date;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
}
