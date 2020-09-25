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
	
	@RequestMapping(value = "/joinMember.do")
	public String insertMember(MemberVO memberVO, Model model) {
		memberService.insertMember(memberVO);
		return "sample/sample";
	}
	
}










