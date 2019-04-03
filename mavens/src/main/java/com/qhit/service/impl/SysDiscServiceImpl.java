package com.qhit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qhit.dao.SysDictMapper;
import com.qhit.pojo.SysDict;
import com.qhit.service.SysDiscService;
@Service(value="sysDiscService")
@Transactional
public class SysDiscServiceImpl implements SysDiscService{

	@Resource(name="sysDiscDao")
	private SysDictMapper sysDiscDao;
	@Override
	public List<SysDict> selAll() {
		// TODO Auto-generated method stub
		List<SysDict> list=sysDiscDao.selAllSysdict();
		return list;
	}

}
