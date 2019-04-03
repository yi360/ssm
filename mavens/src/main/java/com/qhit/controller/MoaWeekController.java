package com.qhit.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.pojo.MoaWeek;
import com.qhit.service.MoaWeekService;

@Controller
@RequestMapping("/moaweek")
public class MoaWeekController {
	
	@Resource(name="moaweekService")
	private MoaWeekService moaweekService;
	
	@RequestMapping("/list")
	public ModelAndView list(){
		ModelAndView mv=new ModelAndView();
		List<MoaWeek> list=moaweekService.selAllMoaWeek();
	
		mv.addObject("list", list);
		
		mv.setViewName("meizhoucai");
		return mv;
		
	}
	@RequestMapping("/selDate")
	@ResponseBody
	public ModelAndView selDate(HttpServletRequest request) throws ParseException{
		MoaWeek mw=new MoaWeek();
		int wnumber = 0;
		if(!request.getParameter("wnumber").equals("")){
		 wnumber=Integer.parseInt(request.getParameter("wnumber"));
		
		}
	
		String begindate=request.getParameter("begindate");
		
		/*SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
		Date begindates=f.parse(begindate);*/
		
		if (wnumber!=0) {
			mw.setWnumber(wnumber);
		}
		if (!begindate.equals("")) {
			/*java.sql.Date begindates=null;
			begindates=java.sql.Date.valueOf(begindate);*/
			SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
			Date begindates=f.parse(begindate);
   		   mw.setBegindate(begindates);
   		   System.out.println(mw.getBegindate());
		}
		List<MoaWeek> list=moaweekService.selByDate(mw);
		ModelAndView mv=new ModelAndView();
		
	
			mv.addObject("list", list);
			mv.setViewName("meizhoucai");
		
		return mv;
		
		/*MoaWeek mw=new MoaWeek();
		
		if (wnumber!=0) {
			mw.setWnumber(wnumber);
		}
		if (begindates!="") {
			java.sql.Date begindate=null;
			
			begindate=java.sql.Date.valueOf(begindates);
			
			mw.setBegindate(begindate);
		}
		
		MoaWeek mws=moaweekService.selByDate(mw);
		
		if (mws!=null) {
			
			return mws;
			
		}else{
			return null;
		}
	*/
		
	}
	@RequestMapping("/delete")
	public ModelAndView delete(Integer id){
		ModelAndView mv=new ModelAndView();
		int a=moaweekService.delMoaWeekById(id);
		if (a!=0) {
			mv.addObject("yes", "删除成功");
			
		}
		return list();
		
	}
	

}
