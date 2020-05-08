package com.maijia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class MoneyController {
	
	@RequestMapping("/money")
	public String money(){
		return "money";
	}
}
