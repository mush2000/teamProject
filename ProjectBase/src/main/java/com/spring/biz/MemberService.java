package com.spring.biz;

import com.spring.biz.vo.LoginInfoVO;
import com.spring.biz.vo.MemberVO;

public interface MemberService {
	int insertMember(MemberVO memberVO);
	
	String checkId(String memberId);
	
	LoginInfoVO login(MemberVO memberVO);
	
	int checkWrongPwCnt(MemberVO memberVO);
	
	String searchPw(MemberVO memberVO);
	
	int newPw(MemberVO memberVO);

}




















