package com.home.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("daliy.do")
	public String Calendar() {
		System.out.println("!!!!!");
		
		return "redirect:Main.do";
	}

}
