package com.maijia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HelpController {
	
	@RequestMapping("/help")
	public String help(){
		System.out.println("1111111111111");
		return "help";
	}
}
