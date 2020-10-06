package com.spring.view;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.bind.support.SessionStatus;
//import org.springmodules.validation.commons.DefaultBeanValidator;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.MemberService;
import com.spring.biz.vo.LoginInfoVO;
import com.spring.biz.vo.MemberVO;

import java.io.BufferedReader;
//import java.io.InputStream;
import java.io.InputStreamReader;
//import java.net.MalformedURLException;
import java.net.URL;
//import java.net.URLConnection;
import java.net.URLEncoder;
//import java.util.List;



@Controller
public class CentreManageController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	@RequestMapping(value = "/joinPage.do")
	public String joinMember(MemberVO memberVO, Model model) {
		return "member/joinMember";
	}
	
	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO memberVO, Model model) {
		memberService.insertMember(memberVO);
		return "redirect:mainPage.do";
	}
	
	@RequestMapping(value = "/loginPage.do")
	public String loginPage(MemberVO memberVO, Model model) {
		return "member/loginMember";
	}
	
	@RequestMapping(value = "/loginMember.do")
	public String loginMember(MemberVO memberVO, Model model, HttpSession session) {
		LoginInfoVO vo = memberService.login(memberVO);
		if (vo != null) {
			session.setAttribute("loginInfo", vo);
			System.out.println(vo);
			return "redirect:mainPage.do";
		} else
			return "member/loginFail";
	}
	
	@RequestMapping(value = "/searchPwPage.do")
	public String searchPwPage(MemberVO memberVO, Model model) {
		return "member/searchPw";
	}
	
	@RequestMapping(value = "/searchPw.do")
	public String searchPw(MemberVO memberVO, Model model) {
		System.out.println("비번찾기");
		return "redirect:loginPage.do";
	}
	
	@RequestMapping(value = "/searchIdPage.do")
	public String searchIdPage(MemberVO memberVO, Model model) {
		return "member/searchId";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/checkId.do")
	public int checkId(String memberId) {
		return memberService.checkId(memberId) != null ? 1 : 0;
	}

	@ResponseBody
	@RequestMapping(value = "/getAddrApi.do")
	public void getAddrApi(HttpServletRequest req, ModelMap model, HttpServletResponse response) throws Exception {
	//public String getAddrApi(String currentPage, String keyword, ModelMap model, HttpServletResponse response) throws Exception {
		String currentPage = req.getParameter("currentPage"); // (currentPage : n > 0)
		System.out.println(currentPage);
//		String countPerPage = req.getParameter("countPerPage"); // (countPerPage : 0 < n <= 100)
//		String resultType = req.getParameter("resultType"); //(json)
//		String confmKey = req.getParameter("confmKey");
		String keyword = req.getParameter("keyword");
//		String  
		// OPEN API
//		String apiUrl = "http://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage=" + currentPage + "&countPerPage="
//				+ countPerPage + "&keyword=" + URLEncoder.encode(keyword, "UTF-8") + "&confmKey=" + confmKey
//				+ "&resultType=" + resultType;
		String apiUrl = "http://www.juso.go.kr/addrlink/addrLinkApi.do?currentPage=" + currentPage + "&countPerPage=10&keyword="
				+ URLEncoder.encode(keyword, "UTF-8") + "&confmKey=U01TX0FVVEgyMDIwMDkyODE1MTkzMjExMDI0MTI=&resultType=json";
		URL url = new URL(apiUrl);
		BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
		StringBuffer sb = new StringBuffer();
		String tempStr = null;

		while (true) {
			tempStr = br.readLine();
			if (tempStr == null)
				break;
			sb.append(tempStr); // JSON
		}
		br.close();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/xml");
		response.getWriter().write(sb.toString());
//		System.out.println(sb.toString());
//		return sb.toString();
	}

	
}










