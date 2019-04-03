package com.qhit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qhit.dao.MoaCookbookMapper;
import com.qhit.pojo.MoaCookbook;
import com.qhit.service.MoaCookService;
@Service(value="moacookService")
@Transactional
public class MoaCookServiceImpl implements MoaCookService{

	@Resource(name="moakcookDao")
	private MoaCookbookMapper moacookDao;
	@Override
	public int insertMosCook(MoaCookbook mc) {
		// TODO Auto-generated method stub
		int count=moacookDao.insertSelective(mc);
		return count;
	}
	@Override
	public List<MoaCookbook> selAllMoaCook() {
		// TODO Auto-generated method stub
		
		return moacookDao.selAllMoaCook();
	}

}
