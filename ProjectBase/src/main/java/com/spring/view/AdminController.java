package com.spring.view;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.AdminService;
import com.spring.biz.vo.ClassInfoVO;
import com.spring.biz.vo.ClassLevelVO;
import com.spring.biz.vo.ClassPlaceVO;
import com.spring.biz.vo.ClassStatusVO;
import com.spring.biz.vo.ClassTimeVO;
import com.spring.biz.vo.ClassesVO;
import com.spring.biz.vo.InstructorInfoVO;

@Controller
public class AdminController {
	@Resource(name = "adminService")
	AdminService adminService;
	
	//강의 개설 페이지 으로 이동
	//강의 개설 하기 위한 필요한 FK 값을 가져간다 
	@RequestMapping(value = "/insertLecture.do")
	public String lectureAccept(Model model) {
		
		//과목목록 불러오기
		List<ClassesVO> classesList = adminService.selectClasses();
		//강의장소목록 불러오기
		List<ClassPlaceVO> classPlaceList = adminService.selectClassPlace();
		//강의시간목록 불러오기
		List<ClassTimeVO> classTimeList = adminService.selectClassTime();
		//강사목록 불러오기
		List<InstructorInfoVO> instructorInfoList = adminService.selectInstructorInfo();
		//강의레벨목록 불러오기
		List<ClassLevelVO> classLevelList = adminService.selectClassLevel();
		//강의 개설상태목록 불러오기
		List<ClassStatusVO> classStatusList = adminService.selectClassStatus();
		//오늘날짜 불러오기
		Calendar date = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String sysdate = dateFormat.format(date.getTime());
		
		
		model.addAttribute("sysdate", sysdate);
		model.addAttribute("classesList", classesList);
		model.addAttribute("classPlaceList", classPlaceList);
		model.addAttribute("classTimeList", classTimeList);
		model.addAttribute("instructorInfoList", instructorInfoList);
		model.addAttribute("classLevelList", classLevelList);
		model.addAttribute("classStatusList", classStatusList);
		
		
		return "admin/insertLecture";
	}
	
	@ResponseBody //ajax 로 만듬
	@RequestMapping(value = "/insertLecture2.do")
	public int insertLecture(ClassInfoVO classInfoVO) {
		int result = adminService.insertLecture(classInfoVO);
		return result;
		
		
	}
	
	
	
}










