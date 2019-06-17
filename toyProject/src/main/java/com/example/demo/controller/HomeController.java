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
	
	@RequestMapping("/main")
	public String goMainIndex(Model model){
		
		return "main/index";
	}
	
	@RequestMapping("/save")
	public String memSave(Model model){
		TmpEntity tmpEntity = new TmpEntity();
		
		tmpEntity.setUser_id("newID�ƾƵ�");
		tmpEntity.setUser_password("pass");
		
		tmpService.saveTmpMember(tmpEntity);
		
		List<TmpEntity> list = tmpService.getAllTmpMember();
	    model.addAttribute("list", list);
		
		return "index";
	}
	
}
