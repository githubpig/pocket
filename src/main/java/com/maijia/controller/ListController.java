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
public class ListController {
	
	@Autowired
	private IProjectService projectService;
	
	
	@RequestMapping("/contentlist/template")
	public ModelAndView template(Params params){
		System.out.println(params.getPageNo() +"====="+ params.getPageSize());
		params.setStatus(1);
		ModelAndView modelAndView = new ModelAndView();
		List<Project> ps = projectService.queryPageProjects(params);
		modelAndView.setViewName("contentlist/template");
		modelAndView.addObject("ps",ps);
		
		return modelAndView;
	}
	
	
	@RequestMapping("/list")
	public ModelAndView list(){
		Params params = new Params();
		params.setStatus(1);
		ModelAndView modelAndView = new ModelAndView();
		int count = projectService.count(params);
		modelAndView.setViewName("list");
		modelAndView.addObject("count",count);
		return modelAndView;
	}
	
	
	@RequestMapping("/list551")
	public String list551(){
		return "list551";
	}
	
	
	
	@RequestMapping("/content191/template")
	public ModelAndView template919(Params params){
		System.out.println(params.getPageNo() +"====="+ params.getPageSize());
		params.setStatus(1);
		params.setProject_type(0);
		ModelAndView modelAndView = new ModelAndView();
		List<Project> ps = projectService.queryPageProjects(params);
		modelAndView.setViewName("content191/template");
		modelAndView.addObject("ps",ps);
		return modelAndView;
	}
	
	@RequestMapping("/list191")
	public ModelAndView list191(){
		Params params = new Params();
		params.setStatus(1);
		params.setProject_type(0);
		ModelAndView modelAndView = new ModelAndView();
		int count = projectService.count(params);
		modelAndView.setViewName("list191");
		modelAndView.addObject("count",count);
		return modelAndView;
	}
	
	@RequestMapping("/content531/template")
	public ModelAndView template531(Params params){
		System.out.println(params.getPageNo() +"====="+ params.getPageSize());
		params.setStatus(1);
		params.setProject_type(1);
		ModelAndView modelAndView = new ModelAndView();
		List<Project> ps = projectService.queryPageProjects(params);
		modelAndView.setViewName("content531/template");
		modelAndView.addObject("ps",ps);
		return modelAndView;
	}
	
	@RequestMapping("/list531")
	public ModelAndView list531(){
		Params params = new Params();
		params.setStatus(1);
		params.setProject_type(1);
		ModelAndView modelAndView = new ModelAndView();
		int count = projectService.count(params);
		modelAndView.setViewName("list531");
		modelAndView.addObject("count",count);
		return modelAndView;
	}
	
	@RequestMapping("/content541/template")
	public ModelAndView template541(Params params){
		System.out.println(params.getPageNo() +"====="+ params.getPageSize());
		params.setStatus(1);
		params.setProject_type(2);
		ModelAndView modelAndView = new ModelAndView();
		List<Project> ps = projectService.queryPageProjects(params);
		modelAndView.setViewName("content541/template");
		modelAndView.addObject("ps",ps);
		return modelAndView;
	}
	
	@RequestMapping("/list541")
	public ModelAndView list541(){
		Params params = new Params();
		params.setStatus(1);
		params.setProject_type(2);
		ModelAndView modelAndView = new ModelAndView();
		int count = projectService.count(params);
		modelAndView.setViewName("list541");
		modelAndView.addObject("count",count);
		return modelAndView;
	}
	
}
