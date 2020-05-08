package com.maijia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class UserInitController {
	
	@RequestMapping("/user-init")
	public String userInit(){
		return "user-init";
	}
}
