package com.qhit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qhit.dao.OrderCookMapper;
import com.qhit.pojo.OrderCook;
import com.qhit.service.OrderCookService;
@Service(value="orderCookService")
@Transactional
public class OrderCookSeviceImpl implements OrderCookService{

	 @Resource(name="orderCookDao")
	 private OrderCookMapper orderCookDao;
	@Override
	public List<OrderCook> selAllOrderCook() {
		// TODO Auto-generated method stub
		List<OrderCook> list=orderCookDao.selAllOrderCook();
		return list;
	}
	@Override
	public int deleteOrderCook(int id) {
		// TODO Auto-generated method stub
		int count=orderCookDao.deleteOrderCook(id);
		return count;
	}
	@Override
	public List<OrderCook> selOrderCookDate(OrderCook orderCook) {
		// TODO Auto-generated method stub
		List<OrderCook> list=orderCookDao.selOrderCookDate(orderCook);
		return list;
	}
	
	


}
