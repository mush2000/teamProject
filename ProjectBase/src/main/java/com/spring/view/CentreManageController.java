package com.spring.view;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponse;

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
		return "redirect:main.do";
	}
	
	@RequestMapping(value = "/loginPage.do")
	public String loginMember(MemberVO memberVO, Model model) {
		return "member/joinMember";
	}

	@ResponseBody
	@RequestMapping(value = "/getAddrApi.do")
	public void getAddrApi(HttpServletRequest req, ModelMap model, HttpServletResponse response) throws Exception {
	//public String getAddrApi(String currentPage, String keyword, ModelMap model, HttpServletResponse response) throws Exception {
		// �슂泥�蹂��닔 �꽕�젙
		String currentPage = req.getParameter("currentPage"); // �슂泥� 蹂��닔 �꽕�젙 (�쁽�옱 �럹�씠吏�. currentPage : n > 0)
//		String countPerPage = req.getParameter("countPerPage"); // �슂泥� 蹂��닔 �꽕�젙 (�럹�씠吏��떦 異쒕젰 媛쒖닔. countPerPage 踰붿쐞 : 0 < n <=
																// 100)
//		String resultType = req.getParameter("resultType"); // �슂泥� 蹂��닔 �꽕�젙 (寃��깋寃곌낵�삎�떇 �꽕�젙, json)
//		String confmKey = req.getParameter("confmKey"); // �슂泥� 蹂��닔 �꽕�젙 (�듅�씤�궎)
		String keyword = req.getParameter("keyword"); // �슂泥� 蹂��닔 �꽕�젙 (�궎�썙�뱶)
		System.out.println(currentPage + " " + keyword);
//		String  
		// OPEN API �샇異� URL �젙蹂� �꽕�젙
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
			sb.append(tempStr); // �쓳�떟寃곌낵 JSON ���옣
		}
		br.close();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/xml");
		response.getWriter().write(sb.toString()); // �쓳�떟寃곌낵 諛섑솚
//		System.out.println(sb.toString());
//		return sb.toString();
	}

	
}










