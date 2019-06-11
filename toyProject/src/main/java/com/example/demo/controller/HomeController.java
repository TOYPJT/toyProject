package com.example.demo.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Bean.ResponseVO;
import com.example.demo.Bean.UserVO;

@RestController
@RequestMapping(value = "/api/users")
public class HomeController {

	@GetMapping
	public ResponseVO<?> getUsers(){
		ResponseVO<List<UserVO>> resp = new ResponseVO<>();
		
		List<UserVO> list = new ArrayList<>();
		list.add(new UserVO("테스트","010-1111-2222"));
		list.add(new UserVO("테스터","010-4444-2222"));
		list.add(new UserVO("황남욱","010-2873-1430"));
		
		resp.setResponse(list);
		return resp;
	}
	
	 @GetMapping("/{id}")
	    public ResponseVO<?> getUser(@PathVariable int id) {
	        ResponseVO<UserVO> resp = new ResponseVO<>();

	        List<UserVO> list = new ArrayList<>();
	        list.add(new UserVO("테스트", "010-1111-2222"));
	        list.add(new UserVO("테스터", "010-4444-2222"));
	        list.add(new UserVO("LSH", "010-9999-1111"));

	        resp.setResponse(list.get(id));
	        return resp;
	    }

	
}
