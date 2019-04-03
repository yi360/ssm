package com.qhit.service.impl;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qhit.dao.MoaWeekMapper;
import com.qhit.pojo.MoaWeek;
import com.qhit.service.MoaWeekService;

@Service(value="moaweekService")
@Transactional
public class MoaWeekServiceImpl implements MoaWeekService{

	@Resource(name="moaweekDao")
	private MoaWeekMapper moaweekDao;
	@Override
	public List<MoaWeek> selAllMoaWeek() {
		// TODO Auto-generated method stub
	List<MoaWeek> list= moaweekDao.selectAll();
	
		return list;
	}
	@Override
	public List<MoaWeek> selByDate(MoaWeek mw) {
		List<MoaWeek> list=moaweekDao.selectByDate(mw);
		System.out.println(mw.getBegindate());
		return list;
	}
	@Override
	public int delMoaWeekById(Integer id) {
		// TODO Auto-generated method stub
		int a=moaweekDao.deleteByPrimaryKey(id);
		return a;
	}
	@Override
	public int insertMoaWeek(MoaWeek mw) {
		// TODO Auto-generated method stub
		int count=moaweekDao.insertSelective(mw);
		return count;
	}
	

}
