package com.qhit.dao;

import com.qhit.pojo.MoaVotrtrsult;

public interface MoaVotrtrsultMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaVotrtrsult record);

    int insertSelective(MoaVotrtrsult record);

    MoaVotrtrsult selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoaVotrtrsult record);

    int updateByPrimaryKey(MoaVotrtrsult record);
}