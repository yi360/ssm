package com.qhit.service;

import java.util.List;

import com.qhit.pojo.OrderCook;

public interface OrderCookService {
	public List<OrderCook> selAllOrderCook();
	public int deleteOrderCook(int id);
	
	public List<OrderCook> selOrderCookDate(OrderCook orderCook);

}
