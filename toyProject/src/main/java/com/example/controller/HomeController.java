package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	
	@RequestMapping(value = "/")
	@ResponseBody
	public String home() {
		System.out.println("컨트롤러");
		return "home";
	}
	

	
}
