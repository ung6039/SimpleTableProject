package com.home.main;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.home.report.ReportDAO;
import com.home.report.ReportMapper;

import lombok.Getter;

@Controller
public class MainController {
	@Autowired
	ReportMapper reportmapper;
	@Autowired
	ReportDAO reportdao;
	
	@RequestMapping("/table/")
	public String index() {
		System.out.println("이거 불러와 지나요??");
		return "index.html";
	}
	@RequestMapping("daliy.do")
	public String Calendar() {
		return "redirect:Main.do";
	}
	@RequestMapping("report.do")
	public String test(HttpServletRequest req,HttpSession session) {
		System.out.println(req.getParameter("worklist"));
		String s = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		System.out.println(s);
		System.out.println(session.getAttribute("sid"));
		Map<String, Object> map = new HashedMap();
		map.put("worklist", req.getParameter("worklist"));
		//Date TYpe 변형 문제 해결해야함
		map.put("seq_date", s);
		map.put("memberid", session.getAttribute("sid"));
		reportdao.reportinsert(map);
		return "redirect:Main.do";
	}
}
