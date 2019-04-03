package com.qhit.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.qhit.pojo.OrderCook;
import com.qhit.service.OrderCookService;

@Controller
@RequestMapping("/orderCook")
public class OrderCookController {
	
	@Resource(name="orderCookService")
	private OrderCookService orderCookService;
	
	@RequestMapping("selAll")
	public ModelAndView selAllOrderCook(){
		ModelAndView mv=new ModelAndView();
		List<OrderCook> list=orderCookService.selAllOrderCook();
		mv.addObject("list", list);
		mv.setViewName("diancanguanli");
		
		return mv;
		
		
	}
	@RequestMapping("delete")
	public ModelAndView  deleteOrderCook(int id){
		ModelAndView mv=new ModelAndView();
		int a=orderCookService.deleteOrderCook(id);
		if (a!=0) {
			mv.addObject("yes", "删除成功");
			return selAllOrderCook();
		}
		
		return null;
	}
    @RequestMapping("/seldatedish")
    @ResponseBody
	public ModelAndView  selorderCdate(String cdate,String dish) throws ParseException{
		 ModelAndView mv=new ModelAndView();
         OrderCook orderCook=new OrderCook();
         
           if (cdate!="") {
        	  /* java.sql.Date cdates=null;
   			   cdates=java.sql.Date.valueOf(cdate);*/
   			SimpleDateFormat f=new SimpleDateFormat("yyyy-MM-dd");
			Date cdates=f.parse(cdate);
   			   System.out.println(cdate);
               orderCook.setCdate(cdates);
		}
           if (dish!=null) {
        	   orderCook.setDish(dish);
        	   System.out.println(dish);
		}
         
           List<OrderCook> list=orderCookService.selOrderCookDate(orderCook);
          mv.addObject("list", list);
          mv.setViewName("diancanguanli");
		return mv;
		
		
	}
}
