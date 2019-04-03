package com.qhit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.pojo.SysUser;
import com.qhit.service.UserService;

@Controller
@RequestMapping("/user")

public class UserController {
	
	@Resource(name="userService")
	private UserService userservice;
	
	@RequestMapping("login")
	@ResponseBody
	public String login(String username,String password,HttpSession session){
		
	    SysUser user=userservice.login(username, password);
		if (user!=null) {
			
			session.setAttribute("user", user);
			return "1";
		
		}else{
			return "0";
		}
		
	}
	@RequestMapping("register")
	@ResponseBody
	public String register(SysUser user){
		
		int a=userservice.register(user);
		if (a==1) {
			return "1";
			
		}else{
			return "0";
		}
		
	}
	
/*	
	public ModelAndView register(SysUser user){
		
		ModelAndView mv=new ModelAndView();
		int a=userservice.register(user);
		if (a!=0) {
			mv.addObject("user", user);
			mv.setViewName("index");
		}else{
			mv.addObject("error", "用户已存在");
			mv.setViewName("register");
		}
		return mv;
		
	}
	*/
	
	@RequestMapping("list")
	public ModelAndView show(){
		
		ModelAndView mv=new ModelAndView();
		List<SysUser> list=userservice.selAllUser();
		
		mv.addObject("list", list);
		mv.setViewName("renyuan");
		return mv;
	}
     @RequestMapping("/delete")
	public ModelAndView delUser(int id){
		ModelAndView mv=new ModelAndView();
		int count=userservice.delUser(id);
		if (count!=0) {
			mv.addObject("yes", "刪除成功");
			return show();
		}
		
		return null;
	}
	
}
