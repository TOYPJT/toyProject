package com.example.demo.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.TmpService;
import com.example.demo.tmp_entity.TmpEntity;;

@Controller
public class HomeController {
	
	@Autowired
    private TmpService tmpService;

	@RequestMapping("/")
	public String goMain(Model model){
		List<TmpEntity> list = tmpService.getAllTmpMember();
	    model.addAttribute("list", list);
		return "index";
	}
	
}
