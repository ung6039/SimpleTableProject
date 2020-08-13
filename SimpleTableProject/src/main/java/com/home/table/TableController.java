package com.home.table;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.home.main.daily;
import com.home.main.dailyVO;
import com.home.member.*;

@Controller
public class TableController{
	
	@Autowired
	private BoardDAO dao;
	
	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private daily dal;

	@RequestMapping("Main.do")
	public String main(Model m,HttpServletRequest req,HttpSession session) {
		
		Calendar c_dal = Calendar.getInstance(); 
		String since_date = req.getParameter("date");
		if( since_date == null) {
			since_date = String.valueOf( c_dal.get(Calendar.YEAR)+" / "+( c_dal.get(Calendar.MONTH)+1 ));
		}
		List<dailyVO> list = dal.dal(since_date);
		if(list.get(0).getFrist_day() >6) {
			System.out.println("??");
			list.get(0).setFrist_day(1);
		}
		System.out.println("첫 째날 잡기 : "+(list.get(0).getFrist_day()));
		String id = req.getParameter("id");
		String img = req.getParameter("img");
		
		System.out.println("firstDAY :"+list.get(0).getFrist_day());
		
		String year = since_date.split("/")[0].trim();
		System.out.println("year : "+year);
		String month = since_date.split("/")[1].trim();
		System.out.println("month : "+month);
		m.addAttribute("month",month);
		int ss = Integer.parseInt(month) -1;
		System.out.println("ss :"+ss);
		if(ss > 11) {
			ss = 0;
		}
		int test_check = list.get(0).getDAYS()[ss] + (list.get(0).getFrist_day()+1);
		m.addAttribute("test_check",test_check);
		since_date = year+" / "+month;
		String s="";
		
		try {
			System.out.println("첫 째날 잡기2 : "+(list.get(0).getFrist_day()+1));
			m.addAttribute("day_list",list.get(0));
			System.out.println("첫 째날 잡기3 : "+(list.get(0).getFrist_day()+1));
			m.addAttribute("since_date",since_date);
			
			s = session.getAttribute("sid").toString();
			Map map = new HashMap();
			map.put("id", s);
			MemberVO mvo = mdao.Login_info(map);
			m.addAttribute("img",mvo.getImg());
			System.out.println("이미지 :"+mvo.getImg());
		}catch(Exception ex) {
			s= "로그인 실패";
		}
		System.out.println("id :"+s);
		
		m.addAttribute("img");
		m.addAttribute("id",id);
		System.out.println(id);
		
		return "main";
	}
	@RequestMapping("Table.do")
	public String table(Model m,String page) {
		
		if(page==null) {
			page="1";
		}
		int curpage=Integer.parseInt(page);
		int rowSize=5;
		int start =(rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<BoardVO> list = dao.BoardList(map);
		
		
		int total = dao.Totalpage();
		
		m.addAttribute("curpage",curpage);
		m.addAttribute("total",total);
		m.addAttribute("list",list);
		
		return "table/Table";
	}
	@RequestMapping("Image.do")
	public String image(Model m) {
		
		
		return "image/Image";
	}
	
	@RequestMapping("Insert.do")
	public String Insert(Model m) {
		
		
		return "table/Insert";
	}
	@RequestMapping("Insert_ok.do")
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
		
		return "redirect:/Table.do";
	}
	
	@RequestMapping("detail.do")
	public String detail_page(HttpServletRequest req,Model m) {
		String no = req.getParameter("no");
		BoardVO vo = dao.DetailBoardPage(Integer.parseInt(no));
		m.addAttribute("vo",vo);
		return "table/Detail";
	}
}
