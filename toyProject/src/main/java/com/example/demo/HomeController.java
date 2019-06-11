package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	
	@RequestMapping(value = "/")
	public String home() {
		System.out.println("테스트 컨트롤러 동작");
		return "home";
	}
	

	
}
