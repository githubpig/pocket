package com.maijia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maijia.model.Params;
import com.maijia.model.Project;
import com.maijia.service.project.IProjectService;

@Controller
@RequestMapping
public class indexController {
	
	@Autowired
	private IProjectService projectService;
	
	@RequestMapping("/index")
	public ModelAndView index(){
		Params params = new Params();
		params.setProject_type(0);//短期
		params.setPageNo(0);
		params.setPageSize(2);
		params.setStatus(1);
		List<Project> ps =projectService.queryPageProjects(params);
		
		Params params2 = new Params();
		params2.setProject_type(1);//短期
		params2.setPageNo(0);
		params2.setPageSize(3);
		params2.setStatus(1);
		List<Project> ps2 =projectService.queryPageProjects(params2);
		
		Params params3 = new Params();
		params3.setProject_type(2);//短期
		params3.setPageNo(0);
		params3.setPageSize(3);
		params3.setStatus(1);
		List<Project> ps3 =projectService.queryPageProjects(params3);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		modelAndView.addObject("ps",ps);
		modelAndView.addObject("ps2",ps2);
		modelAndView.addObject("ps3",ps3);
		return modelAndView;
	}
}
