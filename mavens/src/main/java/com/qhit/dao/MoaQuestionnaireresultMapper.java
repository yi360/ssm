package com.qhit.dao;

import com.qhit.pojo.MoaQuestionnaireresult;

public interface MoaQuestionnaireresultMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoaQuestionnaireresult record);

    int insertSelective(MoaQuestionnaireresult record);

    MoaQuestionnaireresult selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoaQuestionnaireresult record);

    int updateByPrimaryKey(MoaQuestionnaireresult record);
}