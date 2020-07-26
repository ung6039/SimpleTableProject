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
			if(msg == null) {
				msg ="YES";
			}
			m.addAttribute("msg",msg);
			String id = req.getParameter("id");
			System.out.println(id);
			System.out.println("msg : "+msg);
		}catch(Exception ex) {}
		
		return "member/login";
	}
	
	@RequestMapping("login_ok.do")
	public String Login_ok(Model m,HttpServletRequest req, HttpSession session) {
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String msg = req.getParameter("msg");
		System.out.println("ID_OK : "+id);
		System.out.println("PWD_OK : "+pwd);
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);
		
		MemberVO mvo = dao.Login(map);
		System.out.println(mvo.getMemberId());
		if(id.equals(mvo.getMemberId()) & pwd.equals(mvo.getPwd())) {
			mvo.setState("YES");
			m.addAttribute("mvo",mvo);
			session.setAttribute("sid", id);
			System.out.println(session.getAttribute("sid"));
			return "redirect:/Main.do";
		}else {
			mvo.setState("NO");
			m.addAttribute("mvo",mvo);
			return "redirect:/Login.do";
		}
		
	}
	
	@RequestMapping("Logout.do")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/Main.do";
	}

}
