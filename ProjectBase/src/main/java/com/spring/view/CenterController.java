package com.spring.view;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.xml.sax.SAXException;

import com.spring.biz.BoardService;
import com.spring.biz.CenterService;
import com.spring.biz.StudentService;
import com.spring.biz.util.IsHoliday;
import com.spring.biz.util.Pagination;
import com.spring.biz.vo.BaseVO;
import com.spring.biz.vo.BoardKindVO;
import com.spring.biz.vo.ClassPlaceVO;
import com.spring.biz.vo.ClassesVO;
import com.spring.biz.vo.MainBoardVO;
import com.spring.biz.vo.RentalPlaceVO;
import com.spring.biz.vo.SearchClassVO;
import com.spring.biz.vo.SearchVO;
import com.spring.biz.util.DateUtil;

@Controller
public class CenterController {
	@Resource(name = "centerService")
	CenterService centerService;
	
	@Resource(name = "studentService")
	StudentService studentService;
	
	@Resource(name = "boardService")
	BoardService boardService;

	//메인페이지 - By.조유반
	@RequestMapping(value = "/mainPage.do")
	public String mainPage(Model model, MainBoardVO mainBoardVO) {
		//공지사항 게시판 최신글 5개 목록 조회
		model.addAttribute("selectNoticeList", centerService.selectNoticeList());
		//Q&A 게시판 최신글 5개 목록 조회
		model.addAttribute("selectQnaList", centerService.selectQnaList());
		//FAQ 게시판 최신글 5개 목록 조회
		model.addAttribute("selectFaqList", centerService.selectFaqList());
		return "common/mainPage";
	}
	
	//센터안내페이지 - By.조유반
	@RequestMapping(value = "/centerIntroPage.do")
	public String centerIntroPage(BaseVO baseVO, Model model) {
		//센터안내페이지 부트스트랩 tab 기능으로 페이지 전환하기 위해 BaseVO 생성 후 각 tab에 이름 지정
		model.addAttribute("introTab", baseVO.getIntroTab());
		return "center/centerIntroPage";
	}
	
	//menu.jsp에 강의목록 불러오기(Ajax) - By.조유반
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ResponseBody
	@RequestMapping(value = "/lectureList.do")
	public List<ClassesVO> lectureList(HttpSession session) {
		//강의목록이 빈값이면 DB 강의테이블에 있는 강의목록의 값을 세팅해준다.
		if(session.getAttribute("classesList") == null) {
			session.setAttribute("classesList", studentService.classesNameList());
		}
		//세팅한 속성값을 리턴 값으로 던져줌 -> 메뉴에 목록으로 표시 됨
		return (List)session.getAttribute("classesList");
	}
	
	//menu.jsp에 게시판 종류 불러오기(Ajax) - By.조유반
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@ResponseBody
	@RequestMapping(value = "/boardKindList.do")
	public List<BoardKindVO> selectBoardKindList(HttpSession session) {
		//게시판 목록이 빈값이면 DB 게시판테이블에 있는 게시판종류 값을 세팅해준다.
		if(session.getAttribute("selectBoardKindList") == null) {
			session.setAttribute("selectBoardKindList", boardService.selectBoardKindList());
		}
		//세팅한 속성값을 리턴 값으로 던져줌 -> 메뉴에 목록으로 표시 됨
		return (List)session.getAttribute("selectBoardKindList");
	}
	
	//menu.jsp에 admin 로그인 시 신규대관예약 알림배지(Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/selectPlaceRentalCnt.do")
	public int selectPlaceRentalCnt() {
		//승인대기중인 예약건 수가 있다면 카운팅한 값을 result로 넘겨줌
		int result = centerService.selectPlaceRentalCnt();
		return result;
	}
	
	//대관안내페이지 - By.조유반 
	@RequestMapping(value = "/placeRentalIntroPage.do")
	public String placeRentalIntroPage(ClassPlaceVO classPlaceVO, Model model) {
		//대관장소별 대관비용 목록 조회
		model.addAttribute("classPlaceList", centerService.selectClassPlaceList());
		return "center/placeRentalIntroPage";
	}
	
	//대관일정페이지 이동 - By.조유반 
	@RequestMapping(value = "/placeRentalSchedulePage.do")
	public String placeRentalSchedulePage(Model model) {
		//IsHoliday(정부 공휴일 오픈 API)클래스에서 각 연도와 월에 맞는 공휴일 값을
		//"holyday"라는 이름으로 넘겨줌 (try, chatch문으로 예외처리) - 공휴일이 달력에 표시 됨
		try {
			model.addAttribute("holiday", IsHoliday.isHoliday(IsHoliday.getNowDate("yyyy"), IsHoliday.getNowDate("MM")));
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		return "center/placeRentalSchedulePage";
	}
	
	//대관일정페이지 : 예약 상황 조회(Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/selectReserveStatus.do")
	public List<RentalPlaceVO> selectReserveStatus(RentalPlaceVO rentalPlaceVO, String clickYear, int clickMonth, int clickDay) {
		//달력에서 이용자가 클릭한 연도의 값(clickYear)을 year라는 변수에 넣어줌(자료형 Stirng)
		String year = clickYear;
		//달력에서 이용자가 클릭한 월의 값(clickMonth)을 month라는 변수에 넣어줌(자료형 String), 한자리의 경우 앞에 "0"을 붙임 (ex - '4' -> '04')
		String month = String.format("%02d", clickMonth);
		//달력에서 이용자가 클릭한 일의 값(clickDay)을 day라는 변수에 넣어줌(자료형 String), 한자리의 경우 앞에 "0"을 붙임 (ex - '4' -> '04')
		String day = String.format("%02d", clickDay);
		
		//클릭한 연월일을 하나로 이어서 rentalDate에 값으로 넣어줌 (ex - '20201120')
		rentalPlaceVO.setRentalDate(year+month+day);
		
		return centerService.selectReserveStatusList(rentalPlaceVO);
	}
	
	//대관일정페이지 : 휴일조회API(Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/placeRentalChangeMonth.do")
	public String placeRentalChangeMonth(String year, String month) {
		String result = "";
		//연, 월이 바뀔때마다 IsHoliday 클래스에 isHolyday 변수에 새로 불러온
		//연, 월 값을 세팅하여 해당 연, 월에 맞는 공휴일을 다시 보여줌
		try {
			result = IsHoliday.isHoliday(year, month);
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//대관신청페이지이동 - By.조유반
	@RequestMapping(value = "/placeRentalApplyPage.do")
	public String placeRentalApplyPage(Model model) {
		//연, 월이 바뀔때마다 IsHoliday 클래스에 isHolyday 변수에 새로 불러온
		//연, 월 값을 세팅하여 해당 연, 월에 맞는 공휴일을 다시 보여줌
		try {
			model.addAttribute("holiday", IsHoliday.isHoliday(IsHoliday.getNowDate("yyyy"), IsHoliday.getNowDate("MM")));
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		return "center/placeRentalApplyPage";
	}
	
	//대관신청페이지 : step1 화면전환 (Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/step1.do")
	public List<RentalPlaceVO> step1(Model model, RentalPlaceVO rentalPlaceVO, String clickYear, int clickMonth, int clickDay) {
		try {
			model.addAttribute("holiday", IsHoliday.isHoliday(IsHoliday.getNowDate("yyyy"), IsHoliday.getNowDate("MM")));
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		String year = clickYear;
		String month = String.format("%02d", clickMonth);
		String day = String.format("%02d", clickDay);
		
		rentalPlaceVO.setRentalDate(year+month+day);
		
		return centerService.selectStep1(rentalPlaceVO);
	}
	
	//대관신청페이지 : step2 화면전환 (Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/step2.do")
	public RentalPlaceVO step2(Model model, RentalPlaceVO rentalPlaceVO, String clickYear, int clickMonth, int clickDay, int clickRentalPlaceCode) {
		try {
			model.addAttribute("holiday", IsHoliday.isHoliday(IsHoliday.getNowDate("yyyy"), IsHoliday.getNowDate("MM")));
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		String year = clickYear;
		String month = String.format("%02d", clickMonth);
		String day = String.format("%02d", clickDay);
		int rentalPlaceCode = clickRentalPlaceCode;
		
		rentalPlaceVO.setRentalDate(year+month+day);
		rentalPlaceVO.setRentalPlaceCode(rentalPlaceCode);
		
		return centerService.selectStep2(rentalPlaceVO);
	}
	
	//대관신청페이지 : 대관예약하기 (Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/insertReserve.do")
	public int insertReserve(Model model, RentalPlaceVO rentalPlaceVO, String clickYear, int clickMonth, int clickDay, int clickRentalPlaceCode, String clickRentalTime, String loginInfo) {
		try {
			model.addAttribute("holiday", IsHoliday.isHoliday(IsHoliday.getNowDate("yyyy"), IsHoliday.getNowDate("MM")));
		} catch (IOException | ParserConfigurationException | SAXException e) {
			e.printStackTrace();
		}
		String year = clickYear;
		String month = String.format("%02d", clickMonth);
		String day = String.format("%02d", clickDay);
		
		//클릭한 장소명과 대관시간의 값을 각 변수에 넣어줌
		int rentalPlaceCode = clickRentalPlaceCode;
		String rentalTime = clickRentalTime;
		String rentalMemberId = loginInfo;
		
		rentalPlaceVO.setRentalDate(year+month+day);
		rentalPlaceVO.setRentalPlaceCode(rentalPlaceCode);
		rentalPlaceVO.setRentalTime(rentalTime);
		rentalPlaceVO.setRentalMemberId(rentalMemberId);
		
		int result = centerService.insertReserve(rentalPlaceVO);
		
		return result;
	}
	
	//강의검색 시 검색페이지이동 - By.조유반
	@RequestMapping(value = "/searchPage.do")
	public String searchPage(Model model, SearchClassVO searchClassVO, String searchWord, 
				@RequestParam(required = false, defaultValue = "1") int page,
				@RequestParam(required = false, defaultValue = "1") int range) {
		
		//페이징처리
		int listCnt = centerService.selectSearchPageCnt(searchWord);
		Pagination pagination = new Pagination(page, range, listCnt);
		model.addAttribute("pagination", pagination);
		
		//페이징 값과 검색어 값을 Map에 넣어줌
		Map<String, Object> map = new HashMap<>();
		map.put("pagination", pagination);
		map.put("searchWord", searchWord);
			
		model.addAttribute("searchClassList", centerService.selectSearchClassList(map));
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("listTotalCnt", listCnt);
		
		return "center/searchPage";
	}
	
	
	//대관관리페이지 - By.조유반
	@RequestMapping(value = "/placeRentalManager.do")
	public String placeRentalManager(RentalPlaceVO rentalPlaceVO, Model model, SearchVO searchVO) {
		//toDate와 fromDate에 들어갈 날짜
		String toDate = searchVO.getToDate();
		String fromDate = searchVO.getFromDate();
		
		//받아오는 날짜가 없다면 (처음 페이지가 열렸을 때)
		if(searchVO.getFromDate() == null || searchVO.getFromDate().equals("")) {
			//DateUtil 메소드에 static을 붙여서 객체 생성 안해도 메소드에 바로 접근 가능
			//toDate에 두달 후 날짜를 세팅
			toDate = DateUtil.getBeforeDate();
			//fromDate에 현재 날짜를 세팅
			fromDate = DateUtil.getNowDate();
			//searchVO에 검색의 기준이 되는 첫날짜와 마지막 날짜를 각각 세팅
			searchVO.setFromDate(fromDate);
			searchVO.setToDate(toDate);
		}
		
		//selectRentalList 라는 이름으로 대관목록 값을 넘겨줌
		model.addAttribute("selectRentalList", centerService.selectRentalList(searchVO));
		//fromDate라는 이름으로 검색의 기준이 되는 첫날짜 값을 넘겨줌 (처음페이지가 열렸을 때는 금일을 기준으로 함)
		model.addAttribute("fromDate", fromDate);
		//toDate라는 이름으로 검색의 기준이 되는 마지막날짜 값을 넘겨줌 (처음페이지가 열렸을 때는 금일을 기준으로 두달 후 날짜)
		model.addAttribute("toDate", toDate);
		
		return "admin/placeRentalManager";
	}
	
	//대관관리 : 선택 예약 승인하기 - By.조유반
	@RequestMapping(value = "/updateRentalApprovalYNList.do")
	public String updateRentalApprovalYNList(RentalPlaceVO rentalPlaceVO, Model model, String[] rentalCodes) {
		List<String> rentalCodeList = Arrays.asList(rentalCodes);
		rentalPlaceVO.setRentalCodeList(rentalCodeList);
		centerService.updateRentalApprovalYNList(rentalPlaceVO);
		return "redirect:placeRentalManager.do";
	}
	
	//대관관리 : 선택 예약 승인하기 - By.조유반
	@RequestMapping(value = "/deleteRentalList.do")
	public String deleteRentalList(RentalPlaceVO rentalPlaceVO, Model model, String[] rentalCodes) {
		List<String> rentalCodeList = Arrays.asList(rentalCodes);
		rentalPlaceVO.setRentalCodeList(rentalCodeList);
		centerService.deleteRentalList(rentalPlaceVO);
		return "redirect:placeRentalManager.do";
	}
			
	//대관관리 : 대관예약 승인하기(Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/updateRentalApprovalYN.do")
	public int updateRentalApprovalYN(RentalPlaceVO rentalPlaceVO) {
		int result = centerService.updateRentalApprovalYN(rentalPlaceVO);
		return result;
	}
	
	//대관관리 : 대관예약 취소하기(Ajax) - By.조유반
	@ResponseBody
	@RequestMapping(value = "/deleteRental.do")
	public int deleteRental(String rentalCode) {
		int result = centerService.deleteRental(rentalCode);
		return result;
	}
	
	
}










