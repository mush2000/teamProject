package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.ClassInfoVO;
import com.spring.biz.vo.ClassLevelVO;
import com.spring.biz.vo.ClassPlaceVO;
import com.spring.biz.vo.ClassStatusVO;
import com.spring.biz.vo.ClassTimeVO;
import com.spring.biz.vo.ClassesVO;
import com.spring.biz.vo.InstructorInfoVO;

public interface AdminService {
	//과목 목록 불러오기
	List<ClassesVO> selectClasses();
	//대관 가능한 장소 불러오기 Y N 
	List<ClassPlaceVO> selectClassPlace();
	//강의 시간대 불러오기
	List<ClassTimeVO> selectClassTime();
	//강사 목록 불러오기
	List<InstructorInfoVO> selectInstructorInfo();
	//강의 레벨 목록 불러오기
	List<ClassLevelVO> selectClassLevel();
	//강의 개설상태 목록 불러오기
	List<ClassStatusVO> selectClassStatus();
	//강의 개설하기
	int insertLecture(ClassInfoVO classInfoVO);
	//개설된 강의 목록 불러오기
	List<ClassInfoVO> selectClassInfo();

}	




















