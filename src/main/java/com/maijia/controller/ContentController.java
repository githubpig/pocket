package com.maijia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class ContentController {
	
	@RequestMapping("/content")
	public String content(){
		return "content";
	}
}
