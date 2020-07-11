package com.home.table;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class TableController {
	
	@Autowired
	private BoardDAO dao;

	@RequestMapping("Main.do")
	public String main(Model m) {
		
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
		String name = "ung";
		System.out.println("출력 내용 확인 : ");
		System.out.println(subject);
		System.out.println(password);
		System.out.println(content);
		Map map = new HashMap();
		map.put("subject", subject);
		map.put("content",content);
		map.put("password", password);
		map.put("name", name);
		
		dao.Insert_ok(map);
		
		return "redirect:/main/Table.do";
	}
}
