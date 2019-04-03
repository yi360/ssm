package com.qhit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.SysDict;
@Repository("sysDiscDao")
public interface SysDictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysDict record);

    int insertSelective(SysDict record);

    SysDict selectByPrimaryKey(Integer id);
    
    List<SysDict> selAllSysdict();

    int updateByPrimaryKeySelective(SysDict record);

    int updateByPrimaryKey(SysDict record);
}