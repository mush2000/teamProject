package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.ClassInfoVO;
import com.spring.biz.vo.ClassLevelVO;
import com.spring.biz.vo.ClassPlaceVO;
import com.spring.biz.vo.ClassStatusVO;
import com.spring.biz.vo.ClassTimeVO;
import com.spring.biz.vo.ClassesVO;
import com.spring.biz.vo.InstructorInfoVO;

@Service("adminService") 
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ClassesVO> selectClasses() {
		return sqlSession.selectList("selectClasses");
	}

	@Override
	public List<ClassPlaceVO> selectClassPlace() {
		return sqlSession.selectList("selectClassPlace");
	}

	@Override
	public List<ClassTimeVO> selectClassTime() {
		return sqlSession.selectList("selectClassTime");
	}

	@Override
	public List<InstructorInfoVO> selectInstructorInfo() {
		return sqlSession.selectList("selectInstructorInfo");
	}

	@Override
	public List<ClassLevelVO> selectClassLevel() {
		return sqlSession.selectList("selectClassLevel");
	}

	@Override
	public List<ClassStatusVO> selectClassStatus() {
		return sqlSession.selectList("selectClassStatus");
	}

	@Override
	public int insertLecture(ClassInfoVO classInfoVO) {
		return sqlSession.insert("insertLecture", classInfoVO);
	}

	@Override
	public List<ClassInfoVO> selectClassInfo() {
		return sqlSession.selectList("selectClassInfo");
	}

	

	
}












