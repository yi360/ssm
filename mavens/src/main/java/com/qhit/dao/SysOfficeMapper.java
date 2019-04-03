package com.qhit.dao;

import com.qhit.pojo.SysOffice;

public interface SysOfficeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysOffice record);

    int insertSelective(SysOffice record);

    SysOffice selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysOffice record);

    int updateByPrimaryKey(SysOffice record);
}