package com.qhit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.qhit.pojo.MoaCookbook;
import com.qhit.pojo.MoaOrderset;
import com.qhit.service.MoaOrdersetService;

@Controller
@RequestMapping("/moaOrderse")
public class MoaOrderseController {
	
	@Resource(name="moaOrdersetService")
	private MoaOrdersetService moaOrdersetService;
	@RequestMapping("/selAll")
	public void selAllorder(HttpServletRequest request,HttpServletResponse response) throws IOException{
		//ModelAndView  mv=new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<MoaOrderset> list=moaOrdersetService.selAllOrder();
		String str=JSONObject.toJSONString(list);
		PrintWriter out=response.getWriter();
		out.print(str);
		out.flush();
		out.close();
	/*	mv.addObject("list", list);
		mv.setViewName("diancanshezhiadd");
		System.out.println("||||||||||||||||||");
		return mv;*/
		
	}
	
	    @RequestMapping("add")
		@ResponseBody
		public ModelAndView addcai(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException{
	    
	    	  request.setCharacterEncoding("utf-8");
		      response.setContentType("text/html;charset=UFF-8");
		      response.setCharacterEncoding("UTF-8");
	    	ModelAndView mv=new ModelAndView();
	    	MoaOrderset moaorder=new MoaOrderset();
	     //第二道菜
	     String createDate=request.getParameter("createDate");
	    /* String oneweek=request.getParameter("oneweek");*/
	     String dish=request.getParameter("dish");
	     int onemaxcount=Integer.parseInt(request.getParameter("onemaxcount"));
		
	    java.sql.Date cdates=null;
	 	cdates=java.sql.Date.valueOf(createDate);
	 	moaorder.setCreateDate(cdates);
	 	moaorder.setDish(dish);
	 	moaorder.setMaxcount(onemaxcount);
	 	
	    int a=moaOrdersetService.insetOrder(moaorder);
	    //第二道菜
	  
	    String dish1=request.getParameter("dish");
	     int onemaxcount1=Integer.parseInt(request.getParameter("onemaxcount1"));
		
	  
	 	moaorder.setDish(dish1);
	 	moaorder.setMaxcount(onemaxcount1);
	 	
	    int a1=moaOrdersetService.insetOrder(moaorder);
	    
	    //第三道菜
	    String dish2=request.getParameter("dish");
	     int onemaxcount2=Integer.parseInt(request.getParameter("onemaxcount2"));
		
	  
	 	moaorder.setDish(dish2);
	 	moaorder.setMaxcount(onemaxcount2);
	 	
	    int a2=moaOrdersetService.insetOrder(moaorder);
			
			if (a==1) {
				mv.addObject("yes", "添加成功");
		        mv.setViewName("diancanshezhiadd");
			}else{
			mv.addObject("error", "添加失败");
			}
			
			return mv;
		}
	    
	    
	//点餐管理列表
    @RequestMapping("list")
	public ModelAndView selAll(){
		ModelAndView mv=new ModelAndView();
		List<MoaOrderset> list=moaOrdersetService.selAllOrder();
		mv.addObject("list", list);
		mv.setViewName("diancanguanli");
		
		return mv;
		
		
	}
	@RequestMapping("/delete")
    public ModelAndView delete(int id){
    	ModelAndView mv=new ModelAndView();
    	int count=moaOrdersetService.delOrder(id);
    	if (count!=0) {
			mv.addObject("yes", "删除成功");
			return selAll();
		}
    	
		return null;
    	
    }

}
