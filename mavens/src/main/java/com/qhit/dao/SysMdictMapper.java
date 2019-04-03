package com.qhit.dao;

import com.qhit.pojo.SysMdict;

public interface SysMdictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysMdict record);

    int insertSelective(SysMdict record);

    SysMdict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysMdict record);

    int updateByPrimaryKey(SysMdict record);
}