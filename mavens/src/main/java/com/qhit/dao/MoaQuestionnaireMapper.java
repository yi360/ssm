package com.qhit.dao;

import com.qhit.pojo.MoaQuestionnaire;

public interface MoaQuestionnaireMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaQuestionnaire record);

    int insertSelective(MoaQuestionnaire record);

    MoaQuestionnaire selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoaQuestionnaire record);

    int updateByPrimaryKey(MoaQuestionnaire record);
}