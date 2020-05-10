package com.maijia.controller;

import static com.maijia.common.TzConstant.SESSION_USER;
import static com.maijia.common.TzConstant.SESSION_USER_USERNAME;
import static com.maijia.common.TzConstant.SESSION_USER_ACCOUNT;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.maijia.common.TmStringUtils;
import com.maijia.dao.account.UAccountMapper;
import com.maijia.dao.account.UserAccountMapper;
import com.maijia.model.ResultData;
import com.maijia.model.UAccount;
import com.maijia.model.User;
import com.maijia.model.UserAccount;
import com.maijia.service.user.IUserService;
	
@Controller
public class LoginController extends BaseController{
	
	@Autowired
	private IUserService userService;
	@Autowired
	private UserAccountMapper userAccountMapper;
	@Autowired
	private UAccountMapper uAccountMapper;
	
	@RequestMapping("user-login")
	public String index(){
		return "user-login";
	}
	
	@ResponseBody
	@RequestMapping(value="logined",method=RequestMethod.POST)
	public String logined(User user){
		ResultData resultData = new ResultData();
		if(TmStringUtils.isNotEmpty(user.getPhone()) && TmStringUtils.isNotEmpty(user.getPassword())){
			//String md5Password = TmStringUtils.md5Base64(password);
			List<User> users = userService.selectUsers(user);
			if(!users.isEmpty() && users.get(0) != null){
				if(users.get(0).getAutologin() == 0){
					resultData.setCode(-1);
					resultData.setMsg("forbiden");
					//return "forbiden";
				}else{
					session.setAttribute(SESSION_USER, users.get(0));
					session.setAttribute(SESSION_USER_USERNAME, users.get(0).getNick());
					UAccount uAccount = uAccountMapper.selectUserId(users.get(0).getId());
					UserAccount userAccount  = userAccountMapper.selectByPrimaryKey(uAccount.getAccountId());
					session.setAttribute(SESSION_USER_ACCOUNT, userAccount);
					resultData.setCode(0);
					resultData.setMsg("success");
				}
			}else{
				resultData.setCode(-1);
				resultData.setMsg("error");
			}
		}else{
			resultData.setCode(-1);
			resultData.setMsg("is null");
		}
		return  JSON.toJSONString(resultData);
	}
	@RequestMapping("/logout")
	public String logout(){
		session.invalidate();
		return "redirect:user-login";
	}
}

