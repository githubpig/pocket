package com.maijia.controller;

import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import static com.maijia.common.TzConstant.SESSION_USER_USERNAME;

import com.alibaba.fastjson.JSON;
import com.maijia.dao.account.UserProjectMapper;
import com.maijia.model.ResultData;
import com.maijia.model.User;
import com.maijia.model.UserProject;
import com.maijia.service.user.IUserService;

@Controller
public class UserController extends BaseController{
	
	@Autowired
	private UserProjectMapper userProjectMapper;
	//IUserService
	@Autowired
	private IUserService userService;
	
	//reg
	@ResponseBody
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String reg(User user){
		user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
		ResultData resultData = new ResultData();
		try {
			int flag = userService.insert(user);
			resultData.setCode(0);
			resultData.setMsg("success");
		} catch (Exception e) {
			resultData.setCode(-1);
			resultData.setMsg("fail");
		}
		String str = JSON.toJSONString(resultData);
		return str;
	}
	//buyProject
	@ResponseBody
	@RequestMapping(value="buyProject",method=RequestMethod.POST)
	public String buyProject(UserProject userProject){
		userProject.setCreatetime(new Date());
		userProject.setStatus(0);
		userProject.setCurrentmoney(userProject.getBenmoney().toString());
		ResultData resultData = new ResultData();
		try {
			int flag = userProjectMapper.insertSelective(userProject);
			resultData.setCode(0);
			resultData.setMsg("success");
		} catch (Exception e) {
			resultData.setCode(-1);
			resultData.setMsg("fail");
		}
		if(session.getAttribute(SESSION_USER_USERNAME)!=null){
			return JSON.toJSONString(resultData);
		}else{
			return "redirect:user-login";
		}
	}
	
	@RequestMapping("/userinfo")
	public String userinfo(){
		return "userinfo";
	}
}
