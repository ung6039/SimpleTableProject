package com.home.table;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
}
