package com.example.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;;

@Controller
public class LoginController {
	
/*	@Autowired
    private TmpService tmpService;
	private TmpImpl tmpImpl;*/

	@RequestMapping("/login/login")
	public String goMain(Model model){
		return "login/login";
	}
	
	@RequestMapping("/login/register")
	public String goRegister(Model model){
		return "login/register";
	}
	
}
