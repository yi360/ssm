package com.qhit.service;

import java.util.List;

import com.qhit.pojo.MoaCookbook;

public interface MoaCookService {
	
	public int insertMosCook(MoaCookbook mc);
	
	public List<MoaCookbook> selAllMoaCook();
	

}
