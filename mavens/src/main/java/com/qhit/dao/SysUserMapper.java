package com.qhit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.SysUser;

@Repository("userDao")
public interface SysUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysUser record);

    int insertSelective(SysUser record);

    SysUser selectByPrimaryKey(Integer id);
    
    SysUser selectByUseName(String loginName);
    List<SysUser> selAllUser();
    int updateByPrimaryKeySelective(SysUser record);

    int updateByPrimaryKey(SysUser record);
}