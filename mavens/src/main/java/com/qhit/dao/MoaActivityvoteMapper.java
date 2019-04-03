package com.qhit.dao;

import com.qhit.pojo.MoaActivityvote;

public interface MoaActivityvoteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaActivityvote record);

    int insertSelective(MoaActivityvote record);

    MoaActivityvote selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoaActivityvote record);

    int updateByPrimaryKey(MoaActivityvote record);
}