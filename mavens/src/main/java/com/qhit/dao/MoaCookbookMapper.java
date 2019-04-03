package com.qhit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.MoaCookbook;
@Repository("moakcookDao")
public interface MoaCookbookMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaCookbook record);
    int inserts(MoaCookbook record);
    int insertSelective(MoaCookbook record);

    MoaCookbook selectByPrimaryKey(Integer id);
    
    List<MoaCookbook> selAllMoaCook();

    int updateByPrimaryKeySelective(MoaCookbook record);

    int updateByPrimaryKey(MoaCookbook record);
}