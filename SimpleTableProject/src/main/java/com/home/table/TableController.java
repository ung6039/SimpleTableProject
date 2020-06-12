package com.home.table;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TableController {

	@RequestMapping("main/Main.do")
	public String main() {
		
		return "main/Main";
	}
	
}
