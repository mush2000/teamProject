package com.spring.view;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring.biz.SampleService;

@Controller
public class SampleController {
	@Resource(name = "sampleService")
	SampleService sampleService;
	
	//메인페이지이동
	@RequestMapping(value = "/mainPage.do")
	public String mainPage() {
		return "common/mainPage";
	}
	
	//센터소개페이지이동
	@RequestMapping(value = "/introPage.do")
	public String introPage() {
		return "center/introPage";
	}
}










