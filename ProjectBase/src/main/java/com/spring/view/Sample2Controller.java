package com.spring.view;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.spring.biz.SampleService;

@Controller
public class Sample2Controller {
	@Resource(name = "sampleService")
	SampleService sampleService;
	
	@RequestMapping(value = "/sample.do")
	public String manageBuy() {
		return "sample/sample";
	}
	
}










