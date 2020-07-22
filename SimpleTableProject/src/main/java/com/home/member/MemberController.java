package com.home.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("Member.do")
	public String member(Model m) {
		
		return "member/member";
	}
	@RequestMapping("member/Member_ok.do")
	public void member_ok(Map map) {
		dao.MemberInsert(map);
	}
	
	@RequestMapping("idCheck.do")
	public String IdCheck(Model m) {
		
		return "table/Table.do";
	}
	
	@RequestMapping("Login.do")
	public String Login(Model m, HttpServletRequest req) {
		try {
		String msg = req.getParameter("msg");
		String id = req.getParameter("id");
		System.out.println(id);
		System.out.println(msg);
		}catch(Exception ex) {}
		
		return "member/login";
	}
	
	@RequestMapping("login_ok.do")
	public String Login_ok(Model m,HttpServletRequest req) {
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
//		m.addAttribute("id",id);
//		m.addAttribute("pwd",pwd);
		Map map = new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);
		List<MemberVO> CheckID = dao.Login(map);
		
		
		if(CheckID.size()>0) {
			return "redirect:/Main.do?id="+id;
		}else {
			return "redirect:/Login.do?msg=NO";
		}
		
	}
	
	@RequestMapping("CheckId.do")
	public String IdCheck(Model m, HttpSession session) {
		String id = (String)m.asMap().get("id");
		System.out.println("!!! :id : "+id);
		session.setAttribute("id",id);
		
		return "";
	}

}
