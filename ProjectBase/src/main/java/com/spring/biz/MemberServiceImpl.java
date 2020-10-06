package com.spring.biz;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.LoginInfoVO;
import com.spring.biz.vo.MemberVO;

@Service("memberService") 
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertMember(MemberVO memberVO) {
		return sqlSession.insert("insertMember", memberVO);
	}

	@Override
	public String checkId(String memberId) {
		return sqlSession.selectOne("checkId", memberId);
	}

	@Override
	public LoginInfoVO login(MemberVO memberVO) {
		LoginInfoVO loginInfoVO = sqlSession.selectOne("loginMemberInfo", memberVO);
		if(loginInfoVO != null) {
			LoginInfoVO vo = sqlSession.selectOne("loginInstructorInfo", memberVO);
			if (vo != null)
				loginInfoVO.setInstNum(vo.getInstNum());
			vo = sqlSession.selectOne("loginStudentInfo", memberVO);
			if (vo != null)
				loginInfoVO.setStuNum(vo.getStuNum());
		} else {
			loginInfoVO = new LoginInfoVO();
			loginInfoVO.setWrongId(sqlSession.selectOne("checkId", memberVO) == null);
			if(!loginInfoVO.isWrongId())
				sqlSession.update("wrongPw", memberVO);
		}
		return loginInfoVO;
	}

	@Override
	public int checkWrongPwCnt(MemberVO memberVO) {
		return sqlSession.selectOne("checkWrongPwCnt", memberVO);
	}

	@Override
//	@Transactional(rollbackFor = Exception.class)
	public String searchPw(MemberVO memberVO) {
		return sqlSession.selectOne("searchPw", memberVO);
	}

	@Override
	public int newPw(MemberVO memberVO) {
		return sqlSession.update("newPw", memberVO);
	}

	
}












