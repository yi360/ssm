package com.qhit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.pojo.SysDict;
import com.qhit.service.MoaWeekService;
import com.qhit.service.SysDiscService;

@Controller
@RequestMapping("/sysDiac")
public class SysDiscController {
	@Resource(name = "sysDiscService")
	private SysDiscService sysDiscService;

	@RequestMapping("/selAll")
	public ModelAndView selAllSysDisc(){
		ModelAndView mv = new ModelAndView();
		List<SysDict> list=sysDiscService.selAll();
		System.out.println(list.get(0).getLabel());
		mv.addObject("list", list);
		mv.setViewName("meizhoucaiadd");
		return mv;
	}

}
