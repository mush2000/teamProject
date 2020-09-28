package com.spring.view;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.biz.MemberService;
import com.spring.biz.vo.MemberVO;

@Controller
public class CentreManageController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	@RequestMapping(value = "/joinMemberPage.do")
	public String joinMember(MemberVO memberVO, Model model) {
		return "member/joinMember";
	}
	
	@RequestMapping(value = "/insertMember.do")
	public String insertMember(MemberVO memberVO, Model model) {
		memberService.insertMember(memberVO);
		return "redirect:main.do";
	}
	
}










