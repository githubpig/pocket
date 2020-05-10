package com.maijia.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.maijia.dao.Params;
import com.maijia.dao.account.UserProjectMapper;
import com.maijia.model.Project;
import com.maijia.model.UserProject;
import com.maijia.service.project.IProjectService;


@Controller
@RequestMapping
public class ListController {
	
	@Autowired
	private IProjectService projectService;
	
	@Autowired
	private UserProjectMapper userProjectMapper;
	//userproject
	@RequestMapping("/userproject")
	public ModelAndView userproject(@RequestParam("id") String id){
		List<UserProject> userProjects = userProjectMapper.selectUserProject(id);
		List<HashMap<String,Object>> list =new ArrayList<HashMap<String,Object>>();
		for(UserProject up:userProjects){
			HashMap<String, Object> map = new HashMap<>();
			map.put("money", up.getBenmoney());
			Project project=projectService.queryId(Integer.parseInt(up.getProjectid()));
			map.put("name", project.getName());
			map.put("rate",project.getRate());
			map.put("duo",new BigDecimal(up.getCurrentmoney()).subtract(up.getBenmoney()));
			list.add(map);
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("userproject");
		modelAndView.addObject("ups",list);
		return modelAndView;
	}
	
	
	@RequestMapping("/projectinfo")
	public ModelAndView projectinfo(@RequestParam("id") int id){
		Project project = projectService.queryId(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("projectinfo");
		modelAndView.addObject("p",project);
		modelAndView.addObject("pid",id);
		return modelAndView;
	}
	
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
