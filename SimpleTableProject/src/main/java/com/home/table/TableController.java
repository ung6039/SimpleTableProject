package com.home.table;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TableController {

	@RequestMapping("main/Main.do")
	public String main(Model m) {
		
		m.addAttribute("main_jsp", "Home.jsp");
		return "main/Main";
	}
	@RequestMapping("main/Table.do")
	public String table(Model m) {
		m.addAttribute("main_jsp", "Table.jsp");
		
		return "main/Main";
	}
	@RequestMapping("main/Image.do")
	public String image(Model m) {
		m.addAttribute("main_jsp", "Image.jsp");
		
		return "main/Main";
	}
}
