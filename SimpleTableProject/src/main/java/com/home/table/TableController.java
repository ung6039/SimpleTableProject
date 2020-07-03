package com.home.table;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TableController {
	
	@Autowired
	private BoardDAO dao;

	@RequestMapping("main/Main.do")
	public String main(Model m) {
		
		m.addAttribute("main_jsp", "Home.jsp");
		return "main/Main";
	}
	@RequestMapping("main/Table.do")
	public String table(Model m,String page) {
		
		if(page==null) {
			page="1";
		}
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start =(rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<BoardVO> list = dao.BoardList(map);
		
		int total = dao.Totalpage();
		
		System.out.println("---------------");
		System.out.println("start :"+start);
		System.out.println("end :"+end);
		System.out.println(list.size());
		System.out.println(total);
		System.out.println("---------------");
		
		
		m.addAttribute("end",end);
		m.addAttribute("start",start);
		m.addAttribute("total",total);
		m.addAttribute("list",list);
		m.addAttribute("main_jsp", "Table.jsp");
		
		return "main/Main";
	}
	@RequestMapping("main/Image.do")
	public String image(Model m) {
		m.addAttribute("main_jsp", "Image.jsp");
		
		return "main/Main";
	}
	
	@RequestMapping("main/Insert.do")
	public String Insert(Model m) {
		
		m.addAttribute("main_jsp","Insert.jsp");
		return "main/Main";
	}
	@RequestMapping("main/Test.do")
	public String Test(Model m) {
		
		m.addAttribute("main_jsp","Test.jsp");
		return "main/Main";
	}
	@RequestMapping("main/Insert_ok.do")
	public String insert_ok(Model m, HttpServletRequest req) {
		String subject = req.getParameter("subject");
		String content = req.getParameter("content");
		String password = req.getParameter("password");
		
		Map map = new HashMap();
		map.put("subject", subject);
		map.put("content",content);
//		map.put("password", password);
		dao.Insert_ok(map);
		
		m.addAttribute("main_jsp","Table.jsp");
		return "main/Main";
	}
}
