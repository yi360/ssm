package com.qhit.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.MoaOrderset;




public interface MoaOrdersetService {
	public List<MoaOrderset> selAllOrder();
	public int insetOrder(MoaOrderset MoaOrder);
    public int delOrder(int id);
}
