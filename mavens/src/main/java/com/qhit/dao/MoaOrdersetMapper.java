package com.qhit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qhit.pojo.MoaOrderset;
@Repository("moaordersetDao")
public interface MoaOrdersetMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaOrderset record);

    int insertSelective(MoaOrderset MoaOrder);

    MoaOrderset selectByPrimaryKey(Integer id);
    
    List<MoaOrderset> selAllOrderset();
    
    int updateByPrimaryKeySelective(MoaOrderset record);

    int updateByPrimaryKey(MoaOrderset record);
}