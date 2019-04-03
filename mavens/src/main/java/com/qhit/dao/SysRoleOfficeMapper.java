package com.qhit.dao;

import com.qhit.pojo.SysRoleOfficeKey;

public interface SysRoleOfficeMapper {
    int deleteByPrimaryKey(SysRoleOfficeKey key);

    int insert(SysRoleOfficeKey record);

    int insertSelective(SysRoleOfficeKey record);
}