package com.qhit.dao;



import java.util.List;




import org.springframework.stereotype.Repository;

import com.qhit.pojo.MoaWeek;
@Repository("moaweekDao")
public interface MoaWeekMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaWeek record);

    int insertSelective(MoaWeek record);

    MoaWeek selectByPrimaryKey(Integer id);
    
    List<MoaWeek> selectByDate(MoaWeek mw);
    
    List<MoaWeek> selectAll();

    int updateByPrimaryKeySelective(MoaWeek record);

    int updateByPrimaryKey(MoaWeek record);
}