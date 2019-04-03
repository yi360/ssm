package com.qhit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.OrderCook;

@Repository("orderCookDao")
public interface OrderCookMapper {
	
	public List<OrderCook> selAllOrderCook();
	public int deleteOrderCook(int id);
    public List<OrderCook> selOrderCookDate(OrderCook orderCook);
}
