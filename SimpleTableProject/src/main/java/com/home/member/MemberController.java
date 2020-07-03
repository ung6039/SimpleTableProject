package com.home.member;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("member/Member.do")
	public String member(Model m) {
		m.addAttribute("main_jsp","../member/member.jsp");
		
		return "main/Main";
	}
	@RequestMapping("member/Member_ok.do")
	public void member_ok(Map map) {
		dao.MemberInsert(map);
	}

}
