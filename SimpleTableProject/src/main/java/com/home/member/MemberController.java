package com.home.member;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
	@RequestMapping("join_ok.do")
	public String join_ok(Model m,HttpServletRequest req) {
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String name =req.getParameter("name");
		String img = "img/img.png";
		String addr = req.getParameter("addr");
		
		
		Date date = new Date();
		System.out.println(id+" : "+pwd+" : "+name);
		Map map = new HashMap();
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("name", name);
		map.put("info", "1234");
		map.put("regdate", date.getDay());
		map.put("birthday", "1993-11-22");
		map.put("addr", addr);
		map.put("img",img);
		
		dao.MemberInsert(map);
		if(id.equals(dao.Login(map).getMemberId())) {
			return "redirect:/Login.do";
		}
		else {
			return "redirect:/Member.do";
		}
		
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
		MemberVO vo = new MemberVO();
		try {
			String id = req.getParameter("id");
			m.addAttribute("id",id);
			vo.setState("YES");
		}catch(Exception ex) {
		}
		m.addAttribute("mvo",vo);
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
		MemberVO mvo = new MemberVO();
		try {
			mvo = dao.Login(map);
			if(id.equals(mvo.getMemberId()) & pwd.equals(mvo.getPwd())) {
				mvo.setState("YES");
				m.addAttribute("mvo",mvo);
				session.setAttribute("sid", id);
				m.addAttribute("date","2020-10-11");
				System.out.println("id : "+session.getAttribute("sid"));
			}
			return "redirect:/Main.do";
		}catch(Exception ex) {
			MemberVO rvo = new MemberVO();
			rvo.setState("NO");
			m.addAttribute("mvo",rvo);
			return "redirect:/Login.do";
		}
	}
	
	@RequestMapping("Logout.do")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/Main.do";
	}

}
