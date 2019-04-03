package com.qhit.service;



import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.MoaWeek;

public interface MoaWeekService {
	
	public List<MoaWeek> selAllMoaWeek();
	
	public List<MoaWeek> selByDate(MoaWeek mw);

	public int delMoaWeekById(Integer id);
	
	public int insertMoaWeek(MoaWeek mw);


}
