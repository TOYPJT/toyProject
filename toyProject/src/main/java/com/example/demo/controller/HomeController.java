package com.example.demo.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.TmpImpl;
import com.example.demo.service.TmpService;
import com.example.demo.tmp_entity.TmpEntity;;

@Controller
public class HomeController {
	
	@Autowired
    private TmpService tmpService;
	private TmpImpl tmpImpl;

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
	public String memberSave(@RequestParam(value = "user_id", required = true) String user_id,
			@RequestParam(value = "user_password", required = true) String user_password,
            HttpSession session, Model model) {
		
		TmpEntity tmpEntity = new TmpEntity();
		
		tmpEntity.setUserId(user_id);
		tmpEntity.setUserPassword(user_password);
		
		tmpService.saveTmpMember(tmpEntity);
		
		List<TmpEntity> list = tmpService.getAllTmpMember();
		model.addAttribute("list", list);
		
	
		return "index";
	}
	
	
	@RequestMapping("/delMember")
	public String memberSave(@RequestParam(value = "user_id", required = true) String user_id,
			HttpSession session, Model model) {
		
		tmpService.delTmpMember(user_id);
		
		List<TmpEntity> list = tmpService.getAllTmpMember();
		model.addAttribute("list", list);
		
		return "index";
	}

	
}
