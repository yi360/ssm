package com.qhit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qhit.dao.MoaOptionvoteMapper;
import com.qhit.dao.MoaOrdersetMapper;
import com.qhit.pojo.MoaOrderset;
import com.qhit.service.MoaOrdersetService;
import com.qhit.service.MoaWeekService;
@Service(value="moaOrdersetService")
@Transactional
public class MoaOrdersetServiceImpl implements MoaOrdersetService{

	@Resource(name="moaordersetDao")
	private MoaOrdersetMapper moaordersetDao;
	@Override
	public List<MoaOrderset> selAllOrder() {
		List<MoaOrderset> list=moaordersetDao.selAllOrderset();
		
		return list;
	}
	@Override
	public int insetOrder(MoaOrderset MoaOrder) {
	int count=moaordersetDao.insertSelective(MoaOrder);
		return count;
	}
   
	
	
	@Override
	public int delOrder(int id) {
		int count=moaordersetDao.deleteByPrimaryKey(id);
		return count;
	}
}
