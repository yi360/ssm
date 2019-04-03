package com.qhit.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.pojo.MoaCookbook;
import com.qhit.pojo.MoaWeek;
import com.qhit.service.MoaCookService;
import com.qhit.service.MoaWeekService;

@Controller
@RequestMapping("/moacook")
public class MoaCookController extends HttpServlet {

	@Resource(name = "moaweekService")
	private MoaWeekService moaweekService;

	@Resource(name = "moacookService")
	private MoaCookService moacookService;

	@RequestMapping("addcai")
	@ResponseBody
	public ModelAndView addcai(HttpServletRequest request) {
		MoaCookbook mc = new MoaCookbook();
		ModelAndView mv = new ModelAndView();

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 周一
		String cdate = request.getParameter("cdate");
		System.out.println(cdate);
		String cweek = request.getParameter("cweek");
		String breakfast = request.getParameter("breakfast");
		String lunch = request.getParameter("lunch");

		java.sql.Date cdates = null;
		cdates = java.sql.Date.valueOf(cdate);
		mc.setCdate(cdates);
		mc.setCweek(cweek);
		mc.setBreakfast(breakfast);
		mc.setLunch(lunch);
		int a = moacookService.insertMosCook(mc);

		// 周二
		String cdate1 = request.getParameter("cdate1");
		System.out.println(cdate1);
		String cweek1 = request.getParameter("cweek1");
		String breakfast1 = request.getParameter("breakfast1");
		String lunch1 = request.getParameter("lunch1");

		java.sql.Date cdates1 = null;
		cdates1 = java.sql.Date.valueOf(cdate1);
		mc.setCdate(cdates1);
		mc.setCweek(cweek1);
		mc.setBreakfast(breakfast1);
		mc.setLunch(lunch1);
		moacookService.insertMosCook(mc);

		// 周三
		String cdate2 = request.getParameter("cdate2");
		System.out.println(cdate2);
		String cweek2 = request.getParameter("cweek2");
		String breakfast2 = request.getParameter("breakfast2");
		String lunch2 = request.getParameter("lunch2");

		java.sql.Date cdates2 = null;
		cdates2 = java.sql.Date.valueOf(cdate2);
		mc.setCdate(cdates2);
		mc.setCweek(cweek2);
		mc.setBreakfast(breakfast2);
		mc.setLunch(lunch2);
		moacookService.insertMosCook(mc);

		// 周四
		String cdate3 = request.getParameter("cdate3");
		String cweek3 = request.getParameter("cweek3");
		String breakfast3 = request.getParameter("breakfast3");
		String lunch3 = request.getParameter("lunch3");

		java.sql.Date cdates3 = null;
		cdates3 = java.sql.Date.valueOf(cdate3);
		mc.setCdate(cdates3);
		mc.setCweek(cweek3);
		mc.setBreakfast(breakfast3);
		mc.setLunch(lunch);
		moacookService.insertMosCook(mc);

		// 周五
		String cdate4 = request.getParameter("cdate4");
		String cweek4 = request.getParameter("cweek4");
		String breakfast4 = request.getParameter("breakfast4");
		String lunch4 = request.getParameter("lunch4");

		java.sql.Date cdates4 = null;
		cdates4 = java.sql.Date.valueOf(cdate4);
		mc.setCdate(cdates4);
		mc.setCweek(cweek4);
		mc.setBreakfast(breakfast4);
		mc.setLunch(lunch4);
	    moacookService.insertMosCook(mc);
	    
	    //添加周表
	    String begindates=request.getParameter("cdate");
	    java.sql.Date begindate = null;
	    begindate = java.sql.Date.valueOf(begindates);
	    String enddates= request.getParameter("cdate4");
	    java.sql.Date enddate = null;
	    enddate = java.sql.Date.valueOf(enddates);
	    MoaWeek mw=new MoaWeek();
	    mw.setBegindate(begindate);
	    mw.setEnddate(enddate);
	    moaweekService.insertMoaWeek(mw);
	    

		if (a == 1) {
			mv.addObject("yes", "添加成功");
			mv.setViewName("meizhoucaiadd");
		} else {
			mv.addObject("error", "添加失败");
		}

		return mv;
	}

	@RequestMapping("/selAll")
	public ModelAndView selAllMoaCook() {
		ModelAndView mv = new ModelAndView();
		List<MoaCookbook> list = moacookService.selAllMoaCook();
		mv.addObject("list", list);
		mv.setViewName("meizhoucaiadd");

		return mv;
	}

}
